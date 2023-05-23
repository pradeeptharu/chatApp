import 'package:chat_app/presentation/pages/otp_ui_page.dart';
import 'package:chat_app/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const VuriloChatApp());

class VuriloChatApp extends StatelessWidget {
  const VuriloChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpNumber(),
    );
  }
}
