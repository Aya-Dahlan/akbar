import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class KhabarWidget extends StatefulWidget {
//  const CategoryWidget({Key? key}) : super(key: key);
  //String image;
  String salonName;
  String salonDesc;
  //String id;

  KhabarWidget( this.salonName, this.salonDesc);

  @override
  _KhabarWidgetState createState() => _KhabarWidgetState();
}

class _KhabarWidgetState extends State<KhabarWidget> {

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
            height: 90.h,
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
                Container(
                  width: 100.w,
                  height: 100.h,
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    "https://i0.wp.com/www.akbarwdaif.com/wp-content/uploads/2020/05/%D8%AC%D8%A7%D9%85%D8%B9%D8%A9-%D8%B4%D9%82%D8%B1%D8%A7%D8%A1.jpg?resize=275%2C183&ssl=1",
                    fit: BoxFit.fill,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
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
                      width: 220.w,
                      padding: EdgeInsets.only(top: 20, right: 20),
                      child: Text(
                        widget.salonName,
                        style: TextStyle(

                          fontSize: 15.sp,
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
              ],
            ),
          )),
    );
  }
}
