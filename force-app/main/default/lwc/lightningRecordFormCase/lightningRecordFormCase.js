import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CASE_OBJECT from'@salesforce/schema/Case';
import ACCOUNT_FIELD from'@salesforce/schema/Case.AccountId';
import CONTACT_FIELD from'@salesforce/schema/Case.ContactId';
import SUBJECT_FIELD from'@salesforce/schema/Case.Subject';
import DESCRIPTION_FIELD from'@salesforce/schema/Case.Description';
import PRIORITY_FIELD from'@salesforce/schema/Case.Priority';
import ORIGIN_FIELD from'@salesforce/schema/Case.Origin';

export default class LightningRecordFormAccount extends LightningElement {
    recordId="500Do000001cPNyIAM";
    objectName =CASE_OBJECT;
    fields = [ACCOUNT_FIELD, CONTACT_FIELD, SUBJECT_FIELD, DESCRIPTION_FIELD, PRIORITY_FIELD, ORIGIN_FIELD

    ];
    successHandler() {
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "Case has saved successfully!",
            variant: "success"
        });
        this.dispatchEvent(successToast);
    }
}