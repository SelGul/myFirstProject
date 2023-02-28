//Callouts Test
RestCallouts.getAnimals();
RestCallouts.getAirlines();
RestCallouts.getEmployees();
RestCallouts.getCasesUsingNC();
RestCallouts.postAnimal();

SoapCallouts.parksCallout('United States');
SoapCallouts.doAddCallout(7, 8);
SoapCallouts.doMultiplyCallout(7, 8);


// JSON : JavaScript Object Notation

//student single record
{
    "Name" : "SelGul",
    "Age" :41,
    "Title" : "Architect",
     "Salary" : 0

}

//2 students detail in JSON format
{
{ "Name" : "Endi",
    "Age" :41,
    "Title" : "Architect",
     "Salary" : 6000

}
{
     "Name" : "Sam",
    "Age" :41,
    "Title" : "Architect",
     "Salary" : 10000


}

}

//Get an account record and covert the same into JSON format
Account acc = [SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE AnnualRevenue != null AND Type != null AND Industry != null LIMIT 1];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);

//Get 4 accounts and covert the same into JSON format
List<Account> accounts = [SELECT Name, Type, Industry, AnnualRevenue
                        FROM Account
                        WHERE AnnualRevenue != null
                        AND Type != null
                        AND Industry != null
                        LIMIT 4];
String jsonString = JSON.serialize(accounts);
System.debug(jsonString);