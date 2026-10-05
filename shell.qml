import QtQuick
import Quickshell
import "components"

ShellRoot {
  PanelWindow {
    anchors.top: true

    implicitWidth: 500
    implicitHeight: 200

    color: "transparent"

    aboveWindows: true

    exclusiveZone: 40

    mask: Region {
      item: expanded
    }

    Expanded {
      id: expanded
      expand: notch.hovered || expanded.hovered
    }

    Notch {
      id: notch
      opacity: expanded.expand ? 0 : 100
    }
    
  }
}

