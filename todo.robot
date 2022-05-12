***Settings***
Library     SeleniumLibrary     timeout=10      implicit_wait=2

***Test Cases***
Verify if can complete one task sucessfully    
    Open Browser    https://abhigyank.github.io/To-Do-List/     Chrome

    #Adding new task
    Input Text  css:#new-task  First Task
    Click Element  css:.material-icons
    Click Link  css:a[href='#todo']
    Page Should Contain Element  xpath://span[@id='text-1'][text()='First Task']
    
    #Completing the task
    Click Element  xpath://span[@id='text-1'][text()='First Task']
    Click Link  css:a[href='#completed']
    Page Should Contain Element  xpath://span[@class='mdl-list__item-primary-content'][text()='First Task']
    Close Browser  

Verify if a added task can be deleted successfully
    Open Browser    https://abhigyank.github.io/To-Do-List/     Chrome

    #Adding new task
    Input Text  css:#new-task  First Task
    Click Element  css:.material-icons
    Click Link  css:a[href='#todo']

    #Deleting the to-do task
    Click Element  css:ul#incomplete-tasks button[id='1']
    Page Should Not Contain Element  xpath://span[@id='text-1'][text()='First Task']
    Close Browser  

Verify if a completed task can be deleted successfully
    Open Browser    https://abhigyank.github.io/To-Do-List/     Chrome

    #Adding new task
    Input Text  css:#new-task  First Task
    Click Element  css:.material-icons
    Click Link  css:a[href='#todo']
    
    #Completing the task
    Click Element  xpath://span[@id='text-1'][text()='First Task']
    Click Link  css:a[href='#completed']

    #Deleting the completed task
    Click Element  css:div#completed button[id='1']
    Page Should Not Contain Element  xpath://span[@class='mdl-list__item-primary-content'][text()='First Task']
    Close Browser  

    

    

