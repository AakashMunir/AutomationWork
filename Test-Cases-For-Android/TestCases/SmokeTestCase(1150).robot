*** Settings ***
Library  AppiumLibrary
Resource  ../TestCasesResources/SmokeTestCaseResources.robot
Resource  ../CommonXpathsOrIDs/SmokeTestCaseXpathsOrIDs.robot



*** Test Cases ***
TestCaseForOpenTheFayvo
    Open the Fayvo application for smoke
#    Steps for open fayvo application

Test Cases For Skip Sign Up
    steps for skip sign up with categories for smoke test
#Test Case For SignUp with new Email
#    Steps for sign up with new email
Test Case For Login With Email
    Steps for login with email
Test Case For Get Username From Profile
    steps for get username from profile
Test Case For Search and Follow The Users And Perfom Some Actions
    search follow like comment and shre post
Test Case For Friends Category Refresh Call
    steps for friends category

#Test Case For DeepLink Post
#    steps for post deep link
#Test Case For Share Box On Browser
#    steps for box deep link
#Test Case For Share Profile On Browser
#    steps for profile deep link


Test Case For Verify The Group Chat Banner
    tap on home button
    tap on friends button
    verify the arround you
    Pull to refresh at home sreen
Test Case For User Count Before Join Chat
    user count before join chat
Test Case For Join The Talk
    tap on join chat
Test Case For Transition Screen
    check the the transition screen
Test Case For User Count After Join Chat
    user count after join chat
#Test Case For Send The Message
#    send the message for arround you
#Test Case For Groupchat Scroll
#    Scroll the group chat and verify chat and scroll button
#Test Case For Open The User Profile
#    open the user profile
#Test Case For Delete Message
#    delete the message from goup chat
Test Case For Group Option verification
    open the option
    verify option sheet
Test Case For Report Groupe
    open the option
    report the group
Test case For Group Chat Detail
    group user count external
    steps for group detail
    verify group detail screen
Test Case For Group User Count
    steps for group user count
Test Case For Leave Group
    leave the group
Test Case For Other Zone
    other zone activities


Test Case For Empty My Story
    steps for check empty my story
Test Case For Discard Story
    steps for discard story
Test Case For Create Text Story
    steps for create text story
Test Case For Create Media Story
    steps for create media story
Test Case For Create Media video Story
    steps for create media video story
Test Case For Create Story From Gallery
    steps for create media multi story
Test Case For Count Sub Stories
    steps for count sub stories
Test Case For Number Of Stories
    steps for number of stories
Test Case For Report Story Background App
    steps for report story background app
Test Case For My Story Showing ON First
    steps for check my story should be on first
Test Case For Delete My Story
    steps for delete my story
Test Case For Count the Vewier
    steps for count the viewers
Test Case For Profile Story Verification
    steps for profile story verification


Test Case For Create Posts
    steps for create different new post
Test Case For Invite People
    steps for invite people
Test Case For Block the User
    steps for block the user
Test Case For Before The Bookmark Box and Post Count
    before bookmark box and post count verify
Test Case For Perform Different Actions On Other user Profile
    steps for other user profile actions
Test Case For Verify The Saved Box and Post
    After bookmark box and post count verify
Test Case For LongPress Functionality for Feed
    steps for long press functionality
Test Case For For You Category
    report post, scroll posts and save post for you and get the category names
Test Case For 3D tap actions on post detail
    steps for 3D tap on post detail


Test Case For Edit Profile In Setting
    step for Edit Profile
Test Case For Edit Profile In Profile
    tap on profile details from setting
    steps for edit profile
Test Case For Notification Setting
    steps for change notification setting
Test Case For Message Setting
    steps for change message setting
Test Case For Blocked Users
    steps for blocked users checking
Test Case For Recommendations
    steps for recommendations
Test Case For Privacy Policy
    steps for privacy policy
Test Case For Private Account
    steps for private account
Test Case For Change App Language
    steps for change language
Test Case For Clear Search History
    steps for clear search history
TestCaseForCreateaBox
    steps for craete a box from profile
TestCaseForSearchBox
    steps for search box
TestCaseForViewBox
    steps for view box
Test Case For Update Box
    steps for update box
Test Case For Delete Box
    steps for delete box





Test Case For Logout From Profile
    go to profile
    logout from profile
Test Case For Check The Login Card On Friends Category
    friends category login card check
Test Case For Login Card Verify on Invite People
    login card verify on invite people
Test Case For Login Card Verify on Profile Page
    profile register button verify
Test Case For Login Card Verify on Notification Page
    Notification page register button verify
Test Case For Login Card Verify on Messages Page
    messages page register button verify
Test Case For Home Search On Guest Mode
    steps for home search
Test Case For View User Profile On Guest Mode
    steps for view user profile on guest mode
Test Case For View User Box On Guest Mode
    steps for view user box on guest mode
Test Case For Guest Mode Expression Verification
    steps for guest mode expression verification
Test case For View User post On Guest Mode
    steps for view user post on guest mode
Test case For Post Tag User On Guest Mode
    steps for post tag user on guest mode
Test Case For Longpress Send Message
    steps for longpress send message
Test case For Like User post On Guest Mode
    steps for like user post on guest mode
Test case For Comment User post On Guest Mode
    steps for comment user post on guest mode
Test Case For User Block On Guest Mode
    steps for user block on guest mode







