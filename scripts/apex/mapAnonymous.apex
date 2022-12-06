map<string, string> mapCntCurrency = new map<string, string>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('Germany', 'Euro');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rs');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkiye', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
system.debug('map of country and currency ' + mapCntCurrency);

String IndiaCurrency = mapCntCurrency.get('India');
system.debug('India currency is  ...'  + IndiaCurrency);
string country = 'Turkiye';
string countryCurrency = mapCntCurrency.get(country);
system.debug(country + 'currency is...'  + countryCurrency);

Set<String>countrySet = mapCntCurrency.keySet();
system.debug('set of country is   ' + countrySet);

List<String> currencyList = mapCntCurrency.values();
system.debug('currency list is ....  ' + currencyList);

Set<String>countriesSet = mapCntCurrency.keySet();

for(String eachCountry : countriesSet){
system.debug('each country is  ' + eachCountry);
string eachCurrency = mapCntCurrency.get(eachCountry);
system.debug('each currency is  ' + eachCurrency);
 system.debug('---> country is  '+ eachCountry + 'its currency is  ' + eachCurrency);   
}
