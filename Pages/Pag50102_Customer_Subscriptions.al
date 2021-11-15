page 50102 "CSD Customer Subscriptions"
{
    Caption = 'Customer Subscriptions';
    PageType = List;
    SourceTable = "CSD Customer Subscription";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    Visible = ShowCustomerNo;
                }
                field("Subscription Code"; Rec."Subscription Code")
                {
                    ApplicationArea = All;

                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;

                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;

                }
                field("Last Invoice Date"; Rec."Last Invoice Date")
                {
                    ApplicationArea = All;

                }
                field("Next Invoice Date"; Rec."Next Invoice Date")
                {
                    ApplicationArea = All;

                }
                field("Cancelled Date"; Rec."Cancelled Date")
                {
                    ApplicationArea = All;

                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;

                }
                field("Invoicing Price"; Rec."Invoicing Price")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        ShowCustomerNo := Rec.GetFilter("Customer No.")<>'';
    end;

    var
        ShowCustomerNo: Boolean;
}