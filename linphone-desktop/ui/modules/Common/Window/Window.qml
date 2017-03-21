import QtQuick 2.7
import QtQuick.Window 2.2

import 'Window.js' as Logic

// =============================================================================

Window {
  default property alias _content: content.data

  // ---------------------------------------------------------------------------

  function attachVirtualWindow () {
    Logic.attachVirtualWindow.apply(this, arguments)
  }

  function detachVirtualWindow () {
    Logic.detachVirtualWindow()
  }

  // ---------------------------------------------------------------------------

  Item {
    anchors.fill: parent

    Rectangle {
      id: content

      anchors.fill: parent
    }

    VirtualWindow {
      id: virtualWindow
    }
  }
}
