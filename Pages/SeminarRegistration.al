page 123456710 "Seminar Registration"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3-1
    //     - Created new page
    //   Chapter 8 - Lab 2 - 4
    //   Added Action Navigate


    Caption = 'Seminar Registration';
    PageType = Document;
    SourceTable = "Seminar Registration Header";
    UsageCategory = tasks;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.UPDATE;
                    end;
                }
                field("Starting Date"; "Starting Date")
                {
                }
                field("Seminar No."; "Seminar No.")
                {
                }
                field("Seminar Name"; "Seminar Name")
                {
                }
                field("Instructor Resource No."; "Instructor Resource No.")
                {
                }
                field("Instructor Name"; "Instructor Name")
                {
                }
                field("Posting Date"; "Posting Date")
                {
                }
                field("Document Date"; "Document Date")
                {
                }
                field(Status; Status)
                {
                }
                field(Duration; Duration)
                {
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                }
            }
            part(SeminarRegistrationLines; "Seminar Registration Subpage")
            {
                Caption = 'Lines';
                SubPageLink = "Document No." = field ("No.");
            }
            group("Seminar Room")
            {
                field("Room Resource Code"; "Room Resource No.")
                {
                }
                field("Room Name"; "Room Name")
                {
                }
                field("Room Address"; "Room Address")
                {
                }
                field("Room Address 2"; "Room Address 2")
                {
                }
                field("Room Post Code"; "Room Post Code")
                {
                }
                field("Room City"; "Room City")
                {
                }
                field("Room Country/Reg. Code"; "Room Country/Reg. Code")
                {
                }
                field("Room County"; "Room County")
                {
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                }
                field("Seminar Price"; "Seminar Price")
                {
                }
            }
        }
        area(factboxes)
        {
            part("Seminar Details FactBox"; "Seminar Details FactBox")
            {
                SubPageLink = "No." = field ("Seminar No.");
            }
            part("Customer Details FactBox"; "Customer Details FactBox")
            {
                Provider = SeminarRegistrationLines;
                SubPageLink = "No." = field ("Bill-to Customer No.");
            }

            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 123456706;
                    RunPageLink = "No." = Field ("No.");
                    RunPageView = where ("Table Name" = const ("Seminar Registration"));
                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 123456724;
                    RunPageLink = "Document No." = Field ("No.");
                }
            }
        }
        area(Processing)
        {
            action("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction();
                var
                    Navigate: page Navigate;
                begin
                    Navigate.SetDoc("Posting Date", "No.");
                    Navigate.RUN;
                end;
            }

            action("&Post")
            {
                Caption = '&Post';
                Image = PostDocument;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                ShortcutKey = F9;
                RunObject = codeunit "Seminar-Post (Yes/No)";
            }
        }
    }
}

