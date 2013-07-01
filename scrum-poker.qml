import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.Popups 0.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"
    
    // Note! applicationName needs to match the .desktop filename
    applicationName: "scrum-poker"
    
    /* 
     This property enables the application to change orientation 
     when the device is rotated. The default is false.
    */
    automaticOrientation: true
    
    width: units.gu(100)
    height: units.gu(75)

    Page {
        title: "Scrum Poker"
        id: page
        property string cardNumber

        Column {
            spacing: units.gu(2)
            anchors {
                margins: units.gu(1)
                centerIn: parent
            }

            Component {
                id: smallCard
                Button {
                    property string labelText
                    color: "darkgray"
                    width: units.gu(9)
                    height: units.gu(12)
                    text: labelText
                    onClicked: {
                        page.cardNumber = labelText
                        PopupUtils.open(dialog, null)
                    }
                }
            }

            Component {
                id: dialog
                Dialog {
                    id: dialogue

                    title: i18n.tr("Hidden card")
                    text: i18n.tr("Are you want to show the card?")

                    Button {
                        text: i18n.tr("Cancel")
                        onClicked: PopupUtils.close(dialogue)
                    }
                    Button {
                        text: i18n.tr("Show " + page.cardNumber)
                        color: "#5da357"
                        onClicked: PopupUtils.close(dialogue)
                    }
                }
            }
            
            Label {
                id: label
                objectName: "label"
            }
            Row {
                spacing: units.gu(4)
                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "0"
                    }
                }

                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "1/2"
                    }
                }

                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "1"
                    }
                }
            }

            Row {
                spacing: units.gu(4)
                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "2"
                    }
                }

                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "3"
                    }
                }

                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "5"
                    }
                }
            }

            Row {
                spacing: units.gu(4)
                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "8"
                    }
                }

                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "12"
                    }
                }

                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "20"
                    }
                }
            }

            Row {
                spacing: units.gu(4)
                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "40"
                    }
                }

                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "100"
                    }
                }

                Loader {
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "?"
                    }
                }
            }
        }
    }
}
