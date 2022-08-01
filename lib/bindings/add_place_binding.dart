import 'package:get/get.dart';
import 'package:rate_me/controllers/add_place_controller.dart';

class AddPlaceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPlaceController());
  }
}
