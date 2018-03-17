page 123456722 "Seminar Registers" 

{
    Caption = 'Seminar Registers';
    PageType = List;
    SourceTable = "Seminar Register";
    Editable = false;
    UsageCategory = Lists;



    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                }
                field("Creation Date";"Creation Date")
                {
                }       
                field("User ID";"User ID")
                {
                }
                field("Source Code";"Source Code")
                {
                }
                field("Journal Batch Name";"Journal Batch Name")
                {
                }
                field("From Entry No.";"From Entry No.")
                {
                }
                field("To Entry No.";"To Entry No.")
                {
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("Seminar Ledgers")
            {
                Image=WarrantyLedger;
                RunObject=codeunit "Seminar Reg.-Show Ledger";
            }
        }
    }
}