public class ContactTriggerHandler {
    public static void updateContactValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
                                    Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
            contact oldContact = conTriggerOldMap.get(eachContact.id);
            if (eachContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update Partner Referral contact');
            }
        }
    }

    public static void updateContactValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld,
    Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
for (Contact eachContact : conTriggerNew) {
if (eachContact.LeadSource != conTriggerOldMap.get(eachContact.Id).LeadSource) {
eachContact.LeadSource.addError('Cannot Update LEAD SOURCE. Please user, behave!');
}
}
}
}