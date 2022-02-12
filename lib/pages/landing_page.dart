import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        Row(
                          children: [
                            Submenu(text: "Guides", active: true,),
                            SizedBox(width: 50,),
                            Submenu(text: "Pricing", active: false,),
                            SizedBox(width: 50,),
                            Submenu(text: "Team", active: false,),
                            SizedBox(width: 50,),
                            Submenu(text: "Stories", active: false,),
                          ]
                        ),
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
                    SizedBox(height: 84,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('Icon_down_solid.png', width: 24,),
                        SizedBox(height: 13,),
                        Text('Scroll to learn more', style: GoogleFonts.poppins(fontSize: 20, color: Colors.black)),
                      ]
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}

class Submenu extends StatelessWidget {
  String text;
  bool active;

  Submenu({
    required this.text,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Color(0xff1D1E3C),
            fontWeight: active? FontWeight.w500 : FontWeight.w300,
          ),
        ),
        Container(
          width: 66,
          height: 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: active? Color(0xffFE998D) : Colors.transparent,
          )
        )
      ]
    );
  }
}
