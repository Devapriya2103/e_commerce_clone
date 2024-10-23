import 'package:e_commerce_clone/utils/color_constants.dart';
import 'package:e_commerce_clone/utils/image_constants.dart';
import 'package:e_commerce_clone/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: 
        Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("1",
              style: GoogleFonts.montserrat(
                color: ColorConstants.BLACK,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              ),
              Text("/3",
              style: GoogleFonts.montserrat(
                color: ColorConstants.GREYSHD3,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              ),
            ],
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                  ),);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 17),
              child: Text("Skip",
              style: GoogleFonts.montserrat(
                color: ColorConstants.BLACK,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                 ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageConstants.ONBOARDING,
              height: 300,
              width: 300,
              ),
              SizedBox(height: 15),
              Text("Choose Products",
              style: GoogleFonts.montserrat(
                color: ColorConstants.BLACK,
                fontSize: 24,
                fontWeight: FontWeight.w900,
                 ),
              ),
              SizedBox(height: 10),
              Text(
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                 color: ColorConstants.GREYSHD1,
                 fontSize: 14,
                 fontWeight: FontWeight.w600,
               ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19,vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Prev",
                style: GoogleFonts.montserrat(
                  color: ColorConstants.GREYSHD2,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
             ),
            Text("Next",
                style: GoogleFonts.montserrat(
                  color: ColorConstants.PRIMARY,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
             ),
          ],
        ),
      ),
    );
  }
}