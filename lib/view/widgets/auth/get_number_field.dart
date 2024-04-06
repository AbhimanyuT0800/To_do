import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

// text field with choose country code

Widget getNumberTextField(TextEditingController controller) {
  FocusNode focusNode = FocusNode();
  return IntlPhoneField(
    keyboardType: TextInputType.phone,
    focusNode: focusNode,
    decoration: InputDecoration(
      labelText: 'Phone Number',
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    // set initial country as india
    initialCountryCode: "IN",
    onChanged: (phone) {
      // add text the controller for pass the phone number
      controller.text = phone.completeNumber;
    },
  );
}
