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

Verify if can add,complete, and delete 3 items
    Open Browser    https://abhigyank.github.io/To-Do-List/     Chrome

    #Adding task1
    Input Text  css:#new-task  First Task
    Click Element  css:.material-icons

    #Adding task2
    Input Text  css:#new-task  Second Task
    Click Element  css:.material-icons

    #Adding task3
    Input Text  css:#new-task  Third Task
    Click Element  css:.material-icons
    Click Link  css:a[href='#todo']

    #Completing task1
    Click Element  xpath://span[@id='text-1'][text()='First Task']

    #Completing task2
    Click Element  xpath://span[@id='text-1'][text()='Second Task']

    #Completing task3
    Click Element  xpath://span[@id='text-1'][text()='Third Task']
    Click Link  css:a[href='#completed']

    #Deleting the completed tasks
    Click Element  css:div#completed button[id='1']
    Click Element  css:div#completed button[id='1']
    Click Element  css:div#completed button[id='1']
    Page Should Not Contain Element  xpath://span[@class='mdl-list__item-primary-content'][text()='First Task']
    Page Should Not Contain Element  xpath://span[@class='mdl-list__item-primary-content'][text()='Second Task']
    Page Should Not Contain Element  xpath://span[@class='mdl-list__item-primary-content'][text()='Third Task']

    Close Browser  




    

    

