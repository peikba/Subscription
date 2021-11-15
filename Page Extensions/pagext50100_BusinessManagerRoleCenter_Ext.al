pageextension 50105 "CSD Business Manager RC" extends "Business Manager Role Center"
{

    actions
    {
        addafter(Payments)
        {
            action("Subscriptions")
            {
                Caption = 'Subscriptions';
                Promoted = true;
                PromotedIsBig = true;
                image = InsuranceRegisters;
                RunObject = page "CSD Subscription List";
                ApplicationArea = All;
            }
            action("Create Subscription Invoices")
            {
                Caption = 'Create Subscription Invoices';
                Promoted = true;
                PromotedIsBig = true;
                image = CreateJobSalesInvoice;
                RunObject = report "CSD Create Invoices";
                ApplicationArea = All;
            }
            action("Subscription Customers")
            {
                Caption = 'Subscription Customers';
                Promoted = true;
                PromotedIsBig = true;
                image = Report;
                RunObject = report "CSD Subscription Customers";
                ApplicationArea = All;
            }
        }
    }
}