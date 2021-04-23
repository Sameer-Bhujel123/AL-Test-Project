page 50503 "Job Planning API"
{
    PageType = API;
    Caption = 'Job Planning API';
    APIPublisher = 'dogma';
    APIGroup = 'app1';
    APIVersion = 'v2.0', 'v1.0';
    EntityName = 'jobplanning';
    EntitySetName = 'jobplannings';
    SourceTable = "Job Planning Line";
    DelayedInsert = true;
    InsertAllowed = true;
    DeleteAllowed = false;
    ODataKeyFields = SystemId;
    AutoSplitKey = true;


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
                field(lineNo; Rec."Line No.")
                {
                    ApplicationArea = all;
                }
                field(planningDate; Rec."Planning Date")
                {
                    ApplicationArea = all;
                }
                field(plannedDeliveryDate; Rec."Planned Delivery Date")
                {
                    ApplicationArea = all;
                }
                field(documentNo; Rec."Document No.")
                {
                    ApplicationArea = all;
                }
            }
        }

    }
}