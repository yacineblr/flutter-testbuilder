import 'package:flutter_geofence/geofence.dart';
import 'package:mobx/mobx.dart';
part 'geofence-locations.g.dart';

class GeofenceLocations = _GeofenceLocationsBase with _$GeofenceLocations;

abstract class _GeofenceLocationsBase with Store {


  @observable List<GeofenceLocationCollection> list = [];
  @observable List<GeofenceLocationCollection> userEnterZones = [];

  @action
  Future<void> init() async {
    var geofenceLocationCollection = GeofenceLocationCollection();
    var listSaved = await geofenceLocationCollection.select().toList();
    list = listSaved;
    for (var i = 0; i < listSaved.length; i++) {
      // var geolocation = Geolocation(id: geofenceModel.uuid, latitude: geofenceModel.latitude, longitude: geofenceModel.latitude, radius: 100);
      // await Geofence.addGeolocation(geolocation, GeolocationEvent.entry);
    }
  }

  @action
  Future<void> addGeofencePoint(GeofenceLocationCollection geofenceModel) async {
    var newValue = [...list];
    await geofenceModel.save();
    newValue.add(geofenceModel);
    list = newValue;
    var geolocation = Geolocation(id: geofenceModel.uuid, latitude: geofenceModel.latitude, longitude: geofenceModel.latitude, radius: 100);
    Geofence.addGeolocation(geolocation, GeolocationEvent.entry).then((onValue) {
        print("Georegion added, Your geofence has been added!");
    }).catchError((error) {
        print("failed with $error");
    });
  }

  @action
  Future<void> removeGeofencePoint(int index) async {
    var geofenceModel = list[index];
    var geolocation = Geolocation(id: geofenceModel.uuid, latitude: geofenceModel.latitude, longitude: geofenceModel.latitude, radius: 100);
    await Geofence.removeGeolocation(geolocation, GeolocationEvent.exit);
    Geofence.removeGeolocation(geolocation, GeolocationEvent.entry).then((onValue) {
        print("Georegion removed, your geofence has been removed!");
    }).catchError((error) {
        print("failed with $error");
    });
    var newValue = [...list];
    newValue.removeAt(index);
    await geofenceModel.delete();
    list = newValue;
  }

   @action
  Future<void> userEnterZone(GeofenceLocationCollection geofenceModel) async {
    var newValue = [...userEnterZones];
    newValue.add(geofenceModel);
    userEnterZones = newValue;
  }

  @action
  Future<void> removeExitZone(int index) async {
    var newValue = [...userEnterZones];
    newValue.removeAt(index);
    userEnterZones = newValue;
  }
  
}

final storeGeofenceLocations = GeofenceLocations();