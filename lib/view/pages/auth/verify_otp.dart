import 'package:chat_app/utils/const/images.dart';
import 'package:chat_app/utils/dynamic_sizes.dart';
import 'package:chat_app/view/widgets/auth/auth_submit_button.dart';
import 'package:chat_app/view/widgets/auth/verify_otp_row_of_field.dart';
import 'package:flutter/material.dart';

class VerifyOtpPage extends StatelessWidget {
  VerifyOtpPage({super.key});

  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: context.screenHeight(10),
              ),
              Container(
                width: double.infinity,
                height: context.screenHeight(30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Images.authVerification),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: context.screenHeight(5),
              ),
              const Text(
                'OTP VERIFICATION',
                style: TextStyle(
                    color: Color(0xff1C448E),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: context.screenHeight(1),
              ),
              const Text(
                'We have sent an OTP to \n1234567890',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFFAFD3E2), fontSize: 18),
              ),
              SizedBox(
                height: context.screenHeight(3),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: context.screenWidth(0)),
                child: Form(key: globalKey, child: VerifyOtpField()),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: context.screenHeight(3),
                ),
                child: Center(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      //  TODO
                    },
                    splashColor: Colors.white,
                    child: authSubmitButton(context: context, text: 'Verify'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
