//This .al file defines a table extension, extending Customer and it's properties
//Code snippet: ttableext

//Syntax and mechanism are similar to D365F&O
//When being extended, a 'Companion Table' is created, with same Primary Key with original Table
//New Schema sync with Companion Table naming: [Company]$[Table]$[APPID]

tableextension 50100 CustomerMovieExtension extends Customer
{
    fields
    {
        field(50100; "Favourite Movie No."; Code[20])
        {
            Caption = 'Favourite Movie No.';
            TableRelation = Movie."No";
            DataClassification = ToBeClassified;
        }
    }
    
    trigger OnAfterInsert()
    var
        CustomerCode : Codeunit CustomerCode;
    begin
        CustomerCode.CelebrateCustomer(Rec,"Called from Table Extension");
    end;
}
