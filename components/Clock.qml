import QtQuick

Text {
  id: clock

  color: "white"
  font.pixelSize: 16
  font.bold: true

  function updateTime() {
    text = Qt.formatTime(new Date(), "h:mm")
  }

  Component.onCompleted: updateTime()

  Timer {
    interval: 1000
    running: true
    repeat: true
    onTriggered: clock.updateTime()
  }
}
