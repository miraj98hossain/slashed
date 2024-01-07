import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slashed/screens/Register/widgets/CustomTextField.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        leadingWidth: 10,
        title: Center(
          child: Text(
            "Register",
            style: GoogleFonts.dmSans(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                letterSpacing: -0.4,
                color: Colors.black),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Getting Started",
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
                "Seems you are new here,",
                style: GoogleFonts.dmSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.8,
                    color: Colors.grey),
              ),
              Text(
                "Let’s set up your profile",
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
              const Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      height: 56,
                      width: 295,
                      lable: "Full Name",
                      inputType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomTextField(
                      height: 56,
                      width: 295,
                      lable: "Email Address",
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomTextField(
                      height: 56,
                      width: 295,
                      lable: "Current Address",
                      inputType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(children: [
                      CustomTextField(
                        height: 56,
                        width: 128,
                        lable: "Zip Code",
                        inputType: TextInputType.name,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CustomTextField(
                        height: 56,
                        width: 152,
                        lable: "State",
                        inputType: TextInputType.name,
                      ),
                    ]),
                    SizedBox(
                      height: 25,
                    ),
                    CustomTextField(
                      height: 56,
                      width: 295,
                      lable: "Password",
                      inputType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomTextField(
                      height: 56,
                      width: 295,
                      lable: "Confirm Password",
                      inputType: TextInputType.name,
                    ),
                  ],
                ),
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
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                "By creating an account, you agree to our",
                style: GoogleFonts.dmSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.8,
                    color: Colors.grey),
              ),
               Text(
                "Term and Conditions",
                style: GoogleFonts.dmSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.8,
                    color: const Color(0xFFFC767C)),
              )

                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 56,
                width: 295,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFFF59D4),
                      Color(0xFFFA6F8B),
                      Color(0xFFFF8750),

                    
                    ]
                  ),
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
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}


