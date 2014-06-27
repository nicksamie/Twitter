package twitter

import com.deerwalk.twitter.Profile
import com.deerwalk.twitter.User

class ProfileController {
    def userService
    def index() {}

    def editProfile() {
        render (view: "profile", model: [userObject:User.get(session.userId),userList:userService.getUserList()])
    }

    def saveProfile(){

        def user = User.get(session.userId)
        def imgType= request.getFile('picture')

        println 'user: ' + user

        def profile = new Profile()

        if(user?.profile)
        {
            profile=user.profile
        }
        user.profile = profile

        user.profile.properties['firstname','lastname'] = params
        user.profile.picture = imgType.bytes
        user.profile.type = imgType.contentType

        if(!user.save()){
            render(view: '/profile/profile.gsp',model: [user: user,userList:userService.getUserList()])
            return
        }
        flash.message="Picture Uploaded."
        redirect(action:'viewProfile')

    }

    def viewProfile(){
        // find the details of this user
        def user = User.findById(session.userId)
        // pass this information to the gsp
        render (view: "/profile/viewProfile.gsp",model: [user: user,userList:userService.getUserList()])
    }

    def display_picture() {
        //println "the id in display picture"+params.id
        //int userId = params.id

        //def user = User.get(1)
        def user = User.get(params.id)
        if (!user || !user.profile.picture || !user.profile.type) {
            response.sendError(404)
            return
        }
        response.contentType = user.profile.type
        response.contentLength = user.profile.picture.size()
        OutputStream out = response.outputStream
        out.write(user.profile.picture)
        out.close()
    }

    def viewOthersProfile()
    {
        def userId = params.id  //reading the id of the user clicked
        def userInfo = userService.retrieveUserInfo(userId)

        render (view: "/profile/viewProfile.gsp",model: [user: userInfo,userList:userService.getUserList()])
    }

    def followUser(){
        def user = User.get(session.userId)
        def userId = params.id

        def userInfo = userService.retrieveUserInfo(userId)

        user.addToFollower(User.get(userId))
        render (view: "/profile/viewProfile", model:[user: userInfo,userList: userService.getUserList()])
    }

}
