import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/controllers/add_place_controller.dart';

class AddPlace extends StatelessWidget {
  final logic = Get.find<AddPlaceController>();
  AddPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Expanded(
            flex: 4,
            child: SizedBox(),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
