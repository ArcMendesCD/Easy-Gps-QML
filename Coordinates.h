#ifndef COORDINATES_H
#define COORDINATES_H

#include <QObject>

class Coordinates : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double latitude READ latitude WRITE setLatitude NOTIFY latitudeChanged)
    Q_PROPERTY(double longitude READ longitude WRITE setLongitude NOTIFY longitudeChanged)

public:
    explicit Coordinates(QObject *parent = nullptr) : QObject(parent), m_latitude(0.0), m_longitude(0.0) {}

    double latitude() const { return m_latitude; }
    void setLatitude(double latitude) {
        if (m_latitude != latitude) {
            m_latitude = latitude;
            emit latitudeChanged();
        }
    }

    double longitude() const { return m_longitude; }
    void setLongitude(double longitude) {
        if (m_longitude != longitude) {
            m_longitude = longitude;
            emit longitudeChanged();
        }
    }

signals:
    void latitudeChanged();
    void longitudeChanged();

private:
    double m_latitude;
    double m_longitude;
};

#endif // COORDINATES_H
