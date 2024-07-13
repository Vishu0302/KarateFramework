package com.api.e2eJSON;

import com.intuit.karate.junit5.Karate;

class e2eJSON{
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("e2eJSON").relativeTo(getClass());
    }    

}