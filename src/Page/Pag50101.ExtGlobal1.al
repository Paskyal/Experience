page 50101 "Ext Global1"
{

    Caption = 'Ext Global1';
    PageType = ListPart;
    SourceTable = "Ext Global";
    UsageCategory = Lists;
    ApplicationArea = All;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Entity; Rec.Entity)
                {
                    ToolTip = 'Specifies the value of the Entity field.';
                    ApplicationArea = All;
                }
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
                field("Field No"; Rec."Field No")
                {
                    ToolTip = 'Specifies the value of the Field No field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
