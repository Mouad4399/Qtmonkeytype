import sys
from PySide6.QtWidgets import QApplication
from PySide6.QtQml import QQmlApplicationEngine
# from PySide6.QtCore import QUrl

# from PySide6.QtWebSockets import QWebSocket

app = QApplication(sys.argv)
engine= QQmlApplicationEngine()

# sok=QWebSocket()
# sok.open(QUrl("wss://django-chat-9yqu.onrender.com/ws/chat/lobby/"))



engine.load('a.qml')

sys.exit(app.exec())