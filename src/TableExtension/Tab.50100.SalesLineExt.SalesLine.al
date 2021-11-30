tableextension 50100 "Sales Line Ext" extends "Sales Line"
{
    trigger OnAfterInsert()
    begin
        CheckDuplicateRecords();
    end;

    trigger OnAfterModify()
    begin
        CheckDuplicateRecords();
    end;

    local procedure CheckDuplicateRecords()
    var
        SalesLineRec: Record "Sales Line";
        MyNo: Code[20];
        MyType: Enum "Sales Line Type";
        I: Integer;
    begin
        I := 0;
        if SalesLineRec.FindSet() then
            repeat
                MyNo := SalesLineRec."No.";
                MyType := SalesLineRec.Type;
            until SalesLineRec.Next() = 0;
    end;
}
