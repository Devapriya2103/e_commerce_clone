import 'package:e_commerce_clone/utils/color_constants.dart';
import 'package:e_commerce_clone/utils/image_constants.dart';
import 'package:e_commerce_clone/view/global_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(ImageConstants.GETSTARTED),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(top: 70, bottom: 34, left: 37, right: 37),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    ColorConstants.BLACK.withOpacity(0),
                    ColorConstants.BLACK.withOpacity(.6),
                    ColorConstants.BLACK.withOpacity(.7),
                    ColorConstants.BLACK.withOpacity(1),
                  ]
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("You want Authentic, here you go!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: ColorConstants.WHITE,
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  SizedBox(height: 14),
                  Text("Find it here, buy it now!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: ColorConstants.WHITE,
                    fontSize: 14,
                  ),
                  ),
                  SizedBox(height: 44),
                  CustomButton(buttonText: "Get Started",
                  onButtonPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}