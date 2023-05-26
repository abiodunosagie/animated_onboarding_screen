// ignore: file_names
import 'package:animated_onboarding_screen/components/signin_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

Future<Object?> customSigninDialogue(
  BuildContext context,
) {
  return showGeneralDialog(
    barrierDismissible: true,
    barrierLabel: 'Sign In',
    context: context,
    transitionDuration: const Duration(milliseconds: 400),
    transitionBuilder: (_, animation, secondaryAnimation, child) {
      Tween<Offset> tween;
      tween = Tween(begin: const Offset(0, -1), end: Offset.zero);
      return SlideTransition(
        position: tween.animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ),
        ),
        child: child,
      );
    },
    pageBuilder: (context, _, __) => Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.65,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(
            0.94,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              40,
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'Access to 240+ hours of content. Learn design and code, by building real apps with Flutter and Swift.',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SigninForm(
                    headingtext: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: 'assets/icons/email.svg',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const SigninForm(
                    headingtext: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    prefixIcon: 'assets/icons/email.svg',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 24,
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(
                          0xfff77d8e,
                        ),
                        minimumSize: const Size(
                          double.infinity,
                          56,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                          ),
                        ),
                      ),
                      icon: const Icon(Icons.arrow_forward,
                          color: Color(0xfff30037)),
                      label: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Text(
                          'OR',
                          style: GoogleFonts.poppins(
                            color: Colors.black26,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                    ),
                    child: Text(
                      'Signup with Email, Apple or Google',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/email_box.svg',
                          height: 64,
                          width: 64,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/apple_box.svg',
                          height: 64,
                          width: 64,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/google_box.svg',
                          height: 64,
                          width: 64,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: -48,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    // ignore: body_might_complete_normally_nullable
  ).then((_) {
    // ignore: avoid_print
    print('dialog close');
  });
}
