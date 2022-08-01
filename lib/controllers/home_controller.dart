import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:rate_me/widgets/custom_dialog.dart';

class HomeController extends GetxController {
  final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(24.8607, 67.0011),
    zoom: 16,
  );
  final isExpanded = false.obs;
  final Completer<GoogleMapController> mapController = Completer();

  void goToPosition() async {
    Location location = Location();
    PermissionStatus status = await location.requestPermission();
    if (status == PermissionStatus.granted) {
      final data = await location.getLocation();
      final lat = data.latitude;
      final long = data.longitude;
      final controller = await mapController.future;
      controller.animateCamera(CameraUpdate.newLatLng(LatLng(lat!, long!)));
    } else {
      log('ELSE');
      CustomDialog.showSingleActionDialog(
        title: 'Permission required',
        subtitle:
            'Permission is needed for the app to work without disruptions',
        actionText: 'Okay',
      );
    }
  }
}
