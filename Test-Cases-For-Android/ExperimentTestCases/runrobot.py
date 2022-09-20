# from subprocess import call
# import os
# # call([‘robot ‘+os.getcwd()+‘\\aaa.robot’])
#
#
# call([‘C:/Python27/python.exe’, ‘-m’, ‘robot’, ‘D:/aaa/test/aaa.robot’])
# call([‘C:/Python27/Scripts/robot.bat’, ‘D:/aaa/test/aaa.robot’])


import robot

logFile = open('mylog.txt', 'w')
# robot.run("stringappend.robot", stdout=logFile)
robot.run("topsearch.robot", stdout=logFile)



