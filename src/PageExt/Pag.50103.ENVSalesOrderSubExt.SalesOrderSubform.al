pageextension 50103 "ENV Sales Order Sub Ext" extends "Sales Order Subform" //46
{
    actions
    {
        addlast("&Line")
        {
            action("ENV Combine Lines")
            {
                ApplicationArea = All;
                Caption = 'Combine Lines';
                Image = Line;
                ToolTip = 'Executes the Combine Lines action.';

                trigger OnAction()
                begin
                    Rec.FindRelatedSalesLines(Rec);
                end;
            }
        }
    }
}