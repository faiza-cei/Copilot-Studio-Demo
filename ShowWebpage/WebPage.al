page 50015 "Web Page"
{
    ApplicationArea = All;
    Caption = 'Copilot Chat';
    PageType = CardPart;

    layout
    {
        area(Content)
        {
            usercontrol(EmbedWebPage;ShowWebPage)
            {
                
                trigger pageReady()
                var
                begin
                    //Add bot url here
                    CurrPage.EmbedWebPage.embedWebPage('https://copilotstudio.microsoft.com/environments/a62e7dd1-80b1-e0eb-8aac-ada0ca36500f/bots/crb00_purchasesAssistant/webchat?__version__=2');
                end;

            }
        }
    }

}