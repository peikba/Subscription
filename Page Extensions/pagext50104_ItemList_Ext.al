pageextension 50104 "CSD Item List" extends "Item List"
{
    layout
    {
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
        addfirst(History)
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