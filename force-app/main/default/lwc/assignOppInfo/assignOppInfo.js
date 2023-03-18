import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import OPP_OBJECT from '@salesforce/schema/Opportunity';

export default class AssignOppInfo extends LightningElement {
    stageOptions=[];
    typeOptions=[];
    changeHandler;
    defaultRtId;
    selectedName;
    selectedStage;
    selectedType;

    @wire(getObjectInfo, {objectApiName: OPP_OBJECT})
    objectInfoHandler({data, error}) {
        if(data) {
            console.log(data);
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if(error) {
            console.log(error);
        }

    }
    @wire(getPicklistValuesByRecordType, {objectApiName: OPP_OBJECT, recordTypeId: '$defaultRtId'})
    picklistHandler({data, error}) {
        if(data) {
            console.log(data);
            this.typeOptions = data.picklistFieldValues.Type.values;
            this.stageOptions = data.picklistFieldValues.StageName.values;
        }
        if(error) {
            console.error(error);
        }
    }
    changeHandler(event){
        if(event.target.name === "Opportunity") {
            this.selectedType = event.target.value;
        }else if(event.target.name === "StageName"){
            this.selectedStage = event.target.value;
        }
        else{
            this.selectedType = event.target.value; 
        }

    }
}