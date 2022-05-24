import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  @override
  __RegisterScreenState createState() => __RegisterScreenState();
}

class __RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _nameTextEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _nameTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
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
                    "تسجيل حساب جديد",
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
                      controller: _nameTextEditingController,

                      style: TextStyle(

                        fontSize: 13.sp,
                      ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsetsDirectional.only(start: 20),
                        hintText: "اسم المستخدم",
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
                        hintText: "أدخل البريد الالكتروني",
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
                Center(
                  child: Container(

                    width: 350.w,
                    child: TextField(
                      controller: _passwordTextEditingController,
                      style: TextStyle(
                        fontSize: 13.sp,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsetsDirectional.only(start: 20),
                        hintText: "ادخل كلمة مرور",
                        hintStyle: TextStyle(
                          color: Colors.black45,
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
                        Navigator.pushReplacementNamed(context, '/MainScreen');

                      },
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      child: Text(
                        "تسجيل",
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
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("لديك حساب بالفعل ؟"),
                      TextButton(onPressed:  (){
                        Navigator.pushReplacementNamed(context, '/LoginScreen');

                      }, child:Text("قم بتسجيل الدخول"), ),
                    ],
                  ),
                )

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
