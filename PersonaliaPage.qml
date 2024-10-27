import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    id: personaliaPage
    signal nameChanged;
    signal startWeightChanged;
    signal dayPointChanged;
    signal weekPointChanged;

    property double rowSpace: 15
    property var inputColor: Qt.rgba(0.9, 1.0, 0.9, 1.0)//"#efffef"

    Rectangle {
        anchors.fill: parent
        color: "lightgreen"
        // property Strategy strategy;
        ColumnLayout {
            id: containerColumnId
            anchors.fill: parent
            anchors.margins: 15

            Row {
                spacing: rowSpace
                Label {
                    text: "Naam"
                }
                Rectangle {
                    width: 300
                    height: parent.height
                    color: inputColor
                    TextEdit {
                        width: 300
                        clip: true
                    }
                }
            }

            Row {
                spacing: rowSpace
                Label {
                    text: "Startgewicht"
                }
                Rectangle {
                    width: 75
                    height: parent.height
                    color: inputColor
                    TextInput {
                        width: 75
                        inputMethodHints: Qt.ImhDigitsOnly
                        maximumLength: 5
                    }
                }
                Label {
                    text: "kg"
                }
            }
            Row {
                spacing: rowSpace
                Label {
                    text: "Huidig gewicht"
                }
                TextEdit {
                    id: currentWeight
                    width: 75
                    readOnly: true
                }
                Label {
                    text: "kg"
                }
            }
            Row {
                spacing: rowSpace
                Label {
                    text: "Dagpunten"
                }
                Rectangle {
                    width: 75
                    height: parent.height
                    color: inputColor
                    TextInput {
                        id: dagPuntenEdit
                        anchors.fill: parent
                        width: 40
                        clip: true
                        inputMethodHints: Qt.ImhDigitsOnly
                        maximumLength: 5
                    }
                }
                Label {
                    text: "Extra weekpunten"
                }
                TextInput {
                    id: weekPuntenEdit
                    clip: true
                    width: 40
                    inputMethodHints: Qt.ImhDigitsOnly
                    maximumLength: 5
                }
            }
        }
    }
}
