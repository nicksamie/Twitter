package twitter

import com.deerwalk.twitter.Post
import com.deerwalk.twitter.User

class PostController {
    def postService
    def index() {

    }
    def savePost(){
        def post = new Post(params);
        post.save()
        if(!post.hasErrors())
            flash.message="Registration Sucessfull..!!!"
        else
            flash.message="Registration Failed..!!!"
        render (view: "post")

    }

    def addPostAjax = {
        render "Post Successfully registered..!!!"
        try {
            def newPost = postService.createPost(session.userId, params.content)
        }catch(Exception pe)
        {
            println pe.message
        }
        def user = User.get(session.userId)
        render(template: "/post/allPost",model: [user:user])
    }
}