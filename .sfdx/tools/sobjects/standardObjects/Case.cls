// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Case {
    global Account Account;
    global Id AccountId;
    global List<ActivityHistory> ActivityHistories;
    global Asset Asset;
    global Id AssetId;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global BusinessHours BusinessHours;
    global Id BusinessHoursId;
    global List<CaseArticle> CaseArticles;
    global List<CaseComment> CaseComments;
    global List<CaseContactRole> CaseContactRoles;
    global List<CaseExternalDocument> CaseExternalDocuments;
    global List<CaseMilestone> CaseMilestones;
    global String CaseNumber;
    global List<CaseSolution> CaseSolutions;
    global List<Case> Cases;
    global Datetime ClosedDate;
    global List<CombinedAttachment> CombinedAttachments;
    global String Comments;
    global Contact Contact;
    global String ContactEmail;
    global String ContactFax;
    global Id ContactId;
    global String ContactMobile;
    global String ContactPhone;
    global List<ContactRequest> ContactRequests;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String Description;
    global List<EmailMessage> EmailMessages;
    global Entitlement Entitlement;
    global Id EntitlementId;
    global List<Event> Events;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<CaseFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global Boolean HasCommentsUnreadByOwner;
    global Boolean HasSelfServiceComments;
    global List<CaseHistory> Histories;
    global Id Id;
    global Boolean IsClosed;
    global Boolean IsClosedOnCreate;
    global Boolean IsDeleted;
    global Boolean IsEscalated;
    global Boolean IsSelfServiceClosed;
    global Boolean IsStopped;
    global Boolean IsVisibleInSelfService;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global String MilestoneStatus;
    global List<OpenActivity> OpenActivities;
    global String Origin;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedComment> Parent;
    global Id ParentId;
    global List<SocialPost> Posts;
    global String Priority;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global Product2 Product;
    global Id ProductId;
    global String Reason;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<ContentDistribution> RelatedRecord;
    global List<EventRelationChangeEvent> Relation;
    global List<CaseShare> Shares;
    global Datetime SlaExitDate;
    global Datetime SlaStartDate;
    global List<Knowledge__kav> Source;
    global Id SourceId;
    global String Status;
    global Datetime StopStartDate;
    global String Subject;
    global String SuppliedCompany;
    global String SuppliedEmail;
    global String SuppliedName;
    global String SuppliedPhone;
    global Datetime SystemModstamp;
    global List<Task> Tasks;
    global List<CaseTeamMember> TeamMembers;
    global List<CaseTeamTemplateRecord> TeamTemplateRecords;
    global List<TopicAssignment> TopicAssignments;
    global String Type;
    global List<EventChangeEvent> What;

    global Case () 
    {
    }
}