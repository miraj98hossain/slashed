import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreenAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const LandingScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFF59D4),
            Color(0xFFFA6F8B),
            Color(0xFFFF8750),
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(
              Icons.category_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          const Image(
            image: AssetImage("assets/icons/Logo.png"),
            height: 27,
            width: 35,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Slashed",
            style: GoogleFonts.dmSans(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                letterSpacing: -1.6,
                color: Colors.white),
          ),
          const Spacer(),
          const Icon(Icons.person_2, color: Colors.white, size: 24),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 22,
            width: 66,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(46),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                "Inscription",
                style: GoogleFonts.dmSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.3,
                  color: const Color(0xFFFC767C),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
