from PySide2 import QtCore, QtGui, QtWidgets
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui

class SkelGenDialog(QtWidgets.QDialog):
	def __init__(self, parent=None):
		super().__init__(parent)

		self.setWindowTitle('Skeleton Generate')
		self.resize(500,300)

		self.mainLayout = QtWidgets.QVBoxLayout()
		self.setLayout(self.mainLayout)
		self.setStyleSheet( 'background-color: qlineargradient(x1:1, y1:0, x2:1, y2:01, stop:0 #0033FF, stop:1 #FFCCF2)')


		#self.descriptionLabel = QtWidgets.QLabel('foo osdofdp')


		self.buttonLayout = QtWidgets.QHBoxLayout()
		self.mainLayout.addLayout(self.buttonLayout)
		self.createGuidelineButton = QtWidgets.QPushButton('Create Guideline')
		self.clearGuidelineButton = QtWidgets.QPushButton('Clear Guideline')
		self.buttonLayout.addWidget(self.createGuidelineButton)
		self.buttonLayout.addWidget(self.clearGuidelineButton)

		self.buttonLayout = QtWidgets.QHBoxLayout()
		self.mainLayout.addLayout(self.buttonLayout)
		self.generateJointButton = QtWidgets.QPushButton('Generate Joint')
		self.mirrorJointButton = QtWidgets.QPushButton('Mirror Joint')
		self.buttonLayout.addWidget(self.generateJointButton)
		self.buttonLayout.addWidget(self.mirrorJointButton)

		self.buttonLayout = QtWidgets.QHBoxLayout()
		self.mainLayout.addLayout(self.buttonLayout)
		self.applyButton = QtWidgets.QPushButton('APPLY')
		self.cancelButton = QtWidgets.QPushButton('CANCEL')
		self.buttonLayout.addWidget(self.applyButton)
		self.buttonLayout.addWidget(self.cancelButton)

def run():
	global ui
	try:
		ui.close()
	except:
		pass

	ptr = wrapInstance(int(omui.MQtUtil.mainWindow()), QtWidgets.QWidget)
	ui = SkelGenDialog(parent=ptr)
	ui.show()