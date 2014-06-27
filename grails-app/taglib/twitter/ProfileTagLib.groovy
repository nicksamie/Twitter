package twitter

import com.deerwalk.twitter.User

class ProfileTagLib {

    def profile = {
        def user = User.get(session.userId)

       g.render([template: '/profile/userProfile',collection: [userInstance:user]])
    }
}
