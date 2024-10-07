// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

Future<String> getUserAddress(LatLng userCurrentLocation) async {
  try {
    List<Placemark> placemarks = await placemarkFromCoordinates(
        userCurrentLocation.latitude, userCurrentLocation.longitude);

    // Check if placemarks list is not empty and the first placemark is not null
    if (placemarks.isNotEmpty && placemarks[0] != null) {
      // Access placemark properties safely
      String address = (placemarks[0].street ?? '') +
          ", " +
          (placemarks[0].subLocality ?? '') +
          ", " +
          (placemarks[0].locality ?? '') +
          ", " +
          (placemarks[0].administrativeArea ?? '') +
          ", " +
          (placemarks[0].country ?? '');
      return address;
    } else {
      return 'No address found';
    }
  } catch (e) {
    return 'Error: $e';
  }
}
