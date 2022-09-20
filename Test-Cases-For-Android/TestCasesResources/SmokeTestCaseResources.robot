*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  BuiltIn
Library  String
Library  DateTime
Resource  ../CommonXpathsOrIDs/SmokeTestCaseXpathsOrIDs.robot
Library    ExcelLibrary
Resource  ../ExcelPath/SmokeTestCaseExcelPath.robot


*** Variables ***
${file_path}        ./ExcelFiles/TestCaseForSmoke.xlsx


*** Keywords ***



Steps for open fayvo application
    Open the Fayvo application
Steps for open fayvo application skip sign up
    Open the Fayvo application skip signup
Steps for login with email

    go to profile
    sleep  3
    tap on register button
    sleep  2
    tap on login button from splash screen
    sleep  3
#    Arabic Chater for login check
#    sleep  3
#    spacial chater for login check
#    sleep  2
#    wrong data for login check
#    sleep  2
    right data for login check
#    sleep  2
#    go to profile
#    sleep  3
#
#    go to setting
#    sleep  3
#    tap on login and logout button
#    sleep  3
#    ok button
#    sleep  2
    sleep  3


Steps for Sign up or login with facebook
    sleep  3
    go to profile
    sleep  3

    run keyword and continue on failure  tap on register button
    sleep  3

    run keyword and continue on failure  tap on facebook button
#    sleep  20
    go to setting
    tap on login and logout button
    ok button




Steps for login with Google link
    sleep  3
    go to profile
    sleep  3
    Run Keyword And Return Status    Element Should Be Visible   id=tv_register

    run keyword and continue on failure  tap on register button
    sleep  3

    run keyword and continue on failure  tap on google button
    sleep  10

    run keyword and continue on failure  tap on user email
    sleep  15
    check the gmail id is new

#    go to setting
#    sleep  5
#    tap on login and logout button
#    sleep  3
#    ok button
#    sleep  2


Steps for sign up with new email
    sleep  3
    go to profile
    sleep  3

    run keyword and continue on failure  tap on register button
    sleep  3
    sleep  3
    run keyword and continue on failure  tap on email button
    sleep  5

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
#    go to profile
#    sleep  3
    go to setting
    sleep  5
    go to Deactivate account




############################ Login Detail Test Cases ##########################
steps for empty password screen
    go to profile
    tap on register button
    tap on login button
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
    set network connection status  0
    tap on login and logout button
    verify corect email and correct password without internet

steps for corect email and correct password with internet
    set network connection status  2
    sleep  5
    tap on login and logout button
    verify corect email and correct password with internet
stps for remember me details
    logout from profile
    go to profile
    tap on register button
    tap on login button
    verify remember me check
steps for loging with google
    Tap on Google button on login screen
    Tap on perticular email button
check the email for new account or loging
    sleep  10
    ${googlesignup}=    run keyword and return status  text should be visible  Enter Your User Details
    log to console  googlesignup==${googlesignup}==
    Run Keyword If    "${googlesignup}"=="True"    sgin up with google
    Run Keyword If    "${googlesignup}"=="False"    logout from profile
sgin up with google
    run keyword and continue on failure  enter name and username
    sleep  5

    run keyword and continue on failure  create new password
    sleep  5

    run keyword and continue on failure  date of birth and gender
    sleep  3

    run keyword and continue on failure  Category choice
    sleep  8
#    go to profile
#    sleep  3
    go to setting
    sleep  5
    go to Deactivate account


############################ Login Detail Test Cases ##########################

############# Skip Sign Up #################
steps for skip sign up with categories for smoke test
    tap on skip sign up button
    select categories
    tap on Get Started Button
steps for skip sign up with categories

#    set network connection status  0
    tap on skip sign up button
#    error banner
#    set network connection status  2
#    tap on skip sign up button
    sleep  5
    all categories name skip sign up
    select categoires skip sign up
    set network connection status  0
    tap on Get Started Button
    error banner
    set network connection status  2
    sleep  3
    tap on Get Started Button
#    Allow location button after skip sign up




############# Skip Sign Up #################
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

go for google signup
    go to profile
    tap on register button
    tap on google button
    Tap on user email

steps for google signup with wrong name
    sleep  3
    enter wrong name via google signup
    tap on login and logout button
    verify wrong name via google signup
steps for google signup with wrong username
    enter wrong username via google signup
    tap on login and logout button
    verify wrong username via google signup
steps for google signup with empty name
    empty name filed and correct username
    tap on login and logout button
    verify empty name filed and correct username

