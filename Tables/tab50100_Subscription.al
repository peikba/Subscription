table 50100 "CSD Subscription"
{
    Caption='Subscription';
    DataClassification = AccountData;
    LookupPageId="CSD Subscription List";
    DrillDownPageId="CSD Subscription List";
    
    fields
    {
        field(1;Code; Code[10])
        {
            Caption='Code';
            DataClassification = AccountData;
        }
        field(2;Name; Text[100])
        {
            Caption='Name';
            DataClassification = AccountData;
        }
        field(3;"Item Number"; Code[20])
        {
            Caption='Item Number';
            DataClassification = AccountData;
            TableRelation=Item;
        }
        field(4;"Invoicing Schedule"; Option)
        {
            Caption='Invoicing Schedule';
            OptionMembers="Posting Date","Beginning of Period","End of Period","Beginning of Next Period";
            OptionCaption='Posting Date,Beginning of Period,End of Period,Beginning of Next Period';
            DataClassification = AccountData;
        }
        field(5;"Invoicing Frequence"; DateFormula)
        {
            Caption='Invoicing Frequence';
            DataClassification = AccountData;
        }
        field(6;"Invoicing Price"; Decimal)
        {
            Caption='Invoicing Price';
            DataClassification = AccountData;
        }
        field(7;"Deferral Code"; Code[10])
        {
            Caption='Deferral Code';
            DataClassification = AccountData;
            TableRelation="Deferral Template";
        }
    }
    
    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }
 }