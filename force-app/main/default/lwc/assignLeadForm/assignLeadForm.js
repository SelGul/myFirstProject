import { createRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import LEAD_OBJECT from '@salesforce/schema/Lead';

export default class AssignLeadForm extends LightningElement {
    formData={};

    changeHandler(event){
        const {name, value} =event.target;
        this.formData[name]=value;
        // console.log('name: ', name);
        // console.log('value: ', value);
        console.log(JSON.stringify(this.formData));
       // console.log(LEAD_OBJECT);
    }


    

    cancelLead(){
        this.template.querySelector('form.LeadForm').reset();
        this.formdata = {};   
    }
    saveLead(){
        const recordInput = {
            apiName: LEAD_OBJECT.objectApiName,
            fields: this.formData
        };
        console.log(JSON.stringify(recordInput));

        createRecord(recordInput)
        .then(result => {
            const successToast = new ShowToastEvent({
                title: "Success",
                message: "Lead record has been created successfully!",
                variant: "success"
            });
            this.dispatchEvent(successToast);
        })
        .catch(error => {
            //show error toast
            console.error(error);
        })
    }
}

