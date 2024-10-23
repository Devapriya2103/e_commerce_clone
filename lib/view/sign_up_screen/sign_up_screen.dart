import 'package:e_commerce_clone/utils/color_constants.dart';
import 'package:e_commerce_clone/view/forgot_pass_screen/forgot_pass_screen.dart';
import 'package:e_commerce_clone/view/global_widgets/custom_button.dart';
import 'package:e_commerce_clone/view/global_widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(vertical: 19,horizontal: 26),
          child: Column(
            children: [
              Text("Create an account",
              maxLines: 2,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: ColorConstants.BLACK,
              ),
              ),
              SizedBox(height: 36),
              CustomInputField(
                hintText: "Username or Email",
                prefixIcon: Icons.person,
              ),
              SizedBox(height: 31),
              CustomInputField(
                hintText: "Password",
                prefixIcon: Icons.lock,
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              SizedBox(height: 31),
              CustomInputField(
                hintText: "Confirm Password",
                prefixIcon: Icons.lock,
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              SizedBox(height: 9),
              Text("By clicking the Register button, you agree to the public offer",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: ColorConstants.BLACK,
              ),
              ),
              SizedBox(height: 52),
              CustomButton(buttonText: "Create Account",
              onButtonPressed: () {
                Navigator.pushAndRemoveUntil(
                  context, 
                  MaterialPageRoute(builder: (context) => ForgotPassScreen(),), 
                  (route) => false,
                );
              },
              ),
            ],
          ),
          ),
      ),
    );
  }
}