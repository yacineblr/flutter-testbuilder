

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';


part 'model.g.dart';


const collectionGeofenceLocation = SqfEntityTable(
  tableName: 'geofenceLocationCollection',
  primaryKeyName: 'id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  useSoftDeleting: false,
  modelName: null,
  fields: [
    SqfEntityField('uuid', DbType.text),
    SqfEntityField('radius', DbType.real),
    SqfEntityField('latitude', DbType.real),
    SqfEntityField('longitude', DbType.real),
  ]
);


@SqfEntityBuilder(databaseModel)
const databaseModel = SqfEntityModel(
  databaseName: 'testbuilder_v1.db',
  databaseTables: [
    collectionGeofenceLocation
  ]
);