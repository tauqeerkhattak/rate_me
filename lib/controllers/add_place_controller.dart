import 'dart:developer';

import 'package:get/get.dart';

class AddPlaceController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    log('Arguments: ${args['lat']}');
  }
}
