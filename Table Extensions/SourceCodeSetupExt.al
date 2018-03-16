pageextension 123456702 SourceCodeSetupExt extends "Source Code Setup"
//CSD1.00 2018-03-16 - Mikael Johansson
//Chapter 7  Lab 1-7
//Added new fields
//Seminar

{
    layout
    {
        addafter("Cost Accounting")
        {
            group(SeminarGroup)
            {
                Caption='Seminar';
            }
        }
        addfirst(SeminarGroup)
        {
            field(Seminar;Seminar)
            {
            }
        }
    }
}