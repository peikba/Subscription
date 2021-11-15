pageextension 50100 "CSD Customer Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Customer Subscription"; Rec."CSD Customer Subscription")
            {
                ApplicationArea = All;
            }
        }
        addfirst(factboxes)
        {
            part("Subecription Factbox"; "CSD Subscription Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "Customer No." = field("No.");
                Editable = false;
            }
        }
    }

    actions
    {
        addfirst("&Customer")
        {
            action("CSD Subscriptions")
            {
                Caption = 'Subscriptions';
                ApplicationArea = All;
                RunObject = page "CSD Customer Subscriptions";
                RunPageLink = "Customer No." = field("No.");
                Image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
            }
        }
    }
}