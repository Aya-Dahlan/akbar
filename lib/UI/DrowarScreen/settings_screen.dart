import 'package:flutter/material.dart';
class SettingAbk extends StatefulWidget {
  const SettingAbk({Key? key}) : super(key: key);

  @override
  State<SettingAbk> createState() => _SettingAbkState();
}

class _SettingAbkState extends State<SettingAbk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefefef),
      appBar: AppBar(
        title: Text("الاعدادات"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 100),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                clipBehavior: Clip.hardEdge,
                width: 360,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,

                      ),
                      child: Row(

                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
                          Text('الاعدادت العامه',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Row(

                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                          Text('تفعيل وايقاف الاشعارات',style: TextStyle(
                            color: Color(0xff646464),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(

                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.black,)),
                          Text('مسح المفضله',style: TextStyle(
                            color: Color(0xff646464),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Row(

                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                          Text('تفعيل الوضع الليلي',style: TextStyle(
                            color: Color(0xff646464),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(

                        children: [

                          IconButton(onPressed: (){}, icon: Icon(Icons.scatter_plot_sharp,color: Colors.black,)),
                          Text('مشاركة التطبيق',style: TextStyle(
                            color: Color(0xff646464),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),








          Padding(
            padding: const EdgeInsetsDirectional.only(top: 50),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                clipBehavior: Clip.hardEdge,
                width: 360,
                height: 192,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [




                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,

                      ),
                      child: Row(

                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
                          Text('التواصل معنا',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffa2a2a2),
                      ),
                      child: Row(

                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                          Text('عبر البريد الالكتروني',style: TextStyle(
                            color: Color(0xff646464),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(

                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.black,)),
                          Text('عبر تويتر',style: TextStyle(
                            color: Color(0xff646464),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Row(

                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.wallet_membership_sharp,color: Colors.black,)),
                          Text('سياسية الخصوصيه والاستخدام',style: TextStyle(
                            color: Color(0xff646464),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
