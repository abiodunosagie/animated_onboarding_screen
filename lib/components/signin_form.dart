import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';


class SigninForm extends StatelessWidget {
  const SigninForm({
    super.key,
    required this.headingtext,
    required this.prefixIcon,
    this.obscureText = false,
    required this.keyboardType,
  });
  final String headingtext, prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headingtext,
            style: GoogleFonts.poppins(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
            ),
            child: TextFormField(
              keyboardType: keyboardType,
              obscureText: obscureText,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: SvgPicture.asset(
                    prefixIcon,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
