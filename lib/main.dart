import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/routes/get_pages.dart';
import 'package:rate_me/routes/routes.dart';

void main() {
  runApp(const RateMe());
}

class RateMe extends StatelessWidget {
  const RateMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.home,
      getPages: GetPages.pages,
    );
  }
}
