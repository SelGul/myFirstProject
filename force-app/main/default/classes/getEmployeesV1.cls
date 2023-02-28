public with sharing class getEmployeesV1 {
       //Endpoint: https://api.onlinewebtutorblog.com/employees
    //Http Method: GET
    public static HttpResponse getEmployees() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        if(response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            System.debug(jsonString);
        }
        return response;
    }
}