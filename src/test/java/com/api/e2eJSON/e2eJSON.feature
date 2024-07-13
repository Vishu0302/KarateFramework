Feature: To Create End to End Scenario in JSON format using all 5 http methods

  Background: To set base path
    Given url 'http://localhost:9191'

  Scenario: To Create End to End Scenario in JOSN format using all 5 http methods
    #Get
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    #Post
    Given path '/normal/webapi/add'
    And headers {Content-Type : 'application/json', Accept : 'application/json'}
    And request read('../testdata/POSTdata.json')
    When method post
    Then status 201
    And print response
    #Get
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    #Put
    Given path '/normal/webapi/update'
    And headers {Content-Type : 'application/json', Accept : 'application/json'}
    And request read('../testdata/PUTdata.json')
    When method put
    Then status 200
    And print response
    #Get
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    #Patch
    Given path '/normal/webapi/update/details'
    And headers {Content-Type : 'application/json', Accept : 'application/json'}
    And params {id:'10', jobTitle: 'Mechanical Engg', jobDescription: 'To develop software'}
    When method patch
    Then status 200
    And print response
    #Get
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    #Delete 1st
    Given path '/normal/webapi/remove/10'
    And headers {Content-Type : 'application/json', Accept : 'application/json'}
    When method delete
    Then status 200
    And print response
    #Get
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    #Delete 2nd
    Given path '/normal/webapi/remove/10'
    And headers {Content-Type : 'application/json', Accept : 'application/json'}
    When method delete
    Then status 404
    And print response
    #Get
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
