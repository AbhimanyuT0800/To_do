import 'package:chat_app/view/widgets/auth/otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// verifyOtpTextField(BuildContext context) {
//   final TextEditingController otpController1 = TextEditingController();
//   final TextEditingController otpController2 = TextEditingController();
//   final TextEditingController otpController3 = TextEditingController();
//   final TextEditingController otpController4 = TextEditingController();
//   final FocusNode focusNode1 = FocusNode();
//   final FocusNode focusNode2 = FocusNode();
//   final FocusNode focusNode3 = FocusNode();
//   final FocusNode focusNode4 = FocusNode();

//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       OtpTextField(controller: otpController1, focusNode: focusNode1),
//       OtpTextField(controller: otpController2, focusNode: focusNode2),
//       OtpTextField(controller: otpController3, focusNode: focusNode3),
//       OtpTextField(controller: otpController4, focusNode: focusNode4),
//     ],
//   );
// }

class VerifyOtpField extends ConsumerWidget {
  VerifyOtpField({super.key});
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();
  final TextEditingController otpController5 = TextEditingController();
  final TextEditingController otpController6 = TextEditingController();

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();
  final FocusNode focusNode5 = FocusNode();
  final FocusNode focusNode6 = FocusNode();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        otpTextField(
            context: context,
            ref: ref,
            controller: otpController1,
            focusNode: focusNode1),
        otpTextField(
            context: context,
            ref: ref,
            controller: otpController2,
            focusNode: focusNode2),
        otpTextField(
            context: context,
            ref: ref,
            controller: otpController3,
            focusNode: focusNode3),
        otpTextField(
            context: context,
            ref: ref,
            controller: otpController4,
            focusNode: focusNode4),
        otpTextField(
            context: context,
            ref: ref,
            controller: otpController5,
            focusNode: focusNode5),
        otpTextField(
            context: context,
            ref: ref,
            controller: otpController6,
            focusNode: focusNode6),
      ],
    );
  }
}
