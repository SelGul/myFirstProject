try{
    string s;
    s.toLowerCase(); //it works 10,13 now this not dml error
    Account ac = new Account();
insert ac;
}
catch(DmlException dex){
    system.debug('dml went wrong');}
catch(Exception ex){
    system.debug('something went wrong buddy');
 system.debug('expection message'+ ex.getMessage());
 system.debug('ex line number'+ ex.getMessage());
}// if change expection place 'catch' it doesn t work got error

system.debug('Apex is SIMPLE.');