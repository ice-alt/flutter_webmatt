// void main() {
//   runApp(MyApp());
// }

// void main() {
//   runApp(const TabBarDemo());
// }

//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webmatt/staff_sidemenu.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Master Ashesi Timetable',
      home: //FirstPage(),
          //StudentPage(),
          StaffPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
