codeunit 50100 "Test"
{
    TableNo = Customer;

    trigger OnRun()
    begin
    end;

    procedure ByValueNotTemp(TestRec: Record Customer)
    begin
        if TestRec.FindSet() then
            TestRec.Next(1);
        TestRec.City := 'City10';
        TestRec.Modify();
    end;

    procedure ByValueTemp(TestRec: Record Customer temporary)
    begin
    end;

    procedure ByReferenceNotTemp(var TestRec: Record Customer)
    begin
        if TestRec.FindSet() then
            TestRec.Next(2);
        TestRec.City := 'City20';
        TestRec.Modify();
    end;

    procedure ByReferenceTemp(var TestRec: Record Customer temporary)
    begin
    end;
}
