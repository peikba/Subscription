page 50101 "CSD Subscription List"
{
    Caption = 'Subscriptions';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Subscription";
    CardPageId = "CSD Subscription Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Item Number"; Rec."Item Number")
                {
                    ApplicationArea = All;
                }
                field("Invoicing Schedule"; Rec."Invoicing Schedule")
                {
                    ApplicationArea = All;
                }
                field("Invoicing Frequence"; Rec."Invoicing Frequence")
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
}