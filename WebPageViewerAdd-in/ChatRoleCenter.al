pageextension 50102 RoleCenterExtension extends "Business Manager Role Center"
{
    layout
    {
        addlast(rolecenter)
        {
            part(Chatbotpart; "Copilot Chat Part")
            {
                ApplicationArea=All;
            }
            // part(ChatBot;"Web Page"){
            //     ApplicationArea = All;
            // }
        }

    }
}