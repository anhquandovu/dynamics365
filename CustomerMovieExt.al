//This .al file defines a table extension, extending Customer and it's properties
//Syntax and mechanism are similar to D365F&O
//When being extended, a 'Companion Table' is created, with same Primary Key with original Table
//New Schema sync with Companion Table naming: [Company]$[Table]$[APPID]
tableextension 50100 CustomerMovieExt extends Customer
{
    fields
    {
        field(50100; "Favourite Movie No."; Code[20])
        {
            Caption = 'Favourite Book No.';
            DataClassification = ToBeClassified;
        }
    }
}
