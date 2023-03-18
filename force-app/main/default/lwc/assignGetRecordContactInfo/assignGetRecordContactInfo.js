import { getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import DEPARTMENT_FIELD from '@salesforce/schema/Contact.Department';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import MOBILE_FIELD from '@salesforce/schema/Contact.MobilePhone';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
const CFIELDS = [DEPARTMENT_FIELD, FIRSTNAME_FIELD, LASTNAME_FIELD, EMAIL_FIELD, MOBILE_FIELD, TITLE_FIELD];

export default class AssignGetRecordContactInfo extends LightningElement {
    recordId="003Do000002PqHgIAK";
    firstName;
    lastName;
    email;
    department;
    mobile;
    title;

    @wire(getRecord, {recordId: '$recordId', fields: CFIELDS})
   getInfo({data, error}) {
        if(data) {
            console.log(data);
            this.firstName = data.fields.FirstName.value;
            this.lastName = data.fields.LastName.value;
            this.email = data.fields.Email.value;
            this.department = data.fields.Department.value;
            this.mobile = data.fields.MobilePhone.value;
            this.title= data.fields.Title.value;
        }
        if(error) {
            console.error(error);
        }
    }
}
