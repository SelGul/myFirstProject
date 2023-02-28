public with sharing class getEmployeesV2 {
        //Endpoint: https://api.onlinewebtutorblog.com/employees
    //Http Method: GET
    public static HttpResponse getEmployees() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        if(response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            //Convert the jsonString into Employee Response class
            EmployeeResponse empRes = (EmployeeResponse)JSON.deserialize(jsonString, EmployeeResponse.class);
            List<EmployeeResponse.EmployeeWrapper> wrappers = empRes.data;
                //Covert each EmployeeWrapper into Employee__c sObject record
                List<Employee__c> employees = new List<Employee__c>();
                for(EmployeeResponse.EmployeeWrapper wrap : wrappers) {
                    Employee__c emp = new Employee__c();
                    emp.Name = String.valueOf(wrap.id);
                    emp.Username__c = wrap.username;
                    emp.Employee_Name__c = wrap.name;
                    emp.Email__c = wrap.email;
                    emp.Gender__c = wrap.gender;
                    emp.Designation__c = wrap.designation;
                    emp.Phone_Number__c = wrap.phone_number;
                    emp.Complete_Adress__c = wrap.complete_address;
                    employees.add(emp);
                }
                try {
                    insert employees;
                } catch(Exception ex) {
                    System.debug(ex.getMessage());
                }
        }
        return response;
    }
}