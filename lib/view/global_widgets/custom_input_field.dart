import 'package:e_commerce_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {
  String? hintText;
  IconData? prefixIcon;
  IconData? suffixIcon;
  CustomInputField({
    this.hintText, this.prefixIcon, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: ColorConstants.GREYSHD4,
            hintText: hintText,
            hintStyle: GoogleFonts.montserrat(
                color: ColorConstants.GREYSHD5,
                fontWeight: FontWeight.w600,
                fontSize: 12,
            ),
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            suffixIcon: Icon(suffixIcon),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: ColorConstants.GREYSHD1,
                ),
            ),
        ),
    );
  }
}