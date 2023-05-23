import 'package:chat_app/core/utils/constants/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OptWidget extends StatelessWidget {
  final VoidCallback whatisMyNumber;
  OptWidget({required this.whatisMyNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: fullheight(context) * 0.02,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'VuriloChat will send an SMS message to veify your',
                ),
              ],
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: '        phone number. ',
              ),
              TextSpan(
                text: '  what\'s my number ? ',
                style: TextStyle(
                  color: Colors.blue.shade900,
                ),
                recognizer: TapGestureRecognizer()..onTap = whatisMyNumber,
              ),
            ],
          ),
        ),
        SizedBox(
          height: fullheight(context) * 0.07,
        ),
        Container(
          height: fullheight(context) * 0.1,
          width: fullWidth(context) * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IntlPhoneField(
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              initialCountryCode: 'NP',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ),
        ),
      ],
    );
  }
}
