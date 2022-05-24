

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class NotificationWidget extends StatefulWidget {
//  const CategoryWidget({Key? key}) : super(key: key);
  //String image;
  String salonName;
  String salonDesc;
  //String id;

  NotificationWidget( this.salonName, this.salonDesc);

  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        // //  MaterialPageRoute(builder: (context) =>  SalonScreen(id:widget.id)),
        // );

        // ApiRequests().getSallonInformation(widget.id);
      },
      child: Padding(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Container(
            width: 320.w,
            height: 70.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Color(0x29000000).withAlpha(16),
                  spreadRadius: 2.5,
                  blurRadius: 6,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right:10 ),
                  child: Container(
                    width: 65.w,
                    height:65.h,
                    clipBehavior: Clip.antiAlias,

                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9pszu5sKKHLZGfxcN0fxd2nvTTEOkE_OJrA&usqp=CAU",
                      fit: BoxFit.fill,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.only(
                      //     topRight: Radius.circular(15),
                      //     bottomRight: Radius.circular(15)),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Row(
                //     children: [
                //       IconButton(
                //           icon: Icon(Icons.favorite_outline), onPressed: () {}),
                //       Text("99"),

                //       IconButton(
                //           icon: Icon(
                //             Icons.share,
                //             color: Colors.black45,
                //           ),
                //           onPressed: () {}),
                //     ],
                //   ),
                // ),
                Column(
                  children: [
                    Container(
                      width: 190.w,
                      padding: EdgeInsets.only(top: 20, right: 20),
                      child: Text(
                        widget.salonName,
                        style: TextStyle(

                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // Container(
                    //   width: 200.w,
                    //   padding: EdgeInsets.only(right: 8),
                    //   height: 50.h,
                    //   child: Text(
                    //     widget.salonDesc,
                    //     maxLines: 2,
                    //     style: TextStyle(
                    //       fontWeight: FontWeight.normal,
                    //       fontSize: 12.sp,
                    //       color: Colors.grey.shade700,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                
                IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_outlined, color:Colors.blueAccent,))
              ],
            ),
          )),
    );
  }
}
