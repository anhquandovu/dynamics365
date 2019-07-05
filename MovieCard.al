//This .al file declares the page (form in AX) and its properties
page 50100 MovieCard
{
    PageType = Card;//Card is similar to DetailsFormMaster template in AX
    SourceTable = Movie;//Set SoureTable property by code
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Title; Title)
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                field(Director; Director)
                {
                    ApplicationArea = All;
                }
                field(Series; Series)
                {
                    ApplicationArea = All;
                }
                field(Duration; Duration)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
