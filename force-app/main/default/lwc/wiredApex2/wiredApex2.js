
import getTopOpportunities from '@salesforce/apex/OpportunityCtr1.getTopOpportunities';
import { LightningElement, wire } from 'lwc';



export default class WiredApex1 extends LightningElement {
    stageName = "Closed Won";

    @wire(getTopOpportunities, {stage: '$stageName'})
   opps;
}