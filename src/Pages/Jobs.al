page 50500 "Jobs"
{
    PageType = API;
    Caption = 'Jobs API';
    APIPublisher = 'dogma';
    APIGroup = 'app1';
    APIVersion = 'v2.0', 'v1.0';
    EntityName = 'job';
    EntitySetName = 'jobs';
    SourceTable = Job;
    DelayedInsert = true;
    ODataKeyFields = SystemId;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(id; Rec.SystemId)
                {
                    ApplicationArea = All;
                }
                field(jobNo; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(billToCustomerNo; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
            }
            part(jobtask; "Job Task API")
            {
                EntityName = 'jobtask';
                EntitySetName = 'jobtasks';
                ApplicationArea = all;
                SubPageLink = "Job No." = field("No.");
            }
            part(jobPlanning; "Job Planning API")
            {
                EntityName = 'jobplanning';
                EntitySetName = 'jobplannings';
                ApplicationArea = all;
                Provider = jobtask;
                SubPageLink = "Job Task No." = field("Job No."), "Job No." = field("Job No.");
            }
        }
    }
}