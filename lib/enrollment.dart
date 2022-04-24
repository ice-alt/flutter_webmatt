import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Enrollment extends StatefulWidget {
  const Enrollment({Key? key}) : super(key: key);

  @override
  State<Enrollment> createState() => _EnrollmentState();
}

List dropItems = ["2022 Semester 1", "2022 Semester 2"];

class _EnrollmentState extends State<Enrollment> {
  late PageController pagecontroller;

  @override
  void initState() {
    super.initState();
    pagecontroller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.white,
    //   child: Text("Select a semester"),
    // );
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   appBar: AppBar(
    //     backgroundColor: Colors.red.shade800,
    //     title: Text('Enrollment'),
    //   ),
    //   body: Container(
    //       //color: Colors.white,
    //       child: Column(
    //     children: [
    //       Container(
    //         child: Text(
    //           "Select a semester:",
    //           style: TextStyle(color: Colors.red.shade800, fontSize: 15),
    //         ),
    //         margin: EdgeInsets.all(15),
    //       )
    //     ],
    //   )
    // child: Text(
    //   "Select a semester:",
    //   style: TextStyle(color: Colors.red.shade800, fontSize: 15),
    // ),
    // // padding: EdgeInsets.all(15),
    // margin: EdgeInsets.all(15),
    // ),
    //  );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: pagecontroller,
                children: dropItems.map((e) => PageContainer(e)).toList(),
              ),
            ),
            Positioned(
              right: 80,
              top: 50,
              child: Container(
                height: 360,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 200,
                        color: Colors.blue,
                        child: Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 250),
                              width: 0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                "2022 Semester 1",
                                style: GoogleFonts.nunito(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 21.0),
                              ),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.centerRight,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageContainer extends StatefulWidget {
  // const PageContainer({Key? key}) : super(key: key);
  final String text;
  PageContainer(this.text);

  @override
  _PageContainerState createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          widget.text.toUpperCase(),
          style: GoogleFonts.roboto(
              fontSize: 150,
              fontWeight: FontWeight.w900,
              color: Colors.black26),
        ),
      ),
    );
  }
}
