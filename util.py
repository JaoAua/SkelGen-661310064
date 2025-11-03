import maya.cmds as cmds
import maya.mel as mel 

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

        select = ['R_clavicle_CC_grp', 'R_hip_CC_grp', 'R_eye_CC_grp']
        cmds.select(select, visible=True )
        # cmds.select( 'R_hip_CC_grp', visible=True )
        # cmds.select( 'R_eye_CC_grp', visible=True )
        
        mel.eval('searchReplaceNames "L_" "R_" "hierarchy";')

    def connectJointAndCurveControl(self):
        cmds.parentConstraint('R_clavicle_CC', 'R_shoulder_jnt', maintainOffset=True)
        cmds.parentConstraint('R_wrist_CC', 'R_wrist_jnt', maintainOffset=True)
        cmds.parentConstraint('R_hip_CC', 'R_hip_jnt', maintainOffset=True)
        cmds.parentConstraint('R_eye_CC', 'R_eyeball_jnt', maintainOffset=True)
        