import 'package:flutter/material.dart';

double fullWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double fullheight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

class ImagePath {
  final String splashImage =
      'https://uploads-ssl.webflow.com/642ba0e2773549a33b554a68/642bac2629d21641919eb836_vurilo_logo.png';
}

Widget normalText({
  String? text,
  Color? color,
  double? size,
  FontWeight? fontWeight,
  double? letterSpacing,
}) {
  return Text(
    text!,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
    ),
  );
}

void handlePrivacyPolicyTap() {
  print("Privacy Policy tapped");
}

void handleTermsOfServiceTap() {
  print("Terms of Service tapped");
}
