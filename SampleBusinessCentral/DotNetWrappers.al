//Demo .Net Wrapper: wrapping common NameSpace and .Net Interoperability by common Datatype
//1. Text & TextBuilder
//2. List
//3. Dictionary
codeunit 50103 DotNetWrappers
{
    trigger OnRun()
    begin
        TextDemo();
        ListDemo();
    end;
    
    procedure TextDemo()
    var
        myText : Text;
        myTextBuilder : TextBuilder;
    begin
        myTextBuilder.AppendLine('we can append lines');
        myTextBuilder.Append('or just add characters... ');
        myTextBuilder.AppendLine('to the current line');
        myTextBuilder.AppendLine('some text');
        myTextBuilder.Replace('some text', 'replaced by some other text');
        myText := myTextBuilder.ToText();
        
        myText := myText.ToUpper();
        
        Message(myText);
    end;
    
    //Initialize a list of anytype, add element, retrieve based on index, print
    procedure ListDemo()
    var
        CastNames : List of [Text];
    begin
        CastNames.Add('Bill');
        CastNames.Add('John');
        CastNames.Add("Lillybelle');
        
        if CastNames.Contains('John') then
            Message('John is on the list');
        Message('Name at index 1: ', CastNames.Get(1));
        PrintCastNames(CastNames);
    end;
    
    procedure PrintCastNames(CastNames : List of [Text])
    var
        CastName : Text;
    begin
        foreach CastName in CastNames do
        begin
            Message(CastName);
            CountCharInCastName(CastName);
        end;
    end;
    
    //Use Directory of [Key,Value] to count letter
    //Directory.Get() and Directory.Set()
    procedure CountCharInCastName(CastName : Text)
    var
        LetterCounter : Dictionary of [Char,Integer];
        i : integer;
        c : integer;
    begin
        clear(LetterCounter);
        for i := 1 to StrLen(CastName) do
        begin
            if LetterCounter.Get(CastName[i],c) then
                LetterCounter.Set(CastName[i],c+1);
            else
                LetterCounter.Set(CastName[i],1);
        end;
        if LetterCounter.Get('l',c) then
            Message("The name %1 has the letter L %2 times',CastName,Format(c));
    end;
}
