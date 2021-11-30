codeunit 50101 "Ext Global Mgt"
{
    // TableNo = "Ext Global";

    procedure OnAfterLookup(VAR ExtGlobal: Record "Ext Global")
    begin
        // SetFieldBySource (VAR ExtGlobal: Record "Ext Global"; Field: Record Field);
        // FieldList.SETTABLEVIEW(Field);
        // FieldList.SETRECORD(Field);
        // FieldList.LOOKUPMODE(TRUE);
        // IF NOT (FieldList.RUNMODAL() IN[ACTION::OK, ACTION::LookupOK]) THEN
        EXIT;

        // FieldList.GETRECORD(Field);
        // SetExtGlobalFields(ExtGlobal,Field);

        // procedure OnAfterValidateFieldNo(VAR ExtGlobal: Record "Ext Global")
        // IF ExtGlobal."Field No" = 0 THEN BEGIN
        //   ExtGlobal.Description := '';
        //   EXIT;
        // END;

        // SetFieldBySource(ExtGlobal,Field);
        // Field.SETRANGE("No.",ExtGlobal."Field No");
        // Field.FINDFIRST();
        // SetExtGlobalFields(ExtGlobal,Field);

        // procedure OnAfterValidateDescription(VAR ExtGlobal: Record "Ext Global")
        // IF ExtGlobal.Description = '' THEN BEGIN
        // ExtGlobal."Field No" := 0;
        // EXIT;
        // END;
        // SetFieldBySource(ExtGlobal,Field);
        // Field.SETFILTER("Field Caption",'@*'+ExtGlobal.Description + '*');
        // Field.FINDFIRST();
        // SetExtGlobalFields(ExtGlobal,Field);

        // local procedure SetFieldBySource(VAR ExtGlobal: Record "Ext Global";VAR Field : Record Field)
        // begin
        // ExtGlobal.TESTFIELD(ExtGlobal.Code);
        // CASE ExtGlobal.Entity OF
        // ExtGlobal.Entity::Customer:
        // Field.SETRANGE(TableNo,DATABASE::Customer);
        // ExtGlobal.Entity::Vendor:
        // Field.SETRANGE(TableNo,DATABASE::Vendor);
        // ExtGlobal.Entity::Item:
        // Field.SETRANGE(TableNo,DATABASE::Item);
        // END;

        // local procedure SetExtGlobalFields(VAR ExtGlobal: Record "Ext Global";VAR Field : Record Field)
        // ExtGlobal."Field No" := Field."No.";
        // ExtGlobal.Description := Field."Field Caption";
        // CheckIfFieldExist(ExtGlobal);

        // local procedure CheckIfFieldExist(ExtGlobal : Record "Ext Global Dimension Setup")
        // ExtGlobal2.SETRANGE("Field No",ExtGlobal."Field No");
        // ExtGlobal2.SETFILTER(Code,'<>%1', ExtGlobal.Code);
        // ExtGlobal2.SETRANGE(Entity,ExtGlobal.Entity);
        // IF  ExtGlobal2.FINDFIRST() THEN
        // ERROR(ExtGlobalExistErr,ExtGlobal2.Description,ExtGlobal2.Entity);

        // var
        // Field : Record Field
        // // FieldList: Page "Field list";
    end;
}