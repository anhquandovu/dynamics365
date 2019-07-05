//Sample of extra operation performed when an extension is upgraded
//Operation: Populating all empty particular field with data

codeunit 50102 UpgradeCode
{
    Subtype = Upgrade;
    
    trigger OnUpgradePerCompany()
    var
        Movie : Record Movie;
        Customer : Record Customer;
    begin
        Movie.Reset();
        if not Movie.FindFirst() then
            exit;
        Customer.Reset();
        if not Customer.IsEmpty() then
            Customer.ModifyAll("Favourite Movie No.",Movie."No.");
    end;
}
