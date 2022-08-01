import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/constants.dart';

class CustomDialog {
  static void showSingleActionDialog(
      {required String title,
      required String subtitle,
      required String actionText}) {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Constants.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: Constants.xLarge,
            ),
          ),
        ),
        // contentPadding: EdgeInsets.zero,
        content: Text(
          subtitle,
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                actionText,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Constants.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: Constants.medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
