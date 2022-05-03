// void main() {
//   runApp(MyApp());
// }

// void main() {
//   runApp(const TabBarDemo());
// }

//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'asc_page.dart';

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
      home: //LecturerPage(),
          // ClubheadPage(),
          ASCPage(),
      //SigninView(),
      //FirstPage(),
      //RegistryPage(title: ''),
      //FinancePage(),
      // StudentPage(),
      //StaffPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
