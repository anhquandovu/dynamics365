//Code unit defines the logic
//Can set property, define trigger, create procedure, subscribe to Event Publishers
//AL originates from PASCAl, procedural language, not OOP like AX
//Code snippet: tcodeunit, tprocedure, teventsub

codeunit 50100 CustomerCode
{
    procedure CelebrateCustomer(MyCustomer : Record Customer;ExtraMessage : Text)
    begin
        Message('We have a new customer! %1\\%2',MyCustomer."No.",ExtraMessage);
    end;
    
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true]
    local procedure CustomerOnAfterInsert(var Rec : Record Customer)
    begin
        CelebrateCustomer(Rec, "Called from a Codeunit");
    end;
}
