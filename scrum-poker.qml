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
            
            Label {
                id: label
                objectName: "label"
            }
            Row {
                spacing: units.gu(4)
                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "0"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }

                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "1/2"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }

                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "1"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }
            }

            Row {
                spacing: units.gu(4)
                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "2"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }

                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "3"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }

                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "5"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }
            }

            Row {
                spacing: units.gu(4)
                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "8"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }

                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "12"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }

                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "20"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }
            }

            Row {
                spacing: units.gu(4)
                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "40"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }

                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "100"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }

                UbuntuShape {
                    color: "darkgray"
                    radius: "small"
                    width: units.gu(9)
                    height: units.gu(12)

                    Label {
                        anchors.centerIn: parent
                        text: "?"
                        fontSize: "x-large"
                        color: "#f1f1f1"
                    }
                }
            }
        }
    }
}
