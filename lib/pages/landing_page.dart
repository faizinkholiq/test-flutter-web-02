import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem(String title, int index) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Color(0xff1D1E3C),
              fontWeight:
                  index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
            ),
          ),
          Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
              ))
        ]),
      );
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: Column(
              children: [
                // Navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(children: [
                      navItem("Guides", 0),
                      SizedBox(
                        width: 50,
                      ),
                      navItem("Pricing", 1),
                      SizedBox(
                        width: 50,
                      ),
                      navItem("Team", 2),
                      SizedBox(
                        width: 50,
                      ),
                      navItem("Stories", 3),
                    ]),
                    Image.asset(
                      'btn.png',
                      width: 163,
                      height: 53,
                    ),
                  ],
                ),
                // Content
                SizedBox(height: 76),
                Image.asset("illustration.png"),
                // Footer
                SizedBox(
                  height: 84,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    'Icon_down_solid.png',
                    width: 24,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text('Scroll to learn more',
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.black)),
                ])
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
