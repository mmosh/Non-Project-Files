#RandomRectangles.py
import maya.cmds as cmds
import random

random.seed( 1234 )
'''
few lines of comment
are written
in this section
'''
cubeList = cmds.ls( 'theCube*')
if len(cubeList) >0:
    cmds.delete( cubeList )

result = cmds.polyCube ( w = 10, h= 5, d = 15, name= 'theCube#')

print 'result: ' + str(result)

transformName = result[0]

instanceGroupName = cmds.group(empty = True, name= transformName + '_instance_grp#')

for i in range (0, 5):
    instanceResult = cmds.instance( transformName, name=transformName + '_instance#')
    cmds.parent (instanceResult, instanceGroupName)
    #print 'instanceResult: '+ str( instanceResult )
    x = random.uniform(-10, 10)
    cmds.move(x, 6+ i*6, 0, instanceResult )
    xRot = random.uniform( 0, 360 )
    cmds.rotate(xRot, 0, 0, instanceResult)
    yscale = random.uniform (0.2, 1)
    cmds.scale(1,yscale,1,instanceResult)

cmds.hide (transformName)
#cmds.delete(transformName)

cmds.xform(instanceGroupName, centerPivots=True )