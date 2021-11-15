pageextension 50103 "CSD Item Card" extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            field("CSD Subscription Item"; Rec."CSD Subscription Item")
            {
                ApplicationArea = All;
            }
        }
        addfirst(factboxes)
        {
            part("Subecription Factbox"; "CSD Subscription Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "Item No." = field("No.");
                Editable = false;
            }
        }
    }

    actions
    {
        addfirst(Navigation_Item)
        {
            action("CSD Subscriptions")
            {
                Caption = 'Subscriptions';
                ApplicationArea = All;
                RunObject = page "CSD Customer Subscriptions";
                RunPageLink = "Item No." = field("No.");
                Image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
            }
        }
    }
}