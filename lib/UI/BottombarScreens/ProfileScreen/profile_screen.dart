import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProfileScreen extends StatefulWidget {
  // const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  static final GlobalKey<ScaffoldState> scaffoldKey =
  GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
     // drawer: Drowar(),
      // appBar: AppBar(
      //   centerTitle: true,
      //
      //   title: Text("حسابي"),
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
      //         onPressed: () {})
      //   ],
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Color(0xFF7F00FF),
      //   // centerTitle: tr
      // ),
      body: Center(
        child: Container(
          width: 320.w,
          height: 440.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 6,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    width: 100.w,
                    height: 100.h,
                    clipBehavior:Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9pszu5sKKHLZGfxcN0fxd2nvTTEOkE_OJrA&usqp=CAU",
                    fit: BoxFit.cover,
                    ),

                  ),
                  Positioned(
                    top: 90,
                    right: 2,
                    // left: 100,
                    width: 30.w,

                    height: 25.h,

                    child: Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 18,
                        ),
                        onPressed: () {},
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade300,

                        //  backgroundBlendMode: BlendMode.color
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "محمد احمد",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // SizedBox(
                  //   width: 15.w,
                  // ),
                ],
              ),
              Text(
                "exam@gmail.com",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 1.5,
                height: 0,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.drive_file_rename_outline,
                        color: Colors.blueAccent,
                      ),
                      onPressed: () {}),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "تعديل الاسم",
                    style:
                        TextStyle(fontSize: 16.sp, color: Colors.grey.shade700),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 1.5,
                height: 0,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.alternate_email,
                        color: Colors.blueAccent,
                      ),
                      onPressed: () {}),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "تغيير البريد الالكتروني",
                    style:
                        TextStyle(fontSize: 16.sp, color: Colors.grey.shade700),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 1.5,
                height: 0,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.lock_outline_sharp,
                        color: Colors.blueAccent,
                      ),
                      onPressed: () {}),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "تغيير كلمة المرور",
                    style:
                        TextStyle(fontSize: 16.sp, color: Colors.grey.shade700),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 1.5,
                height: 0,
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap:(){Navigator.pushNamed((context), '/About');},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.info_rounded,
                          color: Colors.blueAccent,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "حول التطبيق",
                      style:
                      TextStyle(fontSize: 16.sp, color: Colors.grey.shade700),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 1.5,
                height: 0,
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap:(){Navigator.pushNamed((context), '/contact_us');},

                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed((context), '/contact_us');

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.add_ic_call,
                            color: Colors.blueAccent,
                          ),
                          onPressed: () {}),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        " تواصل معنا ",
                        style:
                        TextStyle(fontSize: 16.sp, color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              // Divider(
              //   thickness: 1.5,
              //   height: 0,
              // ),
              // SizedBox(
              //   height: 10.h,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     IconButton(
              //         icon: Icon(
              //           Icons.star_border,
              //           color: Colors.deepPurple,
              //         ),
              //         onPressed: () {}),
              //     SizedBox(
              //       width: 5.w,
              //     ),
              //     // Text(
              //     //   "قيم التطبيق",
              //     //   style:
              //     //       TextStyle(fontSize: 16.sp, color: Colors.grey.shade700),
              //     // ),
              //     SizedBox(
              //       width: 15.w,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
