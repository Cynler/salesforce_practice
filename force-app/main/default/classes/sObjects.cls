/*
* Apex Database Objects
* 2 ways of obtaining instance:
    * Retrieving >>Account acct
    * Creating >>sObject acct
*/
public with sharing class SObjects {
    public sObjects() {
        Account acct = new Account();
        Account acct2 = new Account (Name='Quick Add');
        Account acct3 = new Acocunt (Name='Populate Other Fields', Phone='(415)555-1212', NumerOfEmployees=100);
        // alternative dot notation: .Name, .Phone, .NumberOfEmployees...etc

        Account acct4 = new Account();
        acct.Name = 'Acme';
        acct.Phone = '(412)666-6666';
        acct.NumberOfEmployees = 120;

        // Generic sObject data types that can be assigned to any Salesforce record
        sObject sobj1 = new Account (Name='Generic sObject');
        sObject sobj2 = new Book__c(Name='Nudge');
        // NOTE: variables cannot be asisgned any objects other than the assigned

        // Cast a generic sObject to an Account
        Account acct = (Account)myGenericSObject;
        // Now, you can use the dot notation to access fields on Account
        String name = acct.Name;
        String phone = acct.Phone;
    }
}