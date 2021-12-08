table 50100 "Ext Global"
{
    Caption = 'Ext Global';
    DataClassification = CustomerContent;
    fields
    {
        field(1; Entity; option)
        {
            Caption = 'Entity';
            DataClassification = CustomerContent;
            OptionCaption = 'Customer,Vendor,Item';
            OptionMembers = Customer,Vendor,Item;
            trigger OnLookup()
            begin
                ExtGlobalMgt.OnAfterLookup(Rec);
            end;
        }
        field(10; Code; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(20; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(30; "Field No"; Integer)
        {
            Caption = 'Field No';
            DataClassification = CustomerContent;
            trigger OnLookup()
            begin

            end;
        }
    }
    keys
    {
        key(PK; Entity)
        {
            Clustered = true;
        }
    }
    var
        ExtGlobalMgt: Codeunit "Ext Global Mgt";
}