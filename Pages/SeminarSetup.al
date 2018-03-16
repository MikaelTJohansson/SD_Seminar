page 123456700 "Seminar Setup"

{
    Caption='Seminar Setup';
    InsertAllowed=False;
    DeleteAllowed=False;
    UsageCategory=Tasks;
    PageType = Card;
    SourceTable = "Seminar Setup";
    layout
    {
        area(content)
        {
            group(Numbering)
            {
                field("Seminar Nos.";"Seminar Nos.")
                {
                }
                field("Seminar Registration Nos.";"Seminar Registration Nos.")
                {
                }
                field("Posted Seminar Reg. Nos.";"Posted Seminar Reg. Nos.")
            }
        }
    }
trigger OnOpenPage();
begin
    if not get then begin
        init;
        insert;
    end;    
end;
}