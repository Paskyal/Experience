permissionset 50100 "My Permission Set"
{
    Assignable = true;
    Caption = 'My Permission Set';
    Permissions =
        page "Ext Global" = X,
        page "Ext Global1" = X,
        page "Ext Global2" = X,
        table "Ext Global" = X,
        tabledata "Ext Global" = RIMD,
        codeunit Test = X,
        codeunit "Ext Global Mgt" = X;
}