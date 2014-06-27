package com.deerwalk.twitter

class User {
    int id
    String username
    String password

    Profile profile
    
    static hasOne = [profile:Profile]
    static hasMany = [posts : Post,follower:User]

    static constraints = {
        username(blank: false)
        password(password:true)
        profile(nullable: true)
    }
}
