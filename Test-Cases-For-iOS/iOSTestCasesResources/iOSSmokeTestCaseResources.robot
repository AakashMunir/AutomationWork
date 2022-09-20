*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  BuiltIn
Library  String
Library  DateTime
Resource  ../iOSCommonXpathsOrIDs/iOSSmokeTestCaseXpathsOrIDs.robot
Library    ExcelLibrary
Resource  ../iOSExcelPath/iOSSmokeTestCaseExcelPath.robot


*** Variables ***
${file_path}        ./iOSExcelFiles/iOSTestCaseForSmoke.xlsx


*** Keywords ***



Steps for open fayvo application
    Open the Fayvo application
Steps for open fayvo application skip sign up
    Open the Fayvo application skip signup
Steps for login with email form splash screen
    sleep  3
    tap on login button from splash screen
    sleep  3
    right data for login check



Steps for login with email
    go to profile
    tap on register button
    sleep  3
    tap on login button from splash screen
    sleep  3
    right data for login check
#    sleep  2
#    go to profile
#    sleep  3

#    go to setting
#    sleep  3
#    tap on login and logout button
#    sleep  3
#    ok button




Steps for Sign up or login with facebook
    go to profile

    run keyword and continue on failure  tap on register button

    run keyword and continue on failure  tap on facebook button
    go to setting
    tap on login and logout button
    ok button




Steps for login with Google link
    sleep  3
    go to profile

    run keyword and continue on failure  tap on register button

    run keyword and continue on failure  tap on google button

    run keyword and continue on failure  tap on user email
#    sleep  15
#    check the gmail id is new

#    go to setting
#
#    tap on login and logout button
#
#    ok button


Steps for sign up with new email

    go to profile

    run keyword and continue on failure  tap on register button

    run keyword and continue on failure  tap on email button

    run keyword and continue on failure  enter email and phone number
    sleep  3

    run keyword and continue on failure  Put the verification code

    run keyword and continue on failure  enter name and username
    sleep  5

    run keyword and continue on failure  create new password
    sleep  5

    run keyword and continue on failure  date of birth and gender
    sleep  3

    run keyword and continue on failure  Category choice
    sleep  8
    go to profile
    sleep  3
    go to setting
    sleep  3
    go to Deactivate account
    sleep  8

loging with Apple ID
    go to profile
    sleep  3
    tap on register button
    sleep  2
    tap on Apple button
    tap on continue passcode
    sleep  3
    tap on 0
    tap on 0
    tap on 0
    tap on 0
    tap on 0
    tap on 0
    logout from profile



loging with email
    go to profile
    sleep  3
    tap on register button
    sleep  2
    tap on login button from splash screen
    sleep  3
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeTextField     malik.aakash@ilsainteractive.com
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeOther[3]/XCUIElementTypeSecureTextField     malik0313
    tap on login button from splash screen

############################ Login Detail Test Cases ##########################
steps for empty password screen
    go to profile
    tap on register button
    tap on login button from splash screen
    enter email and empty password
    verify enter email and empty password
steps for enter password and empty email
    enter password and empty email
    verify enter password and empty email
steps for incorect email and correct password
    incorect email and correct password
    verify incorect email and correct password
steps for minimum username character
    minimum username character
    verify minimum username character
steps for maximum username character
    maximum username character
    verify maximum username character
steps for minimum password character
    minimum password character
    verify minimum password character
steps for maximum password character
    maximum password character
    verify maximum password character
step for background app at login screen
    background app at login screen
steps for corect email and correct password without internet
    corect email and correct password without internet
#    internet on off
#    tap on login and logout button
#    verify corect email and correct password without internet

steps for corect email and correct password with internet
#    internet on off
#    sleep  5
    tap on login button from splash screen
    verify corect email and correct password with internet
stps for remember me details
    logout from profile
    go to profile
    tap on register button
    tap on login button from splash screen
    verify remember me check
steps for loging with google
    Tap on google button on login screen
    Tap on user email
