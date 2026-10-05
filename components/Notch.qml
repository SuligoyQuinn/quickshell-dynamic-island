import QtQuick

Rectangle {
  implicitWidth: 220
  implicitHeight: 44
  anchors.top: parent.top
  anchors.horizontalCenter: parent.horizontalCenter

  radius: implicitHeight / 2
  topLeftRadius: 0
  topRightRadius: 0

  color: "#111111"

  border.color: "#222222"
  border.width: 3

  property bool hovered: notchHover.hovered

  Clock {
    anchors.centerIn: parent
  }
  HoverHandler {
    id: "notchHover"
  }

  Behavior on opacity {
    SpringAnimation {
      spring: 3
      damping: 0.7
    }
  }
}
