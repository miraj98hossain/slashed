import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:slashed/screens/Landing_Screen/widgets/landing_screen_appbar.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LandingScreenAppbar(),
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 56,
                    width: 250,
                    padding: const EdgeInsets.only(right: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      // color: const Color.fromARGB(255, 109, 157, 189),
                      border: Border.all(
                          width: 1,
                          color: const Color(0xFF979797).withOpacity(0.2)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 180,
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              hintText: "Search location...",
                              hintStyle: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.3,
                                color: const Color(0xFF979797),
                              ),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFF59D4),
                                Color(0xFFFA6F8B),
                                Color(0xFFFF8750),
                              ],
                            ),
                          ),
                          child: const Image(
                              image: AssetImage("assets/icons/Location.png")),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 112.5,
                        height: 2,
                        child: Slider(
                          value: 0.5,
                          onChanged: (value) {},
                          activeColor: const Color(0xFFFF59D4),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "5.0 km",
                        style:
                            TextStyle(color: Color(0xFF979797), fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Select Category",
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.35,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 71,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: const Color(0xFFF0FAF2),
                              border: Border.all(
                                width: 2,
                                color: const Color(0xFF4FBF67),
                              ),
                            ),
                            child: const Center(
                              child: Image(
                                image:
                                    AssetImage("assets/icons/Food_Drink01.png"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Burgers",
                            style: GoogleFonts.dmSans(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10);
                    },
                    itemCount: 5),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Feature Partners",
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.35,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 133,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 133,
                        width: 230,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                        ),
                        child: Stack(
                          children: [
                            const Positioned(
                              child: Image(
                                image: AssetImage(
                                    "assets/images/Feature_partner.png"),
                              ),
                            ),
                            Positioned(
                              left: 9,
                              top: 10,
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 60,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFFFB132),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Featured",
                                        style: GoogleFonts.dmSans(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: -0.3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10);
                    },
                    itemCount: 5),
              )
            ],
          ),
        ),
      ),
    );
  }
}
