//this .al file defines a page extension, extending the standard page
//Using tpageext to generate a code snippet
//addlast(): adding an element to the last of the General tab

pageextension 50100 CustomerCardMovieExtension extends "Customer Card"
{
    layout
    {
        addlast(General) 
        {
            field("Favourite Movie No.";"Favourite Movie No.")
            {
                ApplicationArea = All;
            }
        }
    }
}
