//this .al file defines a page extension, extending the standard page
//Using tpageext generate a code snippet
pageextension 50100 CustomerCardMovieExtension extends "Customer Card"
{
    layout
    {
        addlast(General) //add an element to the last of the General tab
        {
            field("Favourite Movie No.";"Favourite Movie No.")
            {
                ApplicationArea = All;
            }
        }
    }
}
