import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                "Hallo, semuanya!", 
                style: GoogleFonts.poppins(
                  fontSize: 30,
                ),
              ),
              Text(
                "Hallo, semuanya!", 
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
