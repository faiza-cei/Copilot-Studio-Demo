function embedWebPage(homepage)
{
    createPage();   
    const webPage = document.getElementById('webPage');
    webPage.src = homepage;
}

function createPage(){
    const placeholder = document.getElementById('controlAddIn')
    const iframePage = document.createElement('iframe');
    iframePage.id = 'webPage';
    iframePage.height = '100%';
    iframePage.width = '100%';
    placeholder.appendChild(iframePage);
}