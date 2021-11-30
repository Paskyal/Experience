table 50100 "Ext Global"
{
    Caption = 'Ext Global';
    DataClassification = CustomerContent;


    fields
    {
        field(1; Entity; option)
        {
            Caption = 'Entity';
            OptionCaption = 'Customer,Vendor,Item';
            OptionMembers = Customer,Vendor,Item;
            DataClassification = CustomerContent;
            trigger OnLookup()
            begin
                ExtGlobalMgt.OnAfterLookup(Rec);
            end;
        }
        field(10; Code; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
        }
        field(20; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(30; "Field No"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Field No';
            trigger OnWhat()
            var
    var
    begin
        n

    end;


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
