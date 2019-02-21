public class mrcCaseNotesController {
    public String currentRecordId {get;set;}
    public List <Grievance_Note__c> NotesList {get;set;}
    
	public mrcCaseNotesController(ApexPages.StandardSetController controller)  {
        NotesList=new List<Grievance_Note__c>{};
        GetNotes();
    }
    
    public List<Grievance_note__c> GetNotes() {
        system.debug('GetNotes');
        string mrcCaseId  = ApexPages.CurrentPage().getparameters().get('id');
		List<Grievance_Note__c> caseNotes=new List<Grievance_Note__c>{};
        if(mrcCaseId==NULL) {
            system.debug('No MRC Case ID available');
        } else {
            caseNotes = [SELECT id,Note__c,Note_Created_Date_Time__c,Contact_Date__c,Grievance__c,Contact_Type__c,CreatedById,LastModifiedById FROM Grievance_Note__c 
                     WHERE id = : mrcCaseId];
        }
        return caseNotes;
    }
 }