check the google email is already have account or not
    sleep  10
    ${googlesignup}=    run keyword and return status  text should be visible  Enter Your User Details
    log to console  googlesignup==${googlesignup}=
    Run Keyword If    "${googlesignup}"=="True"    Signup with google
    Run Keyword If    "${googlesignup}"=="False"    logout from profile
#

############################ Login Detail Test Cases ##########################




############# Skip Sign Up #################
steps for skip sign up with categories for smoke test
    tap on skip sign up button
    select categories
    tap on Get Started Button

steps for skip sign up with categories
#    background app  -1
#    check iphone setting for wifi
    tap on skip sign up button
    sleep  5
    all categories name skip sign up
    select categoires skip sign up
    tap on Get Started Button
    Allow location button after skip sign up

################ Pin Sign Up #######################
Steps for SignUp with incomplete email
    sleep  3
    go to profile
    sleep  3

    run keyword and continue on failure  tap on register button
    sleep  3
    sleep  3
    run keyword and continue on failure  tap on email button
    sleep  5
    run keyword and continue on failure  incomplete email

Steps for SignUp with invalid phone
    run keyword and continue on failure  invalid phone number

Steps for SignUp with contry code phone number
    run keyword and continue on failure  contry code phone number
Steps for SignUp with already exist email
    run keyword and continue on failure  already exist email
Steps for SignUp without internet correct email and correct phone nummber
    run keyword and continue on failure  without internet correct email and correct phone nummber
Steps for SignUp with correct email and correct phone nummber
    run keyword and continue on failure  correct email and correct phone nummber
Steps for SignUp with invalid pin send
    run keyword and continue on failure  invalid pin send
Steps for SignUp without internet valid pin send
    run keyword and continue on failure  valid pin send without internet
Steps for SignUp with valid pin send
    run keyword and continue on failure  valid pin send

steps for pin signup with wrong name
    sleep  3
    enter wrong name via pin signup
    tap on proceed button
    verify wrong name via google signup
steps for pin signup with wrong username
    enter wrong username via pin signup
    tap on proceed button
    verify wrong username via google signup
steps for google signup with empty name via pin
    empty name filed and correct username via pin
    tap on proceed button
    verify empty name filed and correct username

steps for google signup with empty username via pin
    empty username filed and correct name via pin
    tap on proceed button
    verify empty username filed and correct name
steps for google signup with already axist username via pin
    already exist user name via pin
    tap on proceed button
    verify already exist user name
steps for google signup without internet via pin
    without internet correct name and correct username via pin
#    tap on proceed button
#    error banner
steps for google signup with correct username and name via pin
    correct name and correct username via pin
    tap on proceed button
# Password
steps for pin signup with less then 6 characters
    less then 6 characters password via pin
    tap on proceed button
    verify less then 6 characters password
steps for pin signup with greater then 25 characters password
    greater then 25 characters password via pin
    tap on proceed button
    verify greater then 25 characters password
steps for pin signup with wrong confirm password
    wrong confirm password via pin
    tap on proceed button
    verify wrong confirm password
steps for pin signup with without internet correct password
    without internet correct password via pin
#    tap on proceed button
#    error banner
steps for pin signup with correct password
    correct password via pin
    tap on proceed button
# DOB
steps for pin signup with days
    dob day via pin
    tap on proceed button
    verify dob day

steps for pin signup with invalid dob
    invalid dob via pin
    tap on proceed button
    verify invalid dob

steps for pin signup with correct dob
#    internet on off
    correct dob via pin
steps for pin signup with gender change dob
    gender change dob via pin
#    tap on proceed button
steps for pin signup without internet dob
    error banner
steps for pin signup with internet dob
#    internet on off
    sleep  5
    tap on proceed button
################ Pin Sign Up #######################

############# Skip Sign Up #################
go for google signup
    go to profile
    tap on register button
    tap on google button
    Tap on user email

steps for google signup with wrong name
    sleep  3
    enter wrong name via google signup
    tap on proceed button
    verify wrong name via google signup
steps for google signup with wrong username
    enter wrong username via google signup
    tap on proceed button
    verify wrong username via google signup
