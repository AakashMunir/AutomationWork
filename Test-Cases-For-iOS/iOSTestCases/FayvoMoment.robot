*** Settings ***
Library  AppiumLibrary
Resource  ../iOSTestCasesResources/iOSSmokeTestCaseResources.robot
Resource  ../iOSCommonXpathsOrIDs/iOSSmokeTestCaseXpathsOrIDs.robot


*** Test Cases ***

Test Case For Open The Fayvo
    Steps for open fayvo application

###################### Done ###########################
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

Test Case For Create Media Story From Gallary
    steps for create media multi story

Test Case For Number Of Stories
    steps for number of stories

Test Case For Delete My Story
    steps for delete my story

Test Case For Seen and Unseen Story
    steps for seen and unseen story

Test Case For Count Sub Stories
    steps for count sub stories

Test Case For Report Story Background App
    steps for report story background app

Test Case For Open The User Profile From Story Detail
    steps for open the user profile from story detail

Test Case For My Story Showning ON First
    steps for check my story should be on first

Test Case For Follow The New User and Its Story Showing On Home
    steps for follow the new user and its story showing on home




###################### Done ###########################






################# Not Now ##############

################# Not Now ##############

########### Not Yet Implement ###################
#Test Case For Create Checkin Story
#    steps for create Checkin story
########### Not Yet Implement ###################

############ Not Yet Implement ###################
#Test Case For Count The Viewers
#    steps for count the viewers
############ Not Yet Implement ###################
#
#
#

################ Not Yet #######################
#Test Case For Shift The Story To Next User
#    steps for shift the story to next user
################ Not Yet #######################
########### Not Yet Implement ###################
#Test Case For Other User Profile Around Story
#    steps for other user profile around story
########### Not Yet Implement ###################



################ Not Yet #######################
#Test Case For Long Press Add New Story
#    steps for long press add new story

#Test Case For Don't Allow Location
#    steps for don't allow location
################ Not Yet #######################


#Test Case For Update Story From Other User
#    steps for update story from other user

#Test Case For Delete Update
#    steps for delete update


############## With out internet Stories ################
Test Case For Create Story when The Internet Off
#     steps for create media story
#     Swipe_down_for_friends_category
#     Swipe_down_for_friends_category
#     Swipe_down_for_friends_category
     tap on your story
#     long press for story stay
     Verify Uploading Failed
     tap on retry story option button
     loading status on storty
     tap on delete story option



Test Case For Check The Loader Button
    steps for check the loader button

Test Case For Open Story and Trun Off The Internet
    steps for open story and trun off the internet
Test Case For Open Story Without Internet For Cached Story
    steps for open story without internet for cached story
Test Case For Open Story Without Internet
    steps for open story without internet
############### With out internet Stories ################

#################### Follow & UnFollowing User ######################
#Test Case For Unfollow User Then Verify Story
#    steps for unfollow user then verify story
#Test Case For Follow User Then Verify Story
#    steps for follow user then verify story
#################### Follow & UnFollowing User ######################

#Test Case For User Swipe His Story and Add New Story
#    steps for user swipe his story and add new story
