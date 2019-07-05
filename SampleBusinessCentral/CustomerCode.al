//Code unit defines the logic
//Can set property, define trigger, create procedure, subscribe to Event Publishers
//AL originates from PASCAl, procedural language, not OOP like AX

//Extending system code:AL doesn't have wrapper like AX.
//Need to request Microsoft to create Event Publisher and then subscribe to it

//Code snippet: tcodeunit, tprocedure, teventsub

codeunit 50100 CustomerCode
{
    procedure CelebrateCustomer(MyCustomer : Record Customer;ExtraMessage : Text)
    var
        NEW_CUSMSG : Label 'We have a new customer! %1\\%2'; //Declare label
    begin
        Message(NEW_CUSMSG,MyCustomer."No.",ExtraMessage);//Using label
    end;
    
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true]
    local procedure CustomerOnAfterInsert(var Rec : Record Customer)
    begin
        CelebrateCustomer(Rec, "Called from a Codeunit");
    end;
}
