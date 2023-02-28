trigger CaseTrigger on Case (before update) {
    // before insert 
    //system.debug('before insert case trigger');
    if(trigger.isUpdate){
        //count number of times trigger runs.
        system.debug('before update trigger ran');
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('# of times trigger ran -> ' + CaseTriggerHandler.countTriggerExecution);

        CaseTriggerHandler.countRecordsUpdated += trigger.size; 
        system.debug('# of total records updated => ' + CaseTriggerHandler.countRecordsUpdated);
    }
}