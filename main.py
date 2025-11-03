from PySide2 import QtCore, QtGui, QtWidgets
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui
import os
import maya.cmds as cmds
from . import util
import importlib
importlib.reload(util)

FILE_PATH = "C:/Users/Theerada Kanokkaew/Documents/maya/2024/scripts/SkelGen_661310064/joint.ma"
ROOT_RESOURCE_DIR = "C:/Users/Theerada Kanokkaew/Documents/maya/2024/scripts/SkelGen_661310064"
class SkelGenDialog(QtWidgets.QDialog):
	def __init__(self, parent=None):
		super().__init__(parent)

		self.setWindowTitle('Skeleton Generate')
		self.resize(200,100)

		self.mainLayout = QtWidgets.QVBoxLayout()
		self.setLayout(self.mainLayout)
		self.setStyleSheet( '''
			QDialog{
				background-color: qlineargradient(x1:1, y1:0, x2:1, y2:01, stop:0 #0033FF, stop:1 #FFCCF2)
			}

			'''
		)

		self.imageLabel = QtWidgets.QLabel()
		self.imagePixmap = QtGui.QPixmap(f"{ROOT_RESOURCE_DIR}/image/skelgen_image.png")
		self.imageLabel.setPixmap(self.imagePixmap)
		scale_pixmap = self.imagePixmap.scaled(
			QtCore.QSize(300,300),
			QtCore.Qt.KeepAspectRatio,
			QtCore.Qt.SmoothTransformation
		)
		self.imageLabel.setPixmap(scale_pixmap)
		self.imageLabel.setAlignment(QtCore.Qt.AlignCenter)
		self.mainLayout.addWidget(self.imageLabel)

		self.buttonLayout = QtWidgets.QHBoxLayout()
		self.mainLayout.addLayout(self.buttonLayout)
		self.importJointGuilelineButton = QtWidgets.QPushButton('Create Joint Guideline')
		self.importJointGuilelineButton.clicked.connect(self.onClickCreateGuideline)
		self.buttonLayout.addWidget(self.importJointGuilelineButton)
		self.importJointGuilelineButton.setStyleSheet('''
			QPushButton{
				background-color: #977DFF;

			}
			QPushButton:hover {
				background-color: navy;
			}
			QPushButton:pressed {
				background-color: #0600AB;
			}
			'''
		)

		self.descriptionLabel = QtWidgets.QLabel('Before using Mirror Joint')
		self.mainLayout.addWidget(self.descriptionLabel)
		self.descriptionLabel.setStyleSheet('''
			font-size: 13px;
			color: white;
			'''
		)

		self.descriptionLabel = QtWidgets.QLabel('Make sure that you already adjusted joint in the right position')
		self.mainLayout.addWidget(self.descriptionLabel)
		self.descriptionLabel.setStyleSheet('''
			font-size: 13px;
			color: white;
			'''
		)

		self.buttonLayout = QtWidgets.QHBoxLayout()
		self.mainLayout.addLayout(self.buttonLayout)
		self.mirrorJointButton = QtWidgets.QPushButton('Mirror Joint')
		self.mirrorJointButton.clicked.connect(self.onClickMirrorJoint)
		self.buttonLayout.addWidget(self.mirrorJointButton)
		self.mirrorJointButton.setStyleSheet('''
			QPushButton{
				background-color: #977DFF;

			}
			QPushButton:hover {
				background-color: navy;
			}
			QPushButton:pressed {
				background-color: #0600AB;
			}
			'''
		)		

		self.buttonLayout = QtWidgets.QHBoxLayout()
		self.mainLayout.addLayout(self.buttonLayout)
		self.mirrorCCButton = QtWidgets.QPushButton('Mirror Curve Control')
		self.mirrorCCButton.clicked.connect(self.onClickMirrorCC)
		self.buttonLayout.addWidget(self.mirrorCCButton)
		self.mirrorCCButton.setStyleSheet('''
			QPushButton{
				background-color: #977DFF;

			}
			QPushButton:hover {
				background-color: navy;
			}
			QPushButton:pressed {
				background-color: #0600AB;
			}
			'''
		)		

		self.buttonLayout = QtWidgets.QHBoxLayout()
		self.mainLayout.addLayout(self.buttonLayout)
		self.connectButton = QtWidgets.QPushButton('Connect Curve Control and Joint')
		self.connectButton.clicked.connect(self.onClickConnectJointAndCurveControl)
		self.buttonLayout.addWidget(self.connectButton)
		self.connectButton.setStyleSheet('''
			QPushButton{
				background-color: #977DFF;

			}
			QPushButton:hover {
				background-color: navy;
			}
			QPushButton:pressed {
				background-color: #0600AB;
			}
			'''
		)

		self.mainLayout.addStretch()

	def onClickCreateGuideline(self):
		if os.path.exists(FILE_PATH):
			cmds.file(FILE_PATH, i=True)
			print(f"Imported guideline from {FILE_PATH}")
		else:
			cmds.warning(f"File not found: {FILE_PATH}")

	def onClickMirrorJoint(self):
		mirror_tool = util.MirrorSelection()
		mirror_tool.mirrorJoint()

	def onClickMirrorCC(self):
		mirror_tool = util.MirrorSelection()
		mirror_tool.mirrorCurveControl()

	def onClickConnectJointAndCurveControl(self):
		mirror_tool = util.MirrorSelection()
		mirror_tool.connectJointAndCurveControl()


def run():
	global ui
	try:
		ui.close()
	except:
		pass

	ptr = wrapInstance(int(omui.MQtUtil.mainWindow()), QtWidgets.QWidget)
	ui = SkelGenDialog(parent=ptr)
	ui.show()