steps for google signup with empty name
    empty name filed and correct username
    tap on proceed button
    verify empty name filed and correct username

steps for google signup with empty username
    empty username filed and correct name
    tap on proceed button
    verify empty username filed and correct name
steps for google signup with already axist username
    already exist user name
    tap on proceed button
    verify already exist user name
steps for google signup without internet
    without internet correct name and correct username
#    tap on proceed button
#    error banner
steps for google signup with correct username and name
    correct name and correct username
    tap on proceed button

# Password
steps for google signup with less then 6 characters
    less then 6 characters password
    tap on proceed button
    verify less then 6 characters password
steps for google signup with greater then 25 characters password
    greater then 25 characters password
    tap on proceed button
    verify greater then 25 characters password
steps for google signup with wrong confirm password
    wrong confirm password
    tap on proceed button
    verify wrong confirm password
steps for google signup with without internet correct password
    without internet correct password
#    tap on proceed button
#    error banner
steps for google signup with correct password
    correct password
    tap on proceed button

# DOB
steps for google signup with days
    dob day
    tap on proceed button
    verify dob day

steps for google signup with invalid dob
    invalid dob
    tap on proceed button
    verify invalid dob

steps for google signup with correct dob
#    internet on off
    correct dob
steps for google signup with gender change dob
    gender change dob
#    tap on proceed button
steps for google signup without internet dob
    error banner
steps for google signup with internet dob
#    internet on off
    sleep  5
    tap on proceed button

#contact screen
steps for google signup with count the contact checkmark
    count the checkmark
steps for google signup with unselect the contact user
    unselect all the check mark
steps for google signup without internet skip
    without internet skip
steps for google signup with select the user individually
    select the user individually
steps for google signup with follow without internet
    follow without internet
steps for google signup follow with internet
    follow with internet

#Categories
steps for google signup with all categories name
    all categories name
steps for google signup with select categoires
    select categoires
steps for google signup without internet find people
    log to console  Find People
#    internet on off
#    click text  Find People
steps for google signup with internet find people
#    internet on off
    sleep  5
    click text  Find People

# Suggestion users
steps for google signup with count the contact checkmark for suggestion user
    count the checkmark for suggestion user
steps for google signup with unselect the contact user for suggestion user
    unselect all the check mark for suggestion user
steps for google signup without internet skip for suggestion user
    without internet skip for suggestion user
steps for google signup with select the user individually for suggestion user
    select the user individually for suggestion user
steps for google signup with follow without internet for suggestion user
    follow without internet for suggestion user
steps for google signup follow with internet for suggestion user
    follow with internet for suggestion user
steps for deactive users
    go to profile
    sleep  3
    go to setting
    sleep  3
    go to Deactivate account for sign up deatil
    sleep  8





steps for forgot password
    sleep  3
    go to profile
    sleep  3
    tap on register button
    sleep  3
    tap on login button
    sleep  3
    tap on forgot password
    sleep  3
    check the phone number field validation
    sleep  20
    # Enter PIN
    create new password validations
    sleep  5
    after change password click on login
    sleep  5
    right data for login check
    sleep  5
    logout from profile
steps for get username from profile

    go to profile
#    go to setting
#    tap on update username
#    tap on register button
#    sleep  3
#    tap on login button
#    sleep  3
#    right data for login check
#    sleep  5
    get the username form profile
#    tap on home button
steps for block the user
#    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeButton
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeButton[3]
#    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeButton
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeButton[3]
    sleep  5
    block the user
steps for search user in following list
    sleep  2
    steps for saerch following
steps for other user profile actions
    go to profile
    sleep  2
    go to saved box and get count before
    tap on following list
    run keyword and continue on failure  tap on 1st user in following list

#    run keyword and continue on failure  up and down loadmore request
#    sleep  2
    run keyword and continue on failure  view box
    sleep  2
    run keyword and continue on failure  open box and bookmark the box
verify saved box
    run keyword and continue on failure  go to saved box and verifiy the box name
steps for count the following users
    sleep  5
    tap on following list
    sleep  2
