@isTest
public with sharing class SoapCalloutsTest {
    @isTest

    private static void parksCalloutTest(){
        //1.set the mock
        ParkServicesMock mock = new ParkServicesMock();
        Test.setMock(WebServiceMock.class, mock);
        //2.test the mock
String country = 'Turkiye';
String[] parks = SoapCallouts.parksCallout(country);
        //3.Do asserts
        System.assertEquals(2, parks.size());
    }
    @isTest

    private static void DoAddCalloutTest(){
        //1.set the mock
        DoAddCalloutMock mock = new DoAddCalloutMock();
        Test.setMock(WebServiceMock.class, mock);
        //2.test the mock

Double result= SoapCallouts.doAddCallout(10, 5);
        //3.Do assertsrksCallout
        System.assertEquals(15, result);
    }
          
}