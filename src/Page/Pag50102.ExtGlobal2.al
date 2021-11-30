page 50102 "Ext Global2"
{

    Caption = 'Ext Global2';
    PageType = Document;
    UsageCategory = Lists;
    ApplicationArea = all;

    layout
    {
        area(content)
        {
            part(Customer; "Ext Global1")
            {
                Caption = 'Customer';
                ApplicationArea = all;
            }
            part(Vendor; "Ext Global1")
            {
                Caption = 'Vendor';
                ApplicationArea = all;
            }
            part(Item; "Ext Global1")
            {
                Caption = 'Item';
                ApplicationArea = all;
            }
        }
    }
}