import sys
from PySide6.QtWidgets import QApplication
from PySide6.QtQml import QQmlApplicationEngine

app = QApplication(sys.argv)
engine= QQmlApplicationEngine()

engine.load('main.qml')

sys.exit(app.exec())