import 'package:chat_app/utils/const/images.dart';
import 'package:chat_app/utils/dynamic_sizes.dart';
import 'package:chat_app/view/pages/auth/verify_otp.dart';
import 'package:chat_app/view/widgets/auth/auth_submit_button.dart';
import 'package:chat_app/view/widgets/auth/get_number_field.dart';
import 'package:flutter/material.dart';

class SignInWithPhone extends StatelessWidget {
  SignInWithPhone({super.key});

  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                      fit: BoxFit.cover)),
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
              'Please enter your mobile number \nto verfy your account',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFFAFD3E2), fontSize: 18),
            ),
            SizedBox(
              height: context.screenHeight(3),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.screenWidth(5)),
              child: Form(
                key: globalKey,
                child: getNumberTextField(controller),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.screenHeight(.5),
              ),
              child: Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyOtpPage(),
                        ));
                    //  TODO
                  },
                  splashColor: Colors.white,
                  child: authSubmitButton(context: context, text: 'Get OTP'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
