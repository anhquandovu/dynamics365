//To get the exchange rate between a particular currency and GL currency
//Extending Currencies Page, adding an action linked to GetExchangeRate CodeUnit
pageextension 50101 CurrencyListExt extends Currencies
{
    actions
    {
        addafter("Exch. &Rates")
        {
            action(GetExchangeRate)
            {
                Caption = 'Get Exchange Rate';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;
                
                trigger OnAction()
                var
                    GetExchangeRate : CodeUnit GetExchangeRate;
                begin
                    GetExchangeRate.GetExchangeRate(Rec);
                end;
            }
        }
    }
}
