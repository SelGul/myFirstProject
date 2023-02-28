public with sharing class getAirlinesV1 {
      //Endpoint: https://api.instantwebtools.net/v1/airlines
    //Http Method: GET
    public static HttpResponse getAirlines() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
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