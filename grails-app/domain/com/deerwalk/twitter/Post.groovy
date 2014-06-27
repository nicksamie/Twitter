package com.deerwalk.twitter

class Post {
    String postContent
    Date dateCreated
    Date lastUpdated

    static belongsTo = [user:User]
    static constraints = {
        postContent(blank: false)
        dateCreated nullable: true
        lastUpdated nullable: true
    }

}
