//This codeunit uses HttpClient API to access to a HTTP-based web service to get the data without directly having to use DotNet interop

codeunit 50103 GetExchangeRate
{
    procedure GetExchangeRate(Currency : Record Currency)
    var
        HttpClient : HttpClient;
        HttpResponse : HttpResponseMessage;
        ResponseText : Text;
        Url : Text;
        GeneralLedgerSetup : Record "General Ledger Setup";
    begin
        GeneralLedgerSetup.FindFirst;
        
        //Access to fixer.io, a trusted currency data provider to get exchange rate
        Url := StrSubstNo('http://api.fixer.io/latest?base=%1&symbols=%2',GeneralLedgerSetup.GetCurrencyCode(''),Currency.Code);
        
        if HttpClient.Get(Url,HttpResponse) then
            begin
                HttpResponse.Content.ReadAs(ResponseText);
                Message(ResponseText);
            end;
    end;
}
