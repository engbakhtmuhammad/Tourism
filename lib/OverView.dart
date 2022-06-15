import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      GoogleMap(
        initialCameraPosition: CameraPosition(target: LatLng(37.77483, -122.41942),
        zoom: 12),
      ),

    );
  }
}
