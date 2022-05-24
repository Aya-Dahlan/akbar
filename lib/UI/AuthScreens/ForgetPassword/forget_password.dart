import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatefulWidget {
  @override
  __ForgetPasswordState createState() => __ForgetPasswordState();
}

class __ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController _emailTextEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        //  padding:  EdgeInsetsDirectional.only(start: 30,end: 30,top: 50,bottom: 10),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 200.w,
                    )),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "نسيت كلمه المرور ",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),

                SizedBox(height: 20.h,),
                Center(
                  child: Container(
                    height: 50.h,
                    width: 350.w,
                    //  clipBehavior: Clip.antiAlias,
                    child: TextField(
                      //  clipBehavior: Clip.antiAlias,
                      controller: _emailTextEditingController,

                      style: TextStyle(

                        fontSize: 13.sp,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsetsDirectional.only(start: 20),
                        hintText: "أدخل اسم المستخم او البريد الالكتروني",
                        hintStyle: TextStyle(

                          color: Colors.black38,
                          fontSize: 13.sp,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1.5.w,
                            color: Colors.blueAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 2.w,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: SizedBox(
                    width: 350.w,
                    height: 40.h,
                    child: RaisedButton(
                      onPressed: () {
                        //  _login();
                      },
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      child: Text(
                        "احصل على كلمه مرور جديدة",
                        style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),

    );
  }
// void _login(){
//   if(_emailTextEditingController.text.isNotEmpty &&
//       _passwordTextEditingController.text.isNotEmpty){
//     Navigator.pushReplacementNamed(context, "/Home_secreen");
//   }
}
