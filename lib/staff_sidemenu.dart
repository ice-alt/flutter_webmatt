import 'package:ant_icons/ant_icons.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webmatt/billing.dart';
import 'package:flutter_webmatt/edit_events_classes.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'easy_sidemenu Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StaffPage(title: 'easy_sidemenu Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StaffPage extends StatefulWidget {
  StaffPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _StaffPageState createState() => _StaffPageState();
}

class _StaffPageState extends State<StaffPage> {
  PageController page = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade800,
      // appBar: AppBar(
      //   title: Text('widget title'),
      //   centerTitle: true,
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: page,
            style: SideMenuStyle(
              unselectedTitleTextStyle: TextStyle(color: Colors.white),
              unselectedIconColor: Colors.white,
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Colors.red.shade300,
              selectedColor: Colors.white,
              selectedTitleTextStyle: TextStyle(color: Colors.red.shade800),
              selectedIconColor: Colors.red.shade800,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              // backgroundColor: Colors.blueGrey[700]
            ),
            title: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 150,
                    maxWidth: 150,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        AntIcons.schedule_outline,
                        size: 50.0,
                        color: Colors.white,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 05.0, top: 08.0),
                        child: Text(
                          'MATT',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  indent: 8.0,
                  endIndent: 8.0,
                ),
              ],
            ),
            footer: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ashesi University',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Course Approval',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: Icon(Icons.pending_actions_outlined),
              ),
              SideMenuItem(
                priority: 1,
                title: 'Add Events',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: Icon(Icons.note_add_outlined),
              ),
              SideMenuItem(
                priority: 2,
                title: 'Billing',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: Icon(Icons.money),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Course Approval',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                EditEvents(),
                Billing(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
