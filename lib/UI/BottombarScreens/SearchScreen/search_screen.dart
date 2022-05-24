import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatefulWidget {
  //const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
          child: Container(
            width: 345.w,
            height: 42.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: Colors.blueAccent,

                    decoration: InputDecoration(
                      hintText: "ابحث هنا  ",



                      prefixIcon: Icon(Icons.search,color: Colors.grey ,),


                      border: InputBorder.none,
                    ),

                  ),
                ),
                IconButton(icon: Icon(Icons.keyboard_voice,color: Colors.grey,),onPressed: (){},)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