#    delete users which i follow
    sleep  15
    run keyword and continue on failure  following count
    run keyword and continue on failure  profile back button

steps for count the follower users
    sleep  5
    tap on follower list
    sleep  2
    run keyword and continue on failure  follower count
    run keyword and continue on failure  profile back button

steps for search and follow the users
    search and follow the users
steps for friends category
    sleep  3
    tap on home button
    sleep  3
    tap on friends button
    tap on follow button and check the status of follow button

steps for no play video
    for logout and loging for no video play
    no video play catch
steps for time match from post detail return
    for time check
steps for sound button check
    This is code for sound button
steps for internet should be off and on then appicatiuon in background and close then verify video
    internet should be off and on then appicatiuon in background and close then verify video
steps for open the profile and back to home then verify video
    open the profile and back to home then verify video
steps for open the tray and close the tray then verify video
    open the tray and close the tray then verify video
steps for open the tray and post a comment then verify video
    open the tray and post a comment then verify video
steps for play api post then verify video
    play api post then verify video
steps for saved api post then verify video
    saved api post then verify video
steps for removed api post then verify video
    removed api post then verify video


steps for long press functionality
    tap on home button
    tap on friends button
    log to console  Like Status
    like with longpress
    log to console  Comment Status
    Comment with longpress
    log to console  Report Status
    Long Press report post


steps for each category functionality
    run keyword and continue on failure  tap for each category

steps for invite people
    tap on invite people
    list of users from invite people
    suggestions friends
#    follow the one user from suggestion
#    follow the one user from contact
#    follow the one user from facebook



steps for home search
    tap on home button
    Home search on deifferent categories

steps for create different new post
    tap on home button
    log to console  This is simple camera photo
    Add a new post with camra photo
#    log to console  This is simple camera video
#    Add a new post with camra video
#    log to console  This is camera photo edit
#    Add a new edit post with camra photo
#    log to console  This is camera video edit
#    Add a new edit post with camra video
    log to console  This is gallery multipost
    Add a new multi post with gallery
#    log to console  This is API Places
#    Add a new post with Places API
#    log to console  This is API Music
#    Add a new post with Music API
#    log to console  This is API Book
#    Add a new post with Books API
    log to console  This is API Video
    Add a new post with Video API
    log to console  This is API Web
    Add a new post with Web API
    log to console  This is API Movies
    Add a new post with Movies/Series/TV Shows API

steps for post deep link
    tap on home button
    tap on people category
    post deep link copy
steps for box deep link
    box deep link copy
steps for profile deep link
    profile deep link copy
    after deep links


steps for 3D tap on post detail
    go to profile
    sleep  3
    get the username form profile
    open post detail and swip
    sleep  2
    Like the post and check like
    sleep  2
    Comment with longpress on post detail
    sleep  1
    Long press share via internal on post detail
    sleep  1
    Long Press edit post on post detail
    sleep  1
    Long Press Delete post on post detail


change setting
    go to profile
    go to setting

step for Edit Profile
    go to profile
    go to setting
    tap on edit profile
    edit profile


steps for change email
    tap on change email
    new email enter and tap on verify button
    verification code enter
    ok button

steps for update phone number
    tap on update phone number
    select country code
    put number for update and tap on save button
    verify code for phone number
    ok button

steps for change notification setting
    tap on notification setting
    change the notification setting

steps for change message setting
    tap on message setting
    change message setting
steps for blocked users checking
    tap on blocked users
    checked blocked users

steps for recommendations
    tap on recommendations
    input recommendation and tap on submit button

steps for privacy policy
    tap on privacy policy
    check page is loaded or not

steps for private account
    tap on private accout

steps for change language
#    go to profile
#    go to setting
    tap on app language
    change the app language
steps for clear search history
#    change setting
    tap on clear saerch history
    profile back button


steps for edit profile
#    go to profile
#    get the username form profile
#    tap on profile image
#    log to console  this is profile
    tap on view picture and close it
    tap on change profile picture
    tap on edit picture and edit picture
#    Scan QR Code for other user
    tap on save profile QR Code
    sleep  3
    scroll up  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView
