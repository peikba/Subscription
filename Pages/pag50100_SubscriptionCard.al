page 50100 "CSD Subscription Card"
{
    Caption='Subscription Card';
    PageType = Card;
    SourceTable = "CSD Subscription";
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption='General';
                field(Code;Rec.Code)
                {
                    ApplicationArea = All;
                    
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = All;
                    
                }
                field("Item Number";Rec."Item Number")
                {
                    ApplicationArea = All;
                    
                }
                field("Invoicing Schedule";Rec."Invoicing Schedule")
                {
                    ApplicationArea = All;
                    
                }
                field("Invoicing Frequence";Rec."Invoicing Frequence")
                {
                    ApplicationArea = All;
                }
                field("Invoicing Price";Rec."Invoicing Price")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}