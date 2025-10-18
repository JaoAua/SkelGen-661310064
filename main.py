from PySide2 import QtCore, QtGui, QtWidgets
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui
# from . import util 

ROOT_RESOURCE_JOINT = "C:/Users/Theerada Kanokkaew/Documents/maya/2024/scripts"
class SkelGenDialog(QtWidgets.QDialog):
	def __init__(self, parent=None):
		super().__init__(parent)

		self.setWindowTitle('Skeleton Generate')
		self.resize(100,100)

		self.mainLayout = QtWidgets.QVBoxLayout()
		self.setLayout(self.mainLayout)
		self.setStyleSheet( '''
			QDialog{
				background-color: qlineargradient(x1:1, y1:0, x2:1, y2:01, stop:0 #0033FF, stop:1 #FFCCF2)
			}

			'''
		)


		# self.buttonLayout = QtWidgets.QHBoxLayout()
		# self.mainLayout.addLayout(self.buttonLayout)
		# self.createGuidelineButton = QtWidgets.QPushButton('Create Guideline')
		# #self.clearGuidelineButton.clicked.connect(onClickCreateGuideline)
		# self.buttonLayout.addWidget(self.createGuidelineButton)					
		# self.createGuidelineButton.setStyleSheet('''
		# 	QPushButton{
		# 		background-color: #977DFF;

		# 	}
		# 	QPushButton:hover {
		# 		background-color: #FFCCF2;
		# 	}
		# 	QPushButton:pressed {
		# 		background-color: #0600AB;
		# 	}
		# 	'''
		# )

		# self.buttonLayout = QtWidgets.QHBoxLayout()
		# self.mainLayout.addLayout(self.buttonLayout)
		# self.clearGuidelineButton = QtWidgets.QPushButton('Clear Guideline')
		# self.buttonLayout.addWidget(self.clearGuidelineButton)
		# self.clearGuidelineButton.setStyleSheet('''
		# 	QPushButton{
		# 		background-color: #977DFF;

		# 	}
		# 	QPushButton:hover {
		# 		background-color: #FFCCF2;
		# 	}
		# 	QPushButton:pressed {
		# 		background-color: #0600AB;
		# 	}
		# 	'''
		# )

		self.descriptionLabel = QtWidgets.QLabel('Before using Generate Joint')
		self.mainLayout.addWidget(self.descriptionLabel)
		# self.descriptionLabel.setStyleSheet("padding-top:15px;")

		self.descriptionLabel = QtWidgets.QLabel('Make sure that you already adjust joint in the right position')
		self.mainLayout.addWidget(self.descriptionLabel)

		self.buttonLayout = QtWidgets.QHBoxLayout()
		self.mainLayout.addLayout(self.buttonLayout)
		self.generateJointButton = QtWidgets.QPushButton('Generate Joint')
		self.buttonLayout.addWidget(self.generateJointButton)
		self.generateJointButton.setStyleSheet('''
			QPushButton{
				background-color: #977DFF;

			}
			QPushButton:hover {
				background-color: #FFCCF2;
			}
			QPushButton:pressed {
				background-color: #0600AB;
			}
			'''
		)

		self.buttonLayout = QtWidgets.QHBoxLayout()
		self.mainLayout.addLayout(self.buttonLayout)
		self.mirrorJointButton = QtWidgets.QPushButton('Mirror Joint')
		self.buttonLayout.addWidget(self.mirrorJointButton)
		self.mirrorJointButton.setStyleSheet('''
			QPushButton{
				background-color: #977DFF;

			}
			QPushButton:hover {
				background-color: #FFCCF2;
			}
			QPushButton:pressed {
				background-color: #0600AB;
			}
			'''
		)
		# self.buttonLayout = QtWidgets.QHBoxLayout()
		# self.mainLayout.addLayout(self.buttonLayout)
		# self.applyButton = QtWidgets.QPushButton('APPLY')
		# self.cancelButton = QtWidgets.QPushButton('CANCEL')
		# self.buttonLayout.addWidget(self.applyButton)
		# self.buttonLayout.addWidget(self.cancelButton)

		self.mainLayout.addStretch()

	#def onClickCreateGuideline(self):

def run():
	global ui
	try:
		ui.close()
	except:
		pass

	ptr = wrapInstance(int(omui.MQtUtil.mainWindow()), QtWidgets.QWidget)
	ui = SkelGenDialog(parent=ptr)
	ui.show()