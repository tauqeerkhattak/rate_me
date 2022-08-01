import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rate_me/controllers/home_controller.dart';
import 'package:rate_me/utils/constants.dart';

class Home extends StatelessWidget {
  final logic = Get.find<HomeController>();
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constants.primaryColor,
        onPressed: () {
          // logic.goToPosition();
          logic.isExpanded.value = false;
        },
        child: const Icon(
          Icons.gps_fixed,
          color: Colors.white,
        ),
      ),
      body: Obx(
        () => GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: logic.kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            logic.mapController.complete(controller);
          },
          zoomControlsEnabled: false,
          padding: EdgeInsets.only(
            bottom: logic.isExpanded.value ? Get.height * 0.4 : 0.0,
          ),
          onTap: (latLng) async {
            logic.isExpanded.value = true;
            final controller = await logic.mapController.future;
            await controller.animateCamera(
              CameraUpdate,
            );
            // Get.toNamed(
            //   Routes.addPlace,
            //   arguments: {
            //     'lat': latLng.latitude.toString(),
            //     'long': latLng.longitude.toString(),
            //   },
            // )?.then((value) {
            //   logic.isExpanded.value = false;
            // });
          },
        ),
      ),
    );
  }
}
