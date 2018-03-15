tableextension 123456700 ResourceExt extends Resource
{
    fields
    {
        // Add changes to table fields here
        field(123456701; "Resource Type"; option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal", "External";
            OptionCaption = 'Internal,External';

        }

        field(123456702; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(123456703;"Quantity Per Day"; Decimal)
        {
            Caption='Quantity Per Day';
        }
    }

}