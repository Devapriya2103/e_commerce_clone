import 'package:e_commerce_clone/utils/color_constants.dart';
import 'package:e_commerce_clone/view/get_started_screen/get_started_screen.dart';
import 'package:e_commerce_clone/view/global_widgets/custom_button.dart';
import 'package:e_commerce_clone/view/global_widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(vertical: 19,horizontal: 26),
          child: Column(
            children: [
              Text("Forgot Password?",
              maxLines: 2,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: ColorConstants.BLACK,
              ),
              ),
              SizedBox(height: 36),
              CustomInputField(
                hintText: "Enter your email address",
                prefixIcon: Icons.email,
              ),
              SizedBox(height: 31),
              Text("* We will send you a message to set or reset your new password",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: ColorConstants.BLACK,
              ),
              ),
              SizedBox(height: 52),
              CustomButton(buttonText: "Submit",
              onButtonPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedScreen(),));
              },
              ),
            ],
          ),
        ),
      ),
    );
  }
}