page 50501 "Job Task API"
{
    PageType = API;
    Caption = 'Job Task API';
    APIPublisher = 'dogma';
    APIGroup = 'app1';
    APIVersion = 'v2.0', 'v1.0';
    EntityName = 'jobtask';
    EntitySetName = 'jobtasks';
    SourceTable = "Job Task";
    DelayedInsert = true;
    InsertAllowed = true;
    DeleteAllowed = false;
    ODataKeyFields = SystemId;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                    ApplicationArea = all;
                }
                field(jobTaskNo; Rec."Job Task No.")
                {
                    ApplicationArea = all;
                }
                field(description; rec.Description)
                {
                    ApplicationArea = All;
                }
                field(jobTaskType; rec."Job Task Type")
                {
                    ApplicationArea = All;
                }
                field(startDate; Rec."Start Date")
                {
                    ApplicationArea = all;
                }
                field(endDate; Rec."End Date")
                {
                    ApplicationArea = all;
                }
            }
        }

    }
}