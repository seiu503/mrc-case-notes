public with sharing class MrcCaseListController {

    private final Grievance__c mrcCase;

    public MrcCaseListController(ApexPages.StandardController stdController) {
        this.mrcCase = (Grievance__c)stdController.getRecord();
    }

    public List<Grievance_Note__c> getNotes() {
        return [
            SELECT  Id,
                CreatedBy.Name,
                    Note__c,
                    Note_Created_Date_Time__c,
                    Contact_Date__c,
                    Grievance__c,
                    Contact_Type__c,
                    CreatedById,
                    LastModifiedById
            FROM    Grievance_Note__c
            WHERE   Grievance__c = :mrcCase.id
            ORDER   BY Note_Created_Date_Time__c DESC
        ];
    }
}