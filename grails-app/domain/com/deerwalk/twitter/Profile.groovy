package com.deerwalk.twitter

class Profile {
    String firstname
    String lastname

    Byte[] picture
    String type

    static belongsTo = [user:User]
    static constraints = {
        picture nullable:true,  maxSize:1073741824
        type nullable: true
    }
}
