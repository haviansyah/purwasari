import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:location/location.dart';

class PurwasariMapPage extends StatefulWidget {
  @override
  _PurwasariMapPageState createState() => _PurwasariMapPageState();
}

class _PurwasariMapPageState extends State<PurwasariMapPage> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(-6.6164275 , 106.7153655);

  

  LatLng _lastMapPosition = _center;

  MapType _currentMapType = MapType.normal;

 
  // Location
  LocationData _locationData;

  // Maps
  Set<Marker> _markers = Set<Marker>();
  GoogleMapController _googleMapController;
  BitmapDescriptor _markerIcon;
  double radius;

  //ids
  int _polygonIdCounter = 1;
  int _circleIdCounter = 1;
  int _markerIdCounter = 1;

// Set Markers to the map
  void _setMarkers(LatLng point) {
    final markerIdVal = 'marker_id_$_markerIdCounter';
    _markerIdCounter++;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('Kantor Purwasari'),
          infoWindow: InfoWindow(title: 'Kantor Kepala Desa Purwasari',),
          position: point,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    _setMarkers(LatLng(-6.6164275 , 106.7153655));
    return Scaffold(
      appBar: PurwasariAppBar(
        title: "Peta Desa",
        textColor: Colors.white,
        iconColor: Colors.white,
        color: Color.fromRGBO(0, 0, 0, 0.55),
      ),
      extendBodyBehindAppBar: true,
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(-6.6164275 , 106.7153655),
          zoom: 15,
        ),
        mapType: MapType.normal,
        markers: _markers,
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
      ),
    );
  }
}