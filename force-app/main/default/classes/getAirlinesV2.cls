public with sharing class getAirlinesV2 {
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
            //Convert the response body into List of Airline__c
            List<AirlineWrapper> wrappers = (List<AirlineWrapper>)JSON.deserialize(jsonString, List<AirlineWrapper>.class);
                //convert the wrappers into List<Airline__c>
                List<Airline__c> airlines = new List<Airline__c>();
                for(AirlineWrapper aw : wrappers) {
                    if(aw.id != null && aw.id.length() < 3) {
                        Airline__c airline = new Airline__c();
                        airline.Name = aw.id;
                        airline.Country__c = aw.country;
                        airline.Established__c = aw.established;
                        airline.Head_Quaters__c = aw.head_quaters;
                        airline.Logo_URL__c = aw.logo;
                        airline.Name__c = aw.name;
                        airline.Slogan__c = aw.slogan;
                        airline.Website__c = aw.website;
                        airlines.add(airline);
                    }                    
                }
                try {
                    insert airlines;
                } catch(Exception ex) {
                    System.debug(ex.getMessage());
                }
        }
        return response;
    }
}