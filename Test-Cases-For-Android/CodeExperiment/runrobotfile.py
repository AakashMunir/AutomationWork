import robot

logFile = open('mylog.txt', 'w')
robot.run("topsearch.robot", stdout=logFile)
# robot.run("topsearch.robot")
