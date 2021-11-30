page 50100 "Ext Global"
{
    
    ApplicationArea = All;
    Caption = 'Ext Global';
    PageType = List;
    SourceTable = "Ext Global";
    UsageCategory = Lists;
    
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
