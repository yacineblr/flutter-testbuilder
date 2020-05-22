// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geofence-locations.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GeofenceLocations on _GeofenceLocationsBase, Store {
  final _$listAtom = Atom(name: '_GeofenceLocationsBase.list');

  @override
  List<dynamic> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<dynamic> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$userEnterZonesAtom =
      Atom(name: '_GeofenceLocationsBase.userEnterZones');

  @override
  List<dynamic> get userEnterZones {
    _$userEnterZonesAtom.reportRead();
    return super.userEnterZones;
  }

  @override
  set userEnterZones(List<dynamic> value) {
    _$userEnterZonesAtom.reportWrite(value, super.userEnterZones, () {
      super.userEnterZones = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_GeofenceLocationsBase.init');

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$addGeofencePointAsyncAction =
      AsyncAction('_GeofenceLocationsBase.addGeofencePoint');

  @override
  Future<void> addGeofencePoint(dynamic geofenceModel) {
    return _$addGeofencePointAsyncAction
        .run(() => super.addGeofencePoint(geofenceModel));
  }

  final _$removeGeofencePointAsyncAction =
      AsyncAction('_GeofenceLocationsBase.removeGeofencePoint');

  @override
  Future<void> removeGeofencePoint(int index) {
    return _$removeGeofencePointAsyncAction
        .run(() => super.removeGeofencePoint(index));
  }

  final _$userEnterZoneAsyncAction =
      AsyncAction('_GeofenceLocationsBase.userEnterZone');

  @override
  Future<void> userEnterZone(dynamic geofenceModel) {
    return _$userEnterZoneAsyncAction
        .run(() => super.userEnterZone(geofenceModel));
  }

  final _$removeExitZoneAsyncAction =
      AsyncAction('_GeofenceLocationsBase.removeExitZone');

  @override
  Future<void> removeExitZone(int index) {
    return _$removeExitZoneAsyncAction.run(() => super.removeExitZone(index));
  }

  @override
  String toString() {
    return '''
list: ${list},
userEnterZones: ${userEnterZones}
    ''';
  }
}
