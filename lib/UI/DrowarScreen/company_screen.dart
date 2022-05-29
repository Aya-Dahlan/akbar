import 'package:akbar/UI/BottombarScreens/HomePage/khabar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer/Drowar.dart';

class  CompanyScreen extends StatefulWidget {
  @override
  _CompanyScreenState createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  static final GlobalKey<ScaffoldState> scaffoldKey =
  GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drowar(),
      appBar: AppBar(
        centerTitle: true,

        title: const Text('وظائف شركات '),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          //   IconButton(icon: Icon(Icons.location_on,color: Colors.white,), onPressed: (){})
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        // centerTitle: tr
      ),
      // appBar: AppBar(
      //
      //
      //   centerTitle: true,
      //
      //   title: Text("الرئيسية"),
      //
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.format_list_bulleted,
      //       color: Colors.white,
      //     ),
      //     onPressed: () => scaffoldKey.currentState.openDrawer(),
      //   ),
      //   actions: [
      //     IconButton(
      //         icon: Icon(
      //           Icons.location_on,
      //           color: Colors.white,
      //         ),
      //         onPressed: () {
      //
      //         })
      //   ],
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Color(0xFF7F00FF),
      //   // centerTitle: tr
      // ),

      body: ListView.builder(
        itemBuilder: (context, index) {
          return KhabarWidget(
              "تعلن جامعة شقراء دورات وبرامج تدريبية مجانية (عن بُعد) مع شهادة (حضور)",
              "");
        },
        itemCount: 9,
      ),
    );
  }
}
