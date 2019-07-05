//Sample of extra operation performed when an extension is installed
//Operation: Populating empty records with data

codeunit 50101 InstallCode
{
    Subtype = Install;
    
    trigger OnInstallAppPerCompany()
    begin
        InsertMovie('0001','Titanic','James Cameron', 3.15);
        InsertMovie('0001','EndGame','Anthony Russo & Joe Russo', 3.02);
    end;
    
    local procedure InsertMovie(MovieNo : code[20];MovieTitle : Text;MovieDirector : Text;MovieDuration : Duration)
    var
        Movie : Record Movie;
    begin
        with Movie do begin
            if get(MovieNo) then 
              exit;
            "No." := MovieNo;
            Title := MovieTitle;
            Director := MotiveDirector;
            Duration := MovieDuration;
            
            Insert;
        end;
    end;
}
