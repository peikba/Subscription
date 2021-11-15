table 50101 "CSD Customer Subscription"
{
    Caption = 'Customer Subscription';
    DataClassification = AccountData;

    fields
    {
        field(1; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = AccountData;
            TableRelation = Customer;
        }
        field(2; "Subscription Code"; Code[10])
        {
            Caption = 'Subscription Code';
            DataClassification = AccountData;
            TableRelation = "CSD Subscription";
            trigger OnValidate()
            var
                Subscription: Record "CSD Subscription";
                Item: Record Item;
                CustomerSubscription: Record "CSD Customer Subscription";
            begin
                if (Rec."Subscription Code" <> xRec."Subscription Code") then begin
                    Rec.TestField("Last Invoice Date", 0D);
                    Subscription.get("Subscription Code");
                    Subscription.TestField("Invoicing Frequence");
                    Subscription.TestField("Item Number");
                    "Item No." := Subscription."Item Number";
                    Item.Get("Item No.");
                    Subscription."Deferral Code" := Item."Default Deferral Template Code";
                    "Invoicing Price" := Subscription."Invoicing Price";
                    if "Invoicing Price" = 0 then
                        "Invoicing Price" := Item."Unit Price";

                    Case Subscription."Invoicing Schedule" of
                        Subscription."Invoicing Schedule"::"Beginning of Next Period":
                            "Start Date" := CalcDate('<CM+1D>', WorkDate());

                        Subscription."Invoicing Schedule"::"Beginning of Period":
                            "Start Date" := CalcDate('<-CM>', WorkDate());

                        Subscription."Invoicing Schedule"::"End of Period":
                            "Start Date" := CalcDate('<CM>', WorkDate());

                        Subscription."Invoicing Schedule"::"Posting Date":
                            "Start Date" := WorkDate();
                    End;
                    Rec."Next Invoice Date" := Rec."Start Date";
                end;
            end;
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = AccountData;
            TableRelation = Item;
        }
        field(4; "Start Date"; Date)
        {
            Caption = 'Start Date';
            DataClassification = AccountData;
            trigger OnValidate()
            var
                Subscription: Record "CSD Subscription";
            begin
                Subscription.Get("Subscription Code");
                
                Case Subscription."Invoicing Schedule" of
                    Subscription."Invoicing Schedule"::"Beginning of Next Period":
                        "Start Date" := CalcDate('<CM+1D>', WorkDate());

                    Subscription."Invoicing Schedule"::"Beginning of Period":
                        "Start Date" := CalcDate('<-CM>', WorkDate());

                    Subscription."Invoicing Schedule"::"End of Period":
                        "Start Date" := CalcDate('<CM>', WorkDate());

                    Subscription."Invoicing Schedule"::"Posting Date":
                        "Start Date" := WorkDate();
                End;
                Rec."Next Invoice Date" := Rec."Start Date";
            end;

        }
        field(5; "Last Invoice Date"; Date)
        {
            Caption = 'Last Invoice Date';
            DataClassification = AccountData;
            Editable = false;
        }
        field(6; "Next Invoice Date"; Date)
        {
            Caption = 'Next Invoice Date';
            DataClassification = AccountData;
            Editable = false;
        }
        field(7; "Cancelled Date"; Date)
        {
            Caption = 'Cancelled Date';
            DataClassification = AccountData;
        }
        field(8; "Active"; Boolean)
        {
            Caption = 'Active';
            DataClassification = AccountData;
        }
        field(9; "Invoicing Price"; Decimal)
        {
            Caption = 'Invoicing Price';
            DataClassification = AccountData;
        }
        field(10; "Allow Line Discount"; Boolean)
        {
            Caption = 'Allow Line Discount';
            DataClassification = AccountData;
        }
    }

    keys
    {
        key(Key1; "Customer No.", "Subscription Code")
        {
            Clustered = true;
        }
    }
}