page 50103 "CSD Subscription Factbox"
{
    PageType = ListPart;
    SourceTable = "CSD Customer Subscription";
    Editable = false;

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
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    Visible = ShowItemNo;
                }
                field("Subscription Code"; Rec."Subscription Code")
                {
                    ApplicationArea = All;

                }
                field("Cancelled Date"; Rec."Cancelled Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        ShowCustomerNo := Rec.GetFilter("Customer No.") <> '';
        ShowItemNo := Rec.GetFilter("Item No.") <> '';
    end;

    var
        ShowCustomerNo: Boolean;
        ShowItemNo: Boolean;
}