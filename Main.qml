import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        anchors.fill: parent
        TabBar {
            id: tabBarId
            Layout.fillWidth: true
            height: 50

            TabButton {
                text: "Personalia"
                onClicked: {
                    page1.visible =  true
                    page2.visible =  false
                }
            }
            TabButton {
                text: "Dagboek"
                onClicked: {
                    page1.visible =  false
                    page2.visible =  true
                }
            }
            TabButton {
                text: "Items"
            }
            TabButton {
                text: "Recepten"
            }
        }

        PersonaliaPage {
            id: page1
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        DiaryPage {
            id: page2
            Layout.fillWidth: true
            Layout.fillHeight: true
            visible: false
        }
    }
}
