import 'package:e_commerce_clone/utils/app_styles.dart';
import 'package:e_commerce_clone/utils/color_constants.dart';
import 'package:e_commerce_clone/view/global_widgets/custom_button.dart';
import 'package:e_commerce_clone/view/global_widgets/custom_input_field.dart';
import 'package:e_commerce_clone/view/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 19,horizontal: 26),
                child: Column(
                    children: [
                        Text("Welcome Back!",
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
                        ),
                        SizedBox(height: 9), 
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                                Text("Forgot password",
                                style: AppStyles.montserratPara.copyWith(
                                    color: ColorConstants.PRIMARY,
                                    fontSize: 12,
                                ),
                             ),
                            ],
                        ),
                        SizedBox(height: 52),
                       CustomButton(
                        buttonText: "Login",
                        onButtonPressed: () {
                          Navigator.pushAndRemoveUntil(context, 
                          MaterialPageRoute(builder: (context) => SignUpScreen(),), 
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






// CustomInputField(
//     hintText: "Confirm Password",
//     prefixIcon: Icons.lock,
//     suffixIcon: Icons.visibility_sharp,
//  ),

