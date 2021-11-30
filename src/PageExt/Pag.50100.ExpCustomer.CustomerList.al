pageextension 50100 "Exp Customer" extends "Customer List"
{
    actions
    {
        addafter("Co&mments")
        {
            action(ChangeCitiesForCustomer)
            {
                ApplicationArea = All;
                Caption = 'Change Cities For Customer';
                Image = CustomerCode;
                ToolTip = 'Executes the Change Cities For Customer action.';
                Promoted = true;
                PromotedCategory = Category7;

                trigger OnAction()
                var
                    PostCode: Record "Post Code";
                    Customer: Record Customer;
                    SeventhCity: Text;

                begin
                    IF PostCode.FindSet() THEN
                        PostCode.Next(7);
                    SeventhCity := PostCode.City;

                    if Customer.FindSet() then
                        repeat
                            Customer.City := PostCode.City;
                            Customer.Modify()
                        until Customer.Next() = 0;
                    Message('All Customer''s City field was changed to %1', SeventhCity);

                    // Customer2.SetRange("No.", '20000');
                    // if Customer2.Findset() THEN begin
                    //     Customer2.City := 'ZT';
                    //     Customer2.Modify();
                    // end;
                end;

            }
            action(TestFieldCity)
            {
                ApplicationArea = All;
                Caption = 'TestFieldCity';
                Image = TestFile;
                ToolTip = 'Executes the TestFieldCity action.';
                Promoted = true;
                PromotedCategory = Category7;

                trigger OnAction()
                var
                    Customer: Record Customer;
                    cityMsg: Label 'Barcelona';
                begin
                    Customer.FindSet();
                    Customer.TestField(City, cityMsg);
                end;
            }
            action(TestCodeunit)
            {
                ApplicationArea = All;
                Caption = 'TestCodeunit';
                Image = Cloud;
                Promoted = true;
                PromotedCategory = Category7;
                ToolTip = 'Executes the TestCodeunit action.';

                trigger OnAction()
                var
                    NotTempRec: Record Customer; //0
                    // TempRec: Record Customer temporary;
                    TestCod: Codeunit Test;
                begin
                    TestCod.ByValueNotTemp(NotTempRec);
                    Message(Format(NotTempRec.City)); //0
                    // TempCod.ByValueNotTemp(TempRec);
                    // TempCod.ByValueTemp(NotTempRec);
                    // TempCod.ByValueTemp(TempRec);
                    TestCod.ByReferenceNotTemp(NotTempRec);
                    Message(Format(NotTempRec.City)); //City2
                    // TempCod.ByReferenceNotTemp(TempRec);
                    // TempCod.ByReferenceTemp(NotTempRec);
                    // TempCod.ByReferenceTemp(TempRec);
                end;
            }
        }
    }
}