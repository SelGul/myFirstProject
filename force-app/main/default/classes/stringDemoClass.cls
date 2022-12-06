public class stringDemoClass {
    public void stringMethod1() {
string sessionDescription = 'learning string metods in apex ';
system.debug(sessionDescription);

Integer lengthOfStr = sessionDescription.length();
 system.debug('length of string is=' + lengthOfStr ); 

 string sessionDescriptionInCaps = sessionDescription.toUpperCase();
 system.debug('in caps = ' + sessionDescriptionInCaps);

 Boolean containApex = sessionDescription.contains('apex');
 system.debug('has apex? ' + containApex);
 
 Boolean containSF = sessionDescription.contains('salesforce');
 system.debug('contain salesforce? ' + containSF);

 Boolean containApex2 = sessionDescription.contains('Apex');
 system.debug('has Apex? ' + containApex2);

 Boolean containApex3 = sessionDescription.containsIgnoreCase('Apex');
 system.debug('contains ignore case Apex?? ' + containApex3);

}
}
