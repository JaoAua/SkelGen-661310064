import maya.cmds as cmds

class MirrorSelection:
    def __init__(self):
        self.jointName = cmds.ls("L_*", type="joint")
        self.curveControl = cmds.ls("L_*", type="transform")

    def isExists(self):
        jointName = bool(self.jointName) and all(cmds.objExists(j) for j in self.jointName)
        curveControl = bool(self.curveControl) and all(cmds.objExists(j) for j in self.curveControl)
        return jointName or curveControl

    def mirrorJoint(self):
        if not self.isExists():
            cmds.warning("Left Joint is not Exists.")
            return
        else:
            cmds.mirrorJoint('L_clavicle_jnt', mirrorYZ=True,mirrorBehavior=True,searchReplace=('L_', 'R_') )
            cmds.mirrorJoint('L_hip_jnt', mirrorYZ=True,mirrorBehavior=True,searchReplace=('L_', 'R_') )
            cmds.mirrorJoint('L_eyeball_jnt', mirrorYZ=True,mirrorBehavior=True,searchReplace=('L_', 'R_') )
            
    def mirrorCurveControl(self):
        if not self.isExists():
            cmds.warning("Left Curve Control is not Exists.")

        curveControlGroups = ['L_eye_CC_grp', 'L_clavicle_CC_grp', 'L_hip_CC_grp']

        for i in curveControlGroups:
            translate = cmds.xform(i, query=True, translation=True, worldSpace=True)

            new_NameCC_grp = i.replace("L_","R_")

            cmds.duplicate(i, name=new_NameCC_grp)

            x, y, z = translate
            cmds.xform(new_NameCC_grp, t=[-x, y, z], worldSpace=True)

        cmds.setAttr ('R_clavicle_CC_grp.scaleX', -1)


    def connectJointAndCurveControl(self):
        cmds.parentConstraint('L_clavicle_CC', 'R_shoulder_jnt', maintainOffset=True)
        cmds.parentConstraint('L_wrist_CC', 'R_wrist_jnt', maintainOffset=True)



# class CurveControlCreate(MirrorSelection):
#   def __init__(self, curveShape):
#       self.curveShape = curveShape

#       self.curveCmds = {'mainCC' : 'curve -d 1 -p -2 0 -1 -p -2 0 -5 -p -4 0 -5 -p 0 0 -9 -p 4 0 -5 -p 2 0 -5 -p 2 0 -1 -p 6 0 -1 -p 6 0 -3 -p 11 0 1 -p 6 0 5 -p 6 0 3 -p 2 0 3 -p 2 0 7 -p 4 0 7 -p 0 0 11 -p -4 0 7 -p -2 0 7 -p -2 0 3 -p -6 0 3 -p -6 0 5 -p -10 0 1 -p -6 0 -3 -p -6 0 -1 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -k 16 -k 17 -k 18 -k 19 -k 20 -k 21 -k 22 -k 23'}

#       if self.curveCmds.get(self.curveShape):
#           cmds.eval(self.curveCmds[self.curveShape])