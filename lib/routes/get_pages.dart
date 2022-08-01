import 'package:get/get.dart';
import 'package:rate_me/bindings/add_place_binding.dart';
import 'package:rate_me/bindings/home_bindings.dart';
import 'package:rate_me/routes/routes.dart';
import 'package:rate_me/ui/add_place/add_place.dart';
import 'package:rate_me/ui/home/home.dart';

class GetPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => Home(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.addPlace,
      page: () => AddPlace(),
      opaque: false,
      binding: AddPlaceBinding(),
    ),
  ];
}
