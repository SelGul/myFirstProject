public with sharing class PostAssignment {
    public static HttpResponse postCallout(){
//1. preapere HttpRequest and wrap all the necessary data in it
HttpRequest Request = new HttpRequest();
Request.setEndpoint('https://gorest.co.in/public/v2/posts');
Request.setMethod('POST');
Post__c npost=[select body__c,Title__c,User_ID__c from Post__c limit 1];

wrapper w = new wrapper();
w.user_id=integer.valueOf(npost.User_ID__c);
w.body=npost.Body__c;
w.title=npost.Title__c;

string body=JSON.serialize(w);
Request.setBody(body);
Request.setHeader('Content-Type', 'application/json;charset=UTF-8');
Request.setHeader('Authorization','Bearer a8ec004f052f729c0351756d2487d402a7eea7c9da1e396abd8a468d06cf79a2');

    //2.prepare internet(instance of)
    Http http = new Http();
    //3. send the HttpRequest over the internet in order to receive HttpResponse back
    HttpResponse response=http.send(request);
    //4.process HttpResponse
    if (response.getStatusCode()==201) {
        system.debug(response.getBody());
    }else {
       system.debug(response.getStatusCode());
    }
    return response;
    }
    
public class Wrapper{
        public integer user_id;
        public string title;
        public string body;
    }
}

//request.setHeader('Authorization','Bearer cba7cb59913b3ac8368ee7411ac227fe01d0b1323210c66a3ef0bcea64fa1edd');









