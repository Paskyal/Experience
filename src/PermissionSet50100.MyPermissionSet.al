permissionset 50100 "My Permission Set"
{
    Assignable = true;
    Caption = 'My Permission Set';
    Permissions =
        table "Ext Global" = X,
        tabledata "Ext Global" = RMID,
        codeunit Test = X,
        codeunit "Ext Global Mgt" = X,
        page "Ext Global" = X,
        page "Ext Global1" = X,
        page "Ext Global2" = X;

}
