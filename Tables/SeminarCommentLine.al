table 123456704 "Seminar Comment Line"

{
    Caption = 'Seminar Comment Line';

    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionMembers = "Seminar", "Seminar Registration Header", "Posted Seminar Reg. Header";
        }
        
        field(20;"Document Line No.";Integer)
        {
                   TableRelation = "No. Series";
        }
        field(30;"No.";Code[20])
        {
            TableRelation = if("Table Name"=const(Seminar))"seminar"
                 }
        
    }

    keys
    {
        key(PK;MyField)
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}