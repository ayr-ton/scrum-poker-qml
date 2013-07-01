import QtQuick 2.0
import Ubuntu.Components 0.1

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

        Column {
            spacing: units.gu(2)
            anchors {
                margins: units.gu(1)
                centerIn: parent
            }

            Component {
                id: smallCard
                UbuntuShape {
                    property string labelText
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        text: labelText
                        anchors.centerIn: parent
                        fontSize: "x-large"
                        color: "#f1f1f1"
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
                    id: zeroSmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "0"
                    }
                }

                Loader {
                    id: halfSmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "1/2"
                    }
                }

                Loader {
                    id: oneSmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "1"
                    }
                }
            }

            Row {
                spacing: units.gu(4)
                Loader {
                    id: twoSmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "2"
                    }
                }

                Loader {
                    id: threeSmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "3"
                    }
                }

                Loader {
                    id: fiveSmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "5"
                    }
                }
            }

            Row {
                spacing: units.gu(4)
                Loader {
                    id: eightSmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "8"
                    }
                }

                Loader {
                    id: twelveSmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "12"
                    }
                }

                Loader {
                    id: twentySmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "20"
                    }
                }
            }

            Row {
                spacing: units.gu(4)
                Loader {
                    id: fourtySmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "40"
                    }
                }

                Loader {
                    id: hundredSmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "100"
                    }
                }

                Loader {
                    id: dontknowSmall
                    sourceComponent: smallCard
                    Component.onCompleted: {
                        item.labelText = "?"
                    }
                }
            }
        }
    }
}
