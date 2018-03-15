pageextension 123456701 ResourceExtList extends "Resource List"
//CSD1.00 2018-01-01 - Mikael Johansson
{
    layout
    {

        Modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            Field("Resource Type"; "Resource Type")
            {
            }
            Field("Maximum Participants"; "Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) =
                format(Type::Machine));
        FilterGroup(0);
    end;

    var
        [Indataset]
        ShowType: Boolean;

        [InDataSet]
        ShowMaxField: Boolean;



}