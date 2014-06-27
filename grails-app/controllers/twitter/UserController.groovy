package twitter

import com.deerwalk.twitter.User

class UserController {
    def userService
    def simpleCaptchaService

    def index() {
        render view: "login"
    }

    def register(){
        //Capture the User inputs
        def user = new User();
        render (view: "register",model: [user:user])
    }

    def saveUser() {
        def user = new User(params)
        boolean captchaValid = simpleCaptchaService.validateCaptcha(params.captcha)
        if (captchaValid) {

            if (!user.hasErrors()) {
                user.save()
                flash.message = "Registration Sucessfull..!!!"
            }else //render(view: "login")
                flash.message = "Registration Failed..!!!"
            }
            else
            {
                flash.message1 = "Captcha Validation Failed..!!!"
            }
        render(view: "register")
    }

    def login(){
        // receive the user credentials
        // check against the database
        // if exists, redirect to homepage

        User user = userService.verifyUser(params.username,params.password)
        if(user){
            session.userId = user.id
            render(view: "/post/home",model: [userObject:user,userList:userService.getUserList()])
        }
        else{   // else stay in the same login page
            flash.message="Login Failed..!!!"
            render(view: "login")
        }
    }
    def home(){
        def user = User.get(session.userId)

        def count = user.follower.count{User}
        render (view: "/post/home", model: [userObject: user,userList: userService.getUserList(),countUser:count])
    }

    def testDelete(){
        render "this is test"
    }

}
