tableextension 50100 "CSD Customer" extends Customer
{
    fields
    {
        field(50100; "CSD Customer Subscription"; Boolean)
        {
            Caption='Customer Subscription';
            FieldClass=FlowField;
            CalcFormula=exist("CSD Customer Subscription" where("Customer No."=field("No."),Active=const(true)));
            Editable=false;
        }
    }
}