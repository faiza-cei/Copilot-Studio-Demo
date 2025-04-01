controladdin ShowWebPage
{
    VerticalStretch = true;
    HorizontalStretch = true;
    RequestedHeight = 500;
    RequestedWidth = 500;
    StartupScript = 'ShowWebpage\StartupWebPage.js';
    Scripts = 'ShowWebpage\AddWebPage.js';
    StyleSheets = 'ShowWebpage\HtmlPageContent.css';
    
    event pageReady()

    procedure embedWebPage(homepage: text);
    
}