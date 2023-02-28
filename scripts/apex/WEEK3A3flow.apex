Order_Event__e evt = new Order_Event__e();
evt.Order_Number__c ='0001234';
evt.Has_Shipped__c = true;
Eventbus.publish(evt);