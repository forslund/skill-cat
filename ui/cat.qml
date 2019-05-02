import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.4 as Kirigami

import Mycroft 1.0 as Mycroft

Mycroft.ProportionalDelegate {
    AnimatedImage {
        id: img
        Layout.alignment: Qt.AlignHCenter
        //Layout.preferredWidth: Math.min(root.contentWidth, proportionalGridUnit * 50)
        Layout.preferredWidth: 400
        //Layout.preferredHeight: Layout.preferredWidth
        fillMode: Image.PreserveAspectFit
        source: sessionData.imgLink
    }
}
