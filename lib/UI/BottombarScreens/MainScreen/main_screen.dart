/// Flutter code sample for BottomNavigationBar
import 'package:akbar/UI/BottombarScreens/MainScreen/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../DrowarScreen/drawer/Drowar.dart';
import '../HomePage/home_screen.dart';
import '../NotificationScreen/notification_screen.dart';
import '../ProfileScreen/profile_screen.dart';
import '../SearchScreen/search_screen.dart';

/// This is the main application widget.

/// This is the stateful widget that the main application instantiates.
class MainScreen extends StatefulWidget {
  //const MyStatefulWidget({Key? key}) : super(key: key);
//  var currentPage = DrawerSections.values;
  static const Text titlePage = Text("");
  var currentPage = DrawerSections.values;


  @override
  State<MainScreen> createState() => _MainScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MainScreenState extends State<MainScreen> {
  static final GlobalKey<ScaffoldState> scaffoldKey =
  GlobalKey<ScaffoldState>();
  static bool isFavorite = false;
  static bool isCart = false;

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 18, fontWeight: FontWeight.normal);
  static List<Titles> _widgetOptions = <Titles>[
    Titles(title: "اخر الاخبار", widget: HomeScreen()),


    Titles(title: "بحث", widget: SearchPage()),
    Titles(title: "الاشعارات", widget: NotificationScreen()),

        Titles(title: "الملف الشخصي", widget: ProfileScreen())

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
     drawer: Drowar(),
      appBar: AppBar(


        centerTitle: true,

        title: Text(_widgetOptions[_selectedIndex].title),

        leading: IconButton(
          icon: Icon(
            Icons.format_list_bulleted,
            color: Colors.white,
          ),
    // onPressed: (){},
      onPressed: () => scaffoldKey.currentState?.openDrawer(),
        ),
        // actions: [
        //   IconButton(
        //       icon: Icon(
        //         Icons.location_on,
        //         color: Colors.white,
        //       ),
        //       onPressed: () {
        //
        //       })
        // ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        // centerTitle: tr
      ),
      body: _widgetOptions[_selectedIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFF707070),
        selectedItemColor: Colors.blueAccent,
        elevation: 15,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        mouseCursor: MouseCursor.uncontrolled,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 25,
            ),
            activeIcon: Icon(
              Icons.home,
              size: 25,
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.search,
              size: 25,
            ),
            activeIcon: Icon(
              Icons.search,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 25,
            ),
            activeIcon: Icon(
              Icons.notifications,
              size: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_identity,
              color: Color(0xFF707070),
              size: 25,
            ),
            activeIcon: Icon(
              Icons.person,
              color: Colors.blueAccent,
              size: 25,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

      ),
    );
  }
}