#    Swipe Down for edit profile photo
    wait until element is visible  xpath=//XCUIElementTypeButton[@name="crossProfileDetail"]
#    click element  xpath=//XCUIElementTypeButton[@name="crossProfileDetail"]
#    click text  Save
    sleep  2
    click element  xpath=//XCUIElementTypeButton[@name="Save"]
    sleep  5
    click text     OK
    sleep   5
#    run keyword and continue on failure  text should be visible  Home
#    ${home_button}=     run keyword and return status  text should be visible  Home
#    run keyword if  '${home_button}'  ==  'False'     click element  xpath=//XCUIElementTypeButton[@name="crossProfileDetail"]

steps for search box
    search box on profile
steps for view box
    view serached box
steps for update box
    update box
steps for delete box
    delete box
steps for saerch following
    search user in following
steps for craete a box from profile
    go to profile
    create box on profile
steps for messages

    tap on messages
    search user in messages
    tap on user which you want
    send the message
open application to another device
    open applictaion on other devices and go to messages
send the message back to the users
    sleep  3
    tap on messages
#    search user in messages on another devices
    tap on user which you want on ther device
    send the message


message push notification handling
    sleep  3
    put it into background for notification
    switch to appium 1
    send the message
    switch to appium 2
    run keyword and continue on failure  click on push notification
    sleep  5
    put it into background for notification
Follow push notification handling
    switch to appium 1
    tap on profile from messages
    tap on follow button on profile message
    switch to appium 2
    click on push notification
    sleep  3
Like push notification handling
#    go to profile
#    go to setting
#    swipe up for setting
#    tap on private accout
##    tap on private accout
##    sleep  5
#    put it into background for notification
    switch to appium 1
#    tap on messages
#    tap on user which you want
    go to user profile for like and comment notification
#    swipe_down_for_other_profile
#    tap on post
#    tap on post detail like button
#    wait until element is visible  id=iv_post_like
#    click element  id=iv_post_like
    switch to appium 2
    click on push notification

comment push notification handling
    sleep  5
    put it into background for notification
    switch to appium 1
#    tap on comment in post detail
    sleep  5
    long press  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]/XCUIElementTypeOther
    wait until element is visible  accessibility_id=Comment
    click element  accessibility_id=Comment
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView    @maliko
    click element  xpath=//XCUIElementTypeButton[@name="ok icn"]
#    post a comment
#    send the comnment
#    hide keyboard
    switch to appium 2
    click on push notification
delete the conversaion
    sleep  5
    put it into background for notification
    switch to appium 1
    click element  accessibility_id=BackIcon
    sleep  1
    click element  accessibility_id=BackIcon
    delete conversation

Tag push notification handling
    Add a new edit post with camra photo
    switch to appium 2
    click on push notification

Mention push notification handling
    sleep  5
    put it into background for notification
    sleep  5
    switch to appium 1
    tap on friends button
    wait until element is visible   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
    long press   xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView[2]/XCUIElementTypeCell[1]
    wait until element is visible  accessibility_id=Comment
    click element  accessibility_id=Comment
    click element  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView
    wait until element is visible  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView
    input text  xpath=//XCUIElementTypeApplication[@name="Fayvo"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeTextView    @maliko
    click element  xpath=//XCUIElementTypeButton[@name="ok icn"]

    switch to appium 2
    click on push notification

    switch to appium 1


step for in application push notification for like
    in application push notification for like
step for in application push notification for comment
    in application push notification for comment
step for in application push notification for messages
    in application push notification for messages
step for in application push notification for mention
    in application push notification for mention


put it into background for notification
    background app  -1
    swipe_down_for_notifications

#    search user in other device messages
#    tap on user which you want on ther device
#    conversaion between two users

steps for press volume button
    press volume button for test case


############################## New Guest Mode ###############################
steps for view user profile on guest mode
    view user profile on guest mode
steps for view user box on guest mode
    view user box on guest mode
steps for view user post on guest mode
    view user post on guest mode
steps for post tag user on guest mode
    post tag count on guest mode
