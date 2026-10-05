import QtQuick
Rectangle {
  id: "expanded"
  property bool expand
  implicitWidth: expand ? 500 : 200
  Behavior on implicitWidth {
    SpringAnimation {
      spring: 3
      damping: 0.7
    }
  }

  implicitHeight: expand ? 200 : 44
  Behavior on implicitHeight {
    SpringAnimation {
      spring: 3
      damping: 0.7
    }
  }

  anchors.top: parent.top
  anchors.horizontalCenter: parent.horizontalCenter

  radius: implicitHeight / 2
  topLeftRadius: 0
  topRightRadius: 0

  color: "#111111"

  border.color: "#222222"
  border.width: 3

  property bool hovered: expandedHover.hovered

  HoverHandler {
    id: "expandedHover"
  }
}
