import QtQuick
import QtLocation
import QtPositioning
import QtQuick.Controls
import com.easygps.coordinates 0.1

Window {
    width: 840
    height: 640
    visible: true
    title: qsTr("easy gps")


    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Column {
        id:column
        width: 800
        height: 600
        anchors.centerIn: parent

        Map {
                property var PositionCoordinates: ({latitude, longitude})
                Component.Ready: {
                    PositionCoordinates.latitude = -22.22;
                    PositionCoordinates.longitude = -49.94;
                }

                id: map
                anchors.fill: parent
                plugin: mapPlugin
                center: QtPositioning.coordinate(59.91, 10.75) // Marilia
                zoomLevel: 14
                property geoCoordinate startCentroid

                MapQuickItem {
                        id: myPlane
                        coordinate: QtPositioning.coordinate(PositionCoordinates.latitude, PositionCoordinates.longitude)
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

        Button {
            id: button
            text: "Click this button"
            onClicked:{
                myPopup.open()
            }
        }

        Popup {
            id: myPopup
            anchors.centerIn: parent
            width: 600
            height: 400
            closePolicy: "CloseOnEscape"

            Column {
                anchors.centerIn: parent
                spacing: 10

                Button {
                    text: "close"
                    width: 180
                    onClicked: {
                        myPopup.close()
                    }
                }
            }
        }

    }
}
