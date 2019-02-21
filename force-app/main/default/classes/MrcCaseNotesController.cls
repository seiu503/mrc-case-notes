public with sharing class MrcCaseNotesController {
    public List<Grievance_Note__c> notesList{get;set;} 
    public Grievance__c mrcCase {get;set;} 
    public MrcCaseNotesController(ApexPages.StandardController controller) {
		mycon = controller;
      	MrcCases = mycon.getRecords();
    }
    public List<sobject> MrcCases {get; set;} 
    
    // ApexPages.StandardSetController must be instantiated
    // for standard list controllers
    public ApexPages.StandardController  mycon {        
        get {
            if(mycon == null) {
                mycon = new MrcCaseNotesController(Database.getQueryLocator(
                    [SELECT id FROM Grievance__c WHERE id =: mrcCase.id LIMIT 1]));
            }
            return mycon;
        }
        set;
    }

    // Initialize setCon and return a list of records
    public List<Grievance_Note__c> getRecords() {
        List <Grievance__c> mrcCases = (List<Grievance__c>) setCon.getRecords();
        List <Grievance_Note__c> notes = [SELECT id,Note__c,Note_Created_Date_Time__c,Contact_Date__c,Grievance__c,Contact_Type__c,CreatedById,LastModifiedById 
                    FROM Grievance_Note__c 
                    WHERE Grievance__c = : mrcCase.id
                    ORDER BY Note_Created_Date_Time__c];  
        return notes;
    }
}