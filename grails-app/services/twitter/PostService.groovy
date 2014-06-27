package twitter

import com.deerwalk.twitter.Post
import com.deerwalk.twitter.User

class PostService {

        Post createPost(def userId, def content) {
            def user = User.get(userId)
            println(user)
            def post
            if (user) {
                post = new Post(postContent:content)
                user.addToPosts(post)
                if (!user.save()) {
                    println "error in adding post"+ user.errors
                    throw new Exception(
                            message: "Invalid or empty post", post: post)
                }else {
                    return post
                }

            }
        }
}
