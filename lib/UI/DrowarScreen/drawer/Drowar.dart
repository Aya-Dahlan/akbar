import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import '../../BottombarScreens/MainScreen/main_screen.dart';
import '../general_screen.dart';
import 'about.dart';

import 'my_header_drawer.dart';

class Drowar extends StatefulWidget {
  // const Drowar({Key? key}) : super(key: key);
  var currentPage = DrawerSections.values;

  @override
  _DrowarState createState() => _DrowarState();
}

class _DrowarState extends State<Drowar> {

  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueAccent,
        child: Column(
          children: [
            MyHeaderDrawer(isLogin),
            MyDrawerList(context , isLogin),
          ],
        ),
      ),
    );
  }
}

Widget MyDrawerList(BuildContext context, bool isLogin) {
  return SingleChildScrollView(
    child: Container(
      color: Colors.blueAccent,
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          // menueItem(1, "الرسائل", (Icons.chat),
          //     MainPage().currentPage == DrawerSections.massege ? true : false , ()=>
          //   Navigator.pushNamed(context, '/messages')
          //     //url_launcher
          //   //launch("")
          //    ),

          menueItem(1, "اخبار عامة",
              MainScreen().currentPage == DrawerSections.general ? true : false, ()=>  Navigator.pushNamed(context, '/GeneralScreen')),
          SizedBox(
            height: 5.w,
          ),
          menueItem(2, "وظائف مدنية",
              MainScreen().currentPage == DrawerSections.about ? true : false,()=>Navigator.pushNamed(context, '/MadaniaScreen')),

          SizedBox(
            height: 5.w,
          ),
          menueItem(4, "وظاثف عسكرية",
              MainScreen().currentPage == DrawerSections.who ? true : false, ()=>Navigator.pushNamed(context, '/AskarScreen')),
          SizedBox(
            height: 5.w,
          ),
          menueItem(5, "وظائف شركات",
              MainScreen().currentPage == DrawerSections.contactUs ? true : false, ()=>Navigator.pushNamed(context, '/CompanyScreen')),
          SizedBox(
            height: 5.w,
          ),
           menueItem(6, "نتائج التوظيف",
              MainScreen().currentPage == DrawerSections.logout ? true : false, ()=> Navigator.pushNamed(context, '/ResultScreen')),

          SizedBox(
            height: 5.h,
          ),    menueItem(6, "الاعدادات ",
              MainScreen().currentPage == DrawerSections.logout ? true : false, ()=>Navigator.pushNamed(context, '/SettingAbk')),

          // SizedBox(
          //   height: 5.h,
          // ),

          // Container(
          //   color: Colors.blueAccent,
          //   height: 30,
          // )
        ],
      ),
    ),
  );
}

Widget menueItem(
  int id,
  String title,

  bool selected,
  GestureTapCallback onTap,
) {
/*       Navigator.pushNamed(context , );

        if(id==1){
          MainPage().currentPage= DrawerSections.massege;
        }
        else if(id==2){
          MainPage().currentPage=DrawerSections.addSalon as List<DrawerSections> ;

        } else if(id==3){
          MainPage().currentPage=DrawerSections.about as List<DrawerSections>;

        } else if(id==4){
          MainPage().currentPage=DrawerSections.who as List<DrawerSections>;

        }else if(id==5){
          MainPage().currentPage=DrawerSections.contactUs as List<DrawerSections>;

        }else if(id==6){
          MainPage().currentPage=DrawerSections.logout as List<DrawerSections> ;

        }*/
  return Material(
    color: Colors.blueAccent,
    child: InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(10),

              child: Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  width: 500,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)

                  ),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

            ),

        ),


  );
}

enum DrawerSections {
  general,
  addSalon,
  about,
  who,
  contactUs,
  logout,
}
