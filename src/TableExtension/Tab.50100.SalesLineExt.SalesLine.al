tableextension 50100 "Sales Line Ext" extends "Sales Line"
{
    procedure FindRelatedSalesLines(SalesLine: Record "Sales Line")
    var
        _SalesLine: Record "Sales Line";
    begin
        _SalesLine.SetRange("Document Type", "Document Type");
        _SalesLine.SetRange("Document No.", "Document No.");
        _SalesLine.SetRange(Type, SalesLine.Type);
        _SalesLine.SetRange("No.", SalesLine."No.");
        _SalesLine.SetFilter("Line No.", '<>%1', SalesLine."Line No.");
        if _SalesLine.FindSet() then
            repeat
                SalesLine.Validate(Quantity, SalesLine.Quantity + _SalesLine.Quantity);
                SalesLine.Modify();
                _SalesLine.Delete(true);
            until Next() = 0;
    end;
}