steps for google signup with empty username
    empty username filed and correct name
    tap on login and logout button
    verify empty username filed and correct name
steps for google signup with already axist username
    already exist user name
    tap on login and logout button
    verify already exist user name
steps for google signup without internet
    without internet correct name and correct username
    tap on login and logout button
    error banner
steps for google signup with correct username and name
    correct name and correct username
    tap on login and logout button


steps for google signup with less then 6 characters
    less then 6 characters password
    tap on login and logout button
    verify less then 6 characters password
steps for google signup with greater then 25 characters password
    greater then 25 characters password
    tap on login and logout button
    verify greater then 25 characters password
steps for google signup with wrong confirm password
    wrong confirm password
    tap on login and logout button
    verify wrong confirm password
steps for google signup with without internet correct password
    without internet correct password
    tap on login and logout button
    error banner
steps for google signup with correct password
    correct password
    tap on login and logout button

# DOB
steps for google signup with days
    dob day
    tap on login and logout button
    verify dob day

steps for google signup with invalid dob
    invalid dob
    tap on login and logout button
    verify invalid dob

steps for google signup with correct dob
    set network connection status  0
    correct dob
steps for google signup with gender change dob
    gender change dob
    tap on login and logout button
steps for google signup without internet dob
    error banner
steps for google signup with internet dob
    set network connection status  2
    sleep  5
    tap on login and logout button

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
    set network connection status  0
    tap on login and logout button
steps for google signup with internet find people
    set network connection status  2
    sleep  5
    tap on login and logout button

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
    sleep  5
    go to profile
    sleep  3
#    tap on register button
#    sleep  3
#    tap on login button
#    sleep  3
#    right data for login check
#    sleep  5
    get the username form profile
#    tap on home button
steps for block the user
    block the user
steps for search user in following list
    sleep  2
    steps for saerch following
steps for other user profile actions
    go to profile
    sleep  5
    tap on following list
    sleep  3
    run keyword and continue on failure  tap on 1st user in following list
#    run keyword and continue on failure  up and down loadmore request
    sleep  2
    run keyword and continue on failure  view all boxes
    sleep  2
    run keyword and continue on failure  open box and bookmark the box
#    run keyword and continue on failure  count the following of other users
before bookmark box and post count verify
    run keyword and continue on failure  before bookmark box and post
After bookmark box and post count verify
    run keyword and continue on failure  After bookmark box and post

steps for count the following users
    tap on following list
    sleep  2
    run keyword and continue on failure  following count
    run keyword and continue on failure  profile back button
    go back

steps for friends category
    tap on home button
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
    like with longpress
    Comment with longpress
    Long Press report post
    Long press share via internal

steps for post deep link
    tap on home button
    tap on people category
    post deep link copy


steps for box deep link
    tap on home button
    tap on people category
    box deep link copy



steps for profile deep link
    tap on home button
    tap on people category
    profile deep link copy







steps for each category functionality
    run keyword and continue on failure  tap for each category

steps for invite people
    tap on invite people
    list of users from invite people
    suggestions friends
#    follow the one user from suggestion
    follow the one user from contact
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
    log to console  This is camera photo edit
    Add a new edit post with camra photo
    log to console  This is gallery multipost
    Add a new multi post with gallery
    log to console  This is API Places
    Add a new post with Places API
    log to console  This is API Music
    Add a new post with Music API
    log to console  This is API Book
    Add a new post with Books API
    log to console  This is API Video
    Add a new post with Video API
    log to console  This is API Web
    Add a new post with Web API
    log to console  This is API Movies
    Add a new post with Movies/Series/TV Shows API

Quick suggestion post create
    log to console  This is API Music Quick Suggestion Post
    music quick suggestion while post
#    log to console  This is API Movies Quick Suggestion Post
#    Movie quick suggestion while post


steps for 3D tap on post detail
    go to profile
    sleep  3
    get the username form profile
    open post detail and swip
    sleep  2
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
    sleep  10
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
#    change setting
    tap on privacy policy
    check page is loaded or not

steps for private account
    tap on private accout

steps for change language
    tap on app language
    change the app language
steps for clear search history
    change setting
    tap on clear saerch history
    sleep  2
    go back

steps for edit profile
#    go to profile
#    get the username form profile
#    tap on profile image
#    log to console  this is profile
    tap on view picture and close it
    tap on change profile picture
    tap on edit picture and edit picture
    tap on save profile QR Code
#    tap on scan code and verify from gallery

    save the profile photo
