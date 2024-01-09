import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slashed/screens/Register/register.dart';
import 'package:slashed/screens/Register/widgets/CustomTextField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
        //   },
        //   icon: const Icon(
        //     Icons.arrow_back,
        //   ),
        // ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let’s Sign You In",
              style: GoogleFonts.dmSans(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -1.6,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Welcome back, you’ve been missed!",
              style: GoogleFonts.dmSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.8,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomTextField(
              width: double.maxFinite,
              height: 56,
              lable: "Email Address",
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomTextField(
              width: double.maxFinite,
              height: 56,
              lable: "Password",
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Checkbox(
                    visualDensity: VisualDensity(
                      horizontal: -4.0, // Adjust the width
                      vertical: -2.0, // Adjust the height
                    ),
                    checkColor: Colors.white,
                    fillColor: MaterialStatePropertyAll(Color(0xFFFC767C)),
                    value: true,
                    onChanged: null),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Remember me",
                  style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.3,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 65,
                ),
                Text(
                  "Forgot Password?",
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.3,
                    color: const Color(0xFFFC767C),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 56,
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color(0xFFFF59D4),
                  Color(0xFFFA6F8B),
                  Color(0xFFFF8750),
                ]),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  "Register",
                  style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.8,
                      color: const Color.fromARGB(255, 248, 248, 248)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Color(0xFFFC767C),
                    height: 20,
                    indent: 0,
                    endIndent: 5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("or"),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Color(0xFFFC767C),
                    height: 20,
                    indent: 5,
                    endIndent: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 56,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xFFF3F6F8),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage("assets/icons/Logo Google.jpg")),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue With Google",
                      style: GoogleFonts.dmSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.4,
                          color: const Color.fromARGB(255, 8, 8, 8)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.3,
                  )
                ),
                const SizedBox(width: 5,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
                  },

                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.3,
                        color: const Color(0xFFFC767C),
                    )
                  ),
                )
              ]
            )

          ],
        ),
      ),
    );
  }
}
