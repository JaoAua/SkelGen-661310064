import maya.cmds as cmds


class MirrorSelection:
	def __init__(self):
		self.jointName = cmds.ls("L_*", type="joint")
		self.curveControl = cmds.ls("L_*", type="transform")

	def isExists(self):
		cmds.objExists(self.jointName)
		cmds.objExists(self.curveControl)
		return bool(self.jointName) and all(cmds.objExists(j) for j in self.jointName)

	def mirrorJoint(self):
		if not self.isExists:
			cmds.warning("Left Joint is not Exists.")
			return
		else:
			for jnt in self.jointName:
				pos = cmds.xform(jnt, q=True, ws=True, t=True)
				cmds.mirrorJoint(mirrorXY=True,mirrorBehavior=True,searchReplace=('L_', 'R_') )


	def mirrorCurveControl(self):
		if not self.isExists():
			pass

	def connectJoint(self):
		pass

class CurveControlCreate(MirrorSelection):
	def __init__(self, curveShape):
		self.curveShape = curveShape

		self.curveCmds = {'mainCC' : 'curve -d 1 -p -2 0 -1 -p -2 0 -5 -p -4 0 -5 -p 0 0 -9 -p 4 0 -5 -p 2 0 -5 -p 2 0 -1 -p 6 0 -1 -p 6 0 -3 -p 11 0 1 -p 6 0 5 -p 6 0 3 -p 2 0 3 -p 2 0 7 -p 4 0 7 -p 0 0 11 -p -4 0 7 -p -2 0 7 -p -2 0 3 -p -6 0 3 -p -6 0 5 -p -10 0 1 -p -6 0 -3 -p -6 0 -1 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 -k 11 -k 12 -k 13 -k 14 -k 15 -k 16 -k 17 -k 18 -k 19 -k 20 -k 21 -k 22 -k 23'}

		if self.curveCmds.get(self.curveShape):
			cmds.eval(self.curveCmds(self.curveShape))