#RandomRectangles.py
import maya.cmds as cmds
import random

random.seed( 12 )
'''
few lines of comment
are written
in this section
'''
cubeList = cmds.ls( 'theCube*')
if len(cubeList) >0:
    cmds.delete( cubeList )

result = cmds.polyCube ( w = 1, h= 1, d = 1, name= 'theCube#')

print 'result: ' + str(result)

transformName = result[0]

instanceGroupName = cmds.group(empty = True, name= transformName + '_instance_grp#')

for i in range (0, 25):
    instanceResult = cmds.instance( transformName, name=transformName + '_instance#')
    cmds.parent (instanceResult, instanceGroupName)
    #print 'instanceResult: '+ str( instanceResult )
    x = random.uniform(0, 10)
    y = random.uniform(0, 10)
    z = random.uniform(0, 10)
    cmds.move(x, y, z, instanceResult )
    xRot = random.uniform( 0, 360 )
    yRot = random.uniform( 0, 360 )
    zRot = random.uniform( 0, 360 )
    cmds.rotate(xRot, yRot, zRot, instanceResult)
    xscale = random.uniform (0.7, 1)
    yscale = random.uniform (0.7, 1)
    zscale = random.uniform (0.7, 1)
    cmds.scale(xscale,yscale,zscale,instanceResult)

cmds.hide (transformName)
#cmds.delete(transformName)

cmds.xform(instanceGroupName, centerPivots=True )