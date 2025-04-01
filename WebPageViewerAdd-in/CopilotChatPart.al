page 50101 "Copilot Chat Part"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Copilot Chat';
    
    layout
    {
        area(content)
        {
            // usercontrol(ChatControl; CopilotChatControl) { }
            usercontrol(copilot;WebPageViewer){
                ApplicationArea = All;
                trigger ControlAddInReady(CallbackUrl: Text)
                begin
                    //Add the bot url here
                    CurrPage.copilot.Navigate('https://copilotstudio.microsoft.com/environments/Default-2d50862b-0b93-4148-b94b-0a4da7dda91a/bots/cr252_agent/webchat?__version__=2');
                end;
            }
        }
    }
}
