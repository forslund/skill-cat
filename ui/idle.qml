import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.4 as Kirigami

import Mycroft 1.0 as Mycroft

Mycroft.ProportionalDelegate {
    Kirigami.Heading {
        id: title
        Layout.alignment: Qt.AlignHCenter
        level: 1
        Layout.columnSpan: 2
        wrapMode: Text.WordWrap
        font.capitalization: Font.AllUppercase
        text: "The Cat, an animal of grace"
    }
    AnimatedImage {
        id: img
        Layout.alignment: Qt.AlignHCenter
        Layout.preferredWidth: 400
        fillMode: Image.PreserveAspectFit
        source: sessionData.imgLink
    }
}
