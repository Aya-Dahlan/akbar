import 'package:akbar/UI/BottombarScreens/HomePage/khabar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
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
      //   drawer: Drowar(),
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

      body: Stack(
        children:[  ListView.builder(
          itemBuilder: (context, index) {

            return KhabarWidget(
                "تعلن جامعة شقراء دورات وبرامج تدريبية مجانية (عن بُعد) مع شهادة (حضور)",""
            );
          },
          itemCount: 9,
        ),


          PositionedDirectional(
         //  top: 650,
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300
              ),
              child: Row(
                children: [
                 
                  Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: Text("اعلانات جوجل"),
                  ),
                  TextButton(onPressed: (){}, child:Icon(Icons.delete_forever,color: Colors.red,)),
                ],
              ),
            ),
          ),
        ]

      ),
    );
  }
}
