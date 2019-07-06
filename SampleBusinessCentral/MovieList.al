//This .al file defines a List Page linked to the MovieCard 
//Using tpage and tfieldpage to generate code snippets
page 50101 MovieList
{
    PageType = List;
    SourceTable = Movie;
    CardPageId = MovieCard;
    Editable = false;
    
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Title; Title)
                {
                    ApplicationArea = All;
                }
                field(Director; Director)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    //Add action run DotNetWrapper to the page
    actions
    {
        area(Processing)
        {
            action(RunWrapper)
            {
                caption = "Run .NET Wrapper";
                ApplicationArea = All;
                RunObject = codeunit DotNetWrappers;
            }
        }
    }
}
