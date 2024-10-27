import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    id: diaryPage
    property var dagText: editDagId.text

    signal decreaseDay;
    signal increaseDay;
    signal dateChanged;

    // property Strategy strategy;
    Rectangle {
        id: containerRectId
        anchors.fill: parent
        anchors.margins: 15

        ColumnLayout
        {
            id: pageColumnId
            anchors.fill: parent

            Rectangle {
                id: pageRectId
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "pink"

                Row {
                    spacing: 25

                    Label {
                        text: "Dag"
                        anchors.verticalCenter: parent.verticalCenter
                    }

                    // Date control
                    Row {
                        anchors.verticalCenter: parent.verticalCenter
                        Button {
                            id: decreaseDayId
                            text: "-"
                            anchors.verticalCenter: parent.verticalCenter
                            width: editDagId.height
                            height: editDagId.height
                            onClicked: diaryPage.decreaseDay();
                        }
                        TextField {
                            id: editDagId
                            width: 100
                            anchors.verticalCenter: parent.verticalCenter
                            inputMethodHints: Qt.ImhDate
                            // inputMask: "99:99:99"//input mask
                            text: "00:00:00" //default text
                            onAccepted: diaryPage.dateChanged();
                        }
                        Button {
                            id: increaseDayId
                            text: "+"
                            anchors.verticalCenter: parent.verticalCenter
                            width: editDagId.height
                            height: editDagId.height
                            onClicked: diaryPage.increaseDay();
                        }
                    }

                    Label {
                        text: "Strategie"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    ComboBox {
                        id: boxStrategieId
                        width: 200
                        anchors.verticalCenter: parent.verticalCenter
                        model: ["Calorieen", "Koolhydraten"]
                        enum Strategy {
                            Calories,
                            Koolhydraten
                        }


                    }
                }
            }
        }
    }

    footer: MenuBar {
        id:  menuBarId
        width: parent.width
        Menu {
            title: "Add"
            Action {
                id: addActionId
                text: "&Voedingsmiddel"
            }
            Action {
                id: addFreeId
                text: "Vrije &ingave"
            }
            Action {
                id: addRecipeId
                text: "&Recept"
            }
            Action {
                id: addGerechtId
                text: "&Gerecht"
            }

            // MenuBar {
            //     id: addMenuBarId
            //     MenuBarItem {
            //         text: "&Voedingsmiddel"
            //     }
            //     MenuBarItem {
            //         text: "Vrije &ingave"
            //     }
            //     MenuBarItem {
            //         text: "&Recept"
            //     }
            //     MenuBarItem {
            //         text: "&Gerecht"
            //     }
            // }
            // onClicked: {
            //     addMenuBarId.open()
            // }
        }
        Menu {
            title: "Edit"
        }
        Menu {
            title: "Delete"
        }
        //     }
        // }
    }
}
