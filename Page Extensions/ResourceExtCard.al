pageextension 123456700 ResourceCardExt extends "Resource Card"
//CSD1.00 2018-02-01 - Mikael Johansson
//Chapter 5 - Lab 1-2
//Added new fields:
// - Internal/External
// - Maximum Participants
// Added new FastTab
// Added code to OnOpenPage trigger
{
    layout
    {

        addlast(General)
        {
            field("Resource Type"; "Resource Type")
            {
            }
        }
        Addafter("Personal Data")
        {

            group("Room")
            {
                field("Quantity Per Day"; "Quantity Per Day")
                {
                    Visible = ShowMaxField;
                }
            }
            field("Maximum Participants"; "Maximum Participants")
            {
            }
        }

    }

    var

        [InDataSet]
        ShowMaxField: Boolean;

    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(False);
    end;
}