public with sharing class StudentSupportController {
    public List<Student_Support__c> openCases { get; private set; }

    public StudentSupportController() {
        openCases = [
            SELECT Id,
                   Student_Legal_Name__c,
                   Grade__c,
                   Support_Type__c,
                   Priority__c,
                   Status__c
            FROM Student_Support__c
            WHERE Status__c != 'Resolved'
            ORDER BY Priority__c DESC
            LIMIT 20
        ];
    }
}