steps for longpress send message
    longpress send message
steps for like user post on guest mode
    like user post on guest mode
steps for comment user post on guest mode
    comment user post on guest mode
steps for user report on guest mode
    user report on guest mode
steps for user block on guest mode
    user block on guest mode
############################## NEw Guest Mode ###############################




step for expression verification
    expression are showing
steps for guest mode expression verification
    guest mode expression verification
steps for expression save couunt and undo save
    expression save and count should be increase and undo save
steps for expression save without internet and count should be increase
    expression save without internet and count should be increase
steps for double tab like post
    Double tab like post
steps for verify expression in list
    verify expression in list
steps for undo the expression
    undo the expression
steps for expression made by user from anywhere in the application
    expression made by user from anywhere in the application
steps for change expression
    change expression


steps for discard story
    Discard story check
steps for create text story
    create text story
steps for create media story
    create media story
steps for create media video story
    create media video story
steps for create media multi story
    create media multi story
steps for create checkin story
    create checkin story
steps for number of stories
    number of stories
steps for seen and unseen story
    seen and unseen story
steps for count the viewers
    count the viewers
steps for delete my story
    delete my story
steps for count sub stories
    count sub stories
steps for report story background app
    report story background app
steps for profile story verification
    go to profile
    profile story verification
steps for music API story
    Music API story
steps for book API story
    Books API story
steps for videos API story
    videos API story
steps for web API story
    web API story
steps for games API story
    Games API story
steps for movie API story
    Movie API story
steps for shift the story to next user
    shift the story to next user
steps for other user profile around story
    other user profile around story
steps for check my story should be on first
    check my story should be on first

steps for long press add new story
    long press add new story
steps for don't allow location
    don't allow location
steps for update story from other user
    update story from other user
steps for delete update
    delete update

############## With out internet Stories ################
steps for open story and trun off the internet
    open story and trun off the internet
steps for open story without internet for cached story
    open story without internet for cached story
steps for open story without internet
    open story without internet
############## With out internet Stories ################

################### Follow & UnFollowing User ######################
steps for unfollow user then verify story
    unfollow user then verify story
steps for follow user then verify story
    follow user then verify story
################### Follow & UnFollowing User ######################

steps for user swipe his story and add new story
    user swipe his story and add new story


##################################### Around You #######################################
check the the transition screen
    sleep  2
    check next button for transaction screen

check the the first transition screen
    sleep  2
    verify the next button
check the the second transition screen
    verify the I am in the zone, Lets rock button
check the the third transition screen
    verify the Lets Share Favs button

delete the message from goup chat
    lon press on message
    tap on delete button

join the talk
    tap on join talk

steps for group detail
    tap on group image
steps for group user count
    group user count
open the option
    tap on option button
leave the group
    tap on leave group
    tap on ok button
report the group
    tap on report group
    report reason sheet
    select any option
    tap on report group
other zone activities
    tap on other zone
    count other zones
user count before join chat
    before join count
user count after join chat
    after join count
##################################### Around You #######################################


############################################# Save box from post Test Cases #####################################
steps for Save post from box
    go to profile
#    create box for save post
    search box for save post
    view serached box save post from box
    tap on add post
    Save music post from box
    tap on add post
    Save movies post from box
############################################# Save box from post Test Cases #####################################

############################################# Fetch Post Test Cases #####################################
steps for verify post time
    get the post time at feed

steps for post from the second device
    Open the fayvo second application
    create the post from second device for post time
verify the post time after append the post
#    switch to appium 1
#    sleep  5
    go to profile
    tap on home button
    tap on friends button
    Swipe_down_for_friends_category
    sleep  5
    get the post time at feed
steps for get total post count
    get total post count
steps for get the category list
#    get all the categry list
    tap for each category




steps for For You Banner verify without internet
    check iphone setting for wifi
    For You Banner verify without internet

steps for For You Banner verify after connected internet
    check iphone setting for wifi
    sleep  3
    For You Banner verify

steps to get the count of suggestion users
    get the count of suggestion users
steps to get the name of sections
    see all one by one


