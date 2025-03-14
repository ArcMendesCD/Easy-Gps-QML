import QtQuick
import QtLocation
import QtPositioning
import QtQuick.Controls
import QtQuick.Layouts
import com.easygps.coordinates 0.1

Window {
    width: 840
    height: 640
    visible: true
    title: qsTr("EASY-UGLS")

    flags: Qt.Window | Qt.CustomizeWindowHint | Qt.WindowMinMaxButtonsHint

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Coordinates {
        id: myCoordinates
        latitude: -22.22
        longitude: -49.94
    }

    Rectangle {
        id: headerBar
        width: parent.width
        height: 70
        color: "#2e2e2e"
        anchors.top: parent.top

        RowLayout {
            anchors.fill: parent
            anchors.margins: 2
            spacing: 2

            Item {
                Layout.fillWidth: true
            }

            Button {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.minimumWidth: 80
                Layout.preferredWidth: 100
                Layout.maximumWidth: 200
                height: 40
                text: "STATUS"
                contentItem: Label {
                    text: "STATUS"
                    font.pixelSize: 20
                    color: "#009b14"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    color: "#2e2e2e"
                    radius: 0
                    border.color: "#009b14"
                }
            }

            Button {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.minimumWidth: 80
                Layout.preferredWidth: 100
                Layout.maximumWidth: 200
                height: 40
                text: "NAV MODE"
                contentItem: Label {
                    text: "NAV MODE"
                    font.pixelSize: 20
                    color: "#009b14"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    color: "#2e2e2e"
                    radius: 0
                    border.color: "#009b14"
                }
            }

            Button {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.minimumWidth: 80
                Layout.preferredWidth: 100
                Layout.maximumWidth: 200
                height: 40
                text: "WAYPOINTS"
                contentItem: Label {
                    text: "WAYPOINTS"
                    font.pixelSize: 20
                    color: "#009b14"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    color: "#2e2e2e"
                    radius: 0
                    border.color: "#009b14"
                }
            }

            Button {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.minimumWidth: 80
                Layout.preferredWidth: 100
                Layout.maximumWidth: 200
                height: 40
                text: "DATALINK"
                contentItem: Label {
                    text: "DATALINK"
                    font.pixelSize: 20
                    color: "#009b14"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    color: "#2e2e2e"
                    radius: 0
                    border.color: "#009b14"
                }
            }

            Item {
                Layout.fillWidth: true
            }
        }
    }

    Column {
        id: column
        width: 620
        height: 480
        anchors.centerIn: parent

        Map {
            id: map
            anchors.fill: parent
            plugin: mapPlugin
            center: QtPositioning.coordinate(myCoordinates.latitude, myCoordinates.longitude)
            zoomLevel: 14
            property geoCoordinate startCentroid

            MapQuickItem {
                id: myPlane
                coordinate: QtPositioning.coordinate(myCoordinates.latitude, myCoordinates.longitude)
                anchorPoint.x: planeImage.width / 2
                anchorPoint.y: planeImage.height / 2

                sourceItem: Image {
                    id: planeImage
                    source: "qrc:/Res/resources/plane-marker.png"
                    width: 80
                    height: 80
                    smooth: true
                }
            }

            PinchHandler {
                id: pinch
                target: null
                onActiveChanged: if (active) {
                    map.startCentroid = map.toCoordinate(pinch.centroid.position, false)
                }
                onScaleChanged: (delta) => {
                    map.zoomLevel += Math.log2(delta)
                    map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
                }
                onRotationChanged: (delta) => {
                    map.bearing -= delta
                    map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
                }
                grabPermissions: PointerHandler.TakeOverForbidden
            }
            WheelHandler {
                id: wheel
                acceptedDevices: Qt.platform.pluginName === "cocoa" || Qt.platform.pluginName === "wayland"
                                 ? PointerDevice.Mouse | PointerDevice.TouchPad
                                 : PointerDevice.Mouse
                rotationScale: 1/120
                property: "zoomLevel"
            }
            DragHandler {
                id: drag
                target: null
                onTranslationChanged: (delta) => map.pan(-delta.x, -delta.y)
            }
            Shortcut {
                enabled: map.zoomLevel < map.maximumZoomLevel
                sequence: StandardKey.ZoomIn
                onActivated: map.zoomLevel = Math.round(map.zoomLevel + 1)
            }
            Shortcut {
                enabled: map.zoomLevel > map.minimumZoomLevel
                sequence: StandardKey.ZoomOut
                onActivated: map.zoomLevel = Math.round(map.zoomLevel - 1)
            }
        }
    }
}
