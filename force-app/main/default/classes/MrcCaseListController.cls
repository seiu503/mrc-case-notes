public with sharing class MrcCaseListController {     

    public List<Grievance_Note__c> notes{get;set;} 

    public Grievance__c mrcCases {get;set;} 

    public Grievance__c mrcCase {get;set;} 

     

    //Constructor 

    public MrcCaseListController(ApexPages.StandardController controller) { 

        mrcCase = (Grievance__c)controller.getRecord();      

        mrcCases = [SELECT id FROM mrcCase WHERE id=: mrcCase.id LIMIT 1]; 

        notes = [SELECT id,Note__c,Note_Created_Date_Time__c,Contact_Date__c,Grievance__c,Contact_Type__c,CreatedById,LastModifiedById 
                    FROM Grievance_Note__c 
                    WHERE Grievance__c = :mrcCases.id 
                    ORDER BY Note_Created_Date_Time__c];     

} 

    //This method is to create a new note while clicking on the Add note button 

    public pageReference newNote(){  

        pageReference pageRef = new pageReference(URL.getSalesforceBaseUrl().toExternalForm() + '/003/e?&retURL=' + mrcCases.id);  

        return pageRef; 

    } 

    //This method is to edit the existing note while clicking the Edit link 

    public pageReference editNote(){  

        String noteId = Apexpages.currentpage().getParameters().get('noteId');  

        pageReference pageRef = new pageReference(URL.getSalesforceBaseUrl().toExternalForm() + '/' + noteId + '/e?retURL=' + mrcCases.id);  

        return pageRef;  

    }    


 //This method is to delete the note record while clicking the Del link 

    public pageReference deleteNote(){  

        String noteId = Apexpages.currentpage().getParameters().get('noteId');  

        note noteList = [SELECT Id FROM note WHERE id = : noteId LIMIT 1]; 

        delete noteList; 

        String baseUrl = URL.getSalesforceBaseUrl().toExternalForm(); 

        PageReference redirectPage = new PageReference(baseUrl+'/'+mrcCases.id); 

        return redirectPage;  

    }   

}