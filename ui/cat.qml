import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.4 as Kirigami

import Mycroft 1.0 as Mycroft

Mycroft.Delegate {
	skillBackgroundSource: sessionData.imgLink
	Rectangle {
	    color: "#000130"
	    width: parent.width
	    height: parent.height
	    ColumnLayout {
	        id: grid
	        Layout.fillWidth: true
	        width: parent.width
	        spacing: Kirigami.Units.largeSpacing
        
	        Item {
	            height: Kirigami.Units.largeSpacing * 4
	        }
        
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
	            fillMode: Image.PreserveAspectCrop
	            Layout.preferredWidth: Kirigami.Units.gridUnit * 20
	            Layout.preferredHeight: Kirigami.Units.gridUnit * 20
	            source: sessionData.imgLink
		    onStatusChanged: {
			console.log(source)
			console.log("Status is now: " + status)
			if (status == 1) {
				Layout.leftMargin = 500
				console.log(Layout.leftMargin)
			}
		    }
	        }
	    }
    }
    Timer {
	id: tmr
	interval: 50
	running: true
	repeat: true
	property string last_image: ""
	onTriggered: img.Layout.leftMargin = Qt.binding(function() {
		return img.Layout.leftMargin >= 100 ? img.Layout.leftMargin - 20 : img.Layout.leftMargin
	});

    }
}
