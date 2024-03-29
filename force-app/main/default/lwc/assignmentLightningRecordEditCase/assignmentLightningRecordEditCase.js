import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CASE_OBJECT from '@salesforce/schema/Case';
import ACCOUNTNAME_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACTNAME_FIELD from '@salesforce/schema/Case.ContactId';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import STATUS_FIELD from '@salesforce/schema/Case.Status';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';

export default class AssignmentRecordEditFormCase extends LightningElement {
    objectName=CASE_OBJECT;
    recordId="500Do000001cPO8IAM"
    fields={
        accountName:ACCOUNTNAME_FIELD,
        contactName:CONTACTNAME_FIELD,
        subject:SUBJECT_FIELD,
        priority:PRIORITY_FIELD,
        status:STATUS_FIELD,
        description:DESCRIPTION_FIELD,
        origin:ORIGIN_FIELD
    }
    successHandler() {
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "Case has been saved successfully!",
            variant: "success"
        });
        this.dispatchEvent(successToast);
    }
}