#    go back

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
#    send the message
open application to another device
    open applictaion on other devices and go to messages
send the message back to the users
    sleep  3
    tap on messages
    search user in messages on another devices
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
#    tap on follow button on profile message
#    switch to appium 2
#    click on push notification
    sleep  3
Like push notification handling
#    go to profile
#    go to setting
#    swipe up for setting
#    tap on private accout
#    sleep  5
#    put it into background for notification
#    switch to appium 1
#    log to console  this is shift
#    swipe_down_for_other_profile
#    sleep  2
    Swipe_up_for_other_profile
#    click element  id=title_tv
#    tap on post
#    tap on post detail like button
    sleep  5
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]
    click element  id=postCellMain
    sleep  3
    long press   id=post_img
    sleep  2
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Like']
    sleep  2
    wait until element is visible  id=iv_post_like
    click element  id=iv_post_like
    switch to appium 2
    click on push notification

comment push notification handling
    sleep  5
    put it into background for notification
    switch to appium 1
#    tap on comment in post detail
    long press   id=post_img
    sleep  2
#    click element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]
    click element  xpath=//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.widget.TextView[@text='Comment']
    sleep  3
#    input text  id=leaveComment    ${Comment}
    input text  id=et_comment    ${Comment}
    click element  id=send_icon
    sleep  3
    switch to appium 2
    click on push notification
delete the conversaion
    sleep  5
    put it into background for notification
    switch to appium 1
    go back
    sleep  2
    go back
    sleep  2
    go back
    sleep  2
    go back
    sleep  2
    tap on back batton
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
    go to profile
    tap on following list
    tap on 2nd user on following list
    Swipe_up_for_other_profile
    sleep  5
    click element  id=postCellMain
    sleep  3
    wait until element is visible  id=tv_comment
    click element  id=tv_comment
    wait until element is visible  id=et_comment
    input text  id=et_comment      @maliko
    send the comnment
    switch to appium 2
    click on push notification
    sleep  5
    go back
    go back
    go back
    switch to appium 1
    repeat keyword  6 times     go back


step for in application like push notification
    in application push notification for like
step for in application comment push notification
    in application push notification for comment
step for in application messages push notification
    in application push notification for messages
step for in application mention push notification
    in application push notification for mention


put it into background for notification
    background app  -1
    swipe_down_for_notifications

#    search user in other device messages
#    tap on user which you want on ther device
#    conversaion between two users


steps for press volume button
    press volume button
################################## Expression ###############################
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

################################## Expression ###############################

#################################### Fayvo Moments ##########################

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

steps for count the viewers
    count the viewers
steps for delete my story
    delete my story
steps for count sub stories
    count sub stories
steps for profile story verification
    go to profile
    profile story verification
steps for report story background app
    report story background app
steps for shift the story to next user
    shift the story to next user
steps for other user profile around story
    other user profile around story
steps for check my story should be on first
    check my story should be on first
steps for check empty my story
    tap on home button
    tap on friends button
    check empty my story
steps for long press add new story
    long press add new story
steps for don't allow location
    don't allow location
steps for follow the new user and its story showing on home
    follow the new user and its story showing on home
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
steps for open the user profile from story detail
    open the user profile from story detail



#################################### Fayvo Moments ##########################


############################## NEw Guest Mode ###############################
steps for view user profile on guest mode
    view user profile on guest mode
steps for view user box on guest mode
    view user box on guest mode
steps for view user post on guest mode
    view user post on guest mode
steps for longpress send message
    longpress send message
steps for like user post on guest mode
    like user post on guest mode
steps for comment user post on guest mode
    comment user post on guest mode
steps for post tag user on guest mode
    post tag count on guest mode
steps for user report on guest mode
    user report on guest mode
steps for user block on guest mode
    user block on guest mode
############################## NEw Guest Mode ###############################



##################################### Around You #######################################


check the the transition screen
    sleep  2
    check next button for transaction screen
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
    sleep  2
    click text  YES
report the group
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
    create box for save post
    search box for save post
    view serached box
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
    sleep  5
    get the post time at feed
steps for get total post count
    get total post count
steps for get the category list
#    get all the categry list
    tap for each category




steps for For You Banner verify without internet
    set network connection status  0
    close all applications
    open the fayvo application
    For You Banner verify without internet

steps for For You Banner verify after connected internet
    set network connection status  2
    sleep  3
    For You Banner verify

steps to get the count of suggestion users
    get the count of suggestion users
steps to get the name of sections
    see all one by one