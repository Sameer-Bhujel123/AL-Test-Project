page 50502 "API Web Services"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Api Web Service";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Name; rec."Object ID")
                {
                    ApplicationArea = All;

                }
                field("Object Type"; Rec."Object Type")
                {
                    ApplicationArea = All;
                }
                field("Package ID"; Rec."Package ID")
                {
                    ApplicationArea = All;
                }
                field("Service Name"; Rec."Service Name")
                {
                    ApplicationArea = All;
                }
                field(Version; Rec.Version)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}