import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  final bool isLogin;
  MyHeaderDrawer(this.isLogin);

 // const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(

      //color: Colors.white,
      // width: double.infinity,
      // height:260,
     padding: EdgeInsets.only(top: 150.0,right: 10,bottom: 50),
      child: !widget.isLogin ? Image.asset('assets/images/logo.png',color: Colors.white,height: 60,) : Column(
       // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container
            (


          margin: EdgeInsets.only(top: 10,bottom: 10,left: 140),
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,

              image: DecorationImage(


                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            padding: EdgeInsets.only(right: 20),
           // color: Colors.white,
            child: Column(

              crossAxisAlignment:CrossAxisAlignment.start ,

              children: [
                Text(
                  "آية دحلان",
                  style: TextStyle( fontSize: 20),
                ),
                Text(

                  "ayaalidahlan@gmail.com",

                  style: TextStyle(

                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 18,),
          Divider(
            color: Colors.grey.shade400,
            thickness: 0.3,
            // indent: 0,
            // endIndent: 0,

            height:1,
          )
        ],
      ),


    );
  }
}
