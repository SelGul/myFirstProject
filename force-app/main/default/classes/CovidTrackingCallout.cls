public with sharing class CovidTrackingCallout {
   public static HttpResponse getCovidInfo(){
   // prepera httprequest
   HttpRequest request = new HttpRequest();
   request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
   request.setMethod('GET');
   //PREPARE INTERNET
   Http http = new Http();
   // send the htt request
   HttpResponse response=http.send(request);
   //process
   if(response.getStatusCode()==200){
   string jsonString=response.getBody();
   
 List<CovidWrapper> wrapper= (List<CovidWrapper>)json.deserialize(jsonString,List<CovidWrapper>.class);
 
 List<Covid_Info__c> cvd = [Select Name,Received__c,Positive__c,Pending__c from Covid_Info__c where Received__c=TODAY limit 1];
if(!cvd.isEmpty()){
    cvd[0].Name=string.valueOf(wrapper[0].states);
    cvd[0].Positive__c=wrapper[0].possitive;
    cvd[0].Negative__c=wrapper[0].negative;
    cvd[0].Pending__c=wrapper[0].pending;
    update cvd;
}else{
        Covid_Info__c newcovidInfo = new Covid_Info__c
        ();
        newcovidInfo.Name=string.valueOf(wrapper[0].states);
        newcovidInfo.Positive__c=wrapper[0].possitive;
        newcovidInfo.Negative__c=wrapper[0].negative;
        newcovidInfo.Pending__c=wrapper[0].pending;
        newcovidInfo.Received__c=date.today();
        insert newcovidInfo;
    }
}
   
return response;
   }
 public class CovidWrapper{
    public integer states;
    public integer possitive;
    public integer negative;
    public integer pending;


   }
}