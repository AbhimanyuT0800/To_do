import 'dart:developer';

import 'package:chat_app/controller/providers/verify_otp/otp_provider.dart';
import 'package:chat_app/utils/dynamic_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

SizedBox otpTextField(
    {required TextEditingController controller,
    required FocusNode focusNode,
    required BuildContext context,
    required WidgetRef ref}) {
  return SizedBox(
    width: context.screenWidth(15.5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: context.screenWidth(10),
          child: TextFormField(
            controller: controller,
            focusNode: focusNode,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            style: TextStyle(fontSize: 24),
            decoration: InputDecoration(
              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                ),
              ),
            ),
            onChanged: (String value) {
              ref.read(otpProvider.notifier).state =
                  ref.read(otpProvider) + value;
              // Move focus to the next TextField
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
                log(ref.watch(otpProvider));
              }
            },
          ),
        ),
      ],
    ),
  );
}
