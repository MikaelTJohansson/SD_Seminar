tableextension 123456701 SourceCodeSetupExt extends "Source Code Setup"
//CSD1.00 2018-03-16 - Mikael Johansson
//Chapter 7  Lab 1-7
//Added new fields
//Seminar
{
    fields
    {
        field(123456700; Seminar; code[10])
        {
            Caption = 'Seminar';
            TableRelation = "Source Code";
        }
    }
}