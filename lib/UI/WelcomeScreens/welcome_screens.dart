import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class WelcomeScreens extends StatefulWidget {
  @override
  _WelcomeScreensState createState() => _WelcomeScreensState();

}

class _WelcomeScreensState extends State<WelcomeScreens> {
  final introKey = GlobalKey<IntroductionScreenState>();


  void _onIntroEnd(context) {
    Navigator.pushReplacementNamed(
        context,'/LoginScreen');
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/images/logo.png',
   //   fit: BoxFit.cover,
      height: 200.h,
      width: 200.w,
      alignment: Alignment.center,
    );
  }



  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19,color: Colors.black38,fontWeight: FontWeight.bold);
    const pageDecoration =  PageDecoration(



      titleTextStyle: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold ),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      // imagePadding: EdgeInsets.zero,
    );

    return Directionality(
      textDirection:  TextDirection.rtl,
      child: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.white,
        globalHeader: Align(
          alignment: Alignment.topRight,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, right: 16),


            ),
          ),
        ),
        globalFooter: SizedBox(
          width: double.infinity.w,
          height: 60.h,

        ),
        pages: [

          PageViewModel(


            title: "أهلا وسهلا بك في اخبار الوظائف",
            body:
            "تطبيق يوفر جميع الاخبار الوظائف الحكومية والشركات",
            image: Image.asset('assets/images/logo.png'),
            decoration: pageDecoration,



          ),PageViewModel(
            title: " ",
            body:
            "تصفح الوظائف الحكومية والمدنية والعسكريه",
            image: Image.asset('assets/images/logo.png'),

            decoration: pageDecoration,
          ),PageViewModel(
            title: " ",
            body:
            "يمكنك الاطلاع على نتائج التوظيف من خلال التطبيق",
            image: Image.asset('assets/images/logo.png'),
            decoration: pageDecoration,
          ),




        ],
        onDone: () => _onIntroEnd(context),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: false,
        showDoneButton: true,
        showNextButton: true,
        curve: Curves.easeInBack,

        skipFlex: 0,
        nextFlex: 0,
        //rtl: true, // Display as right-to-left

        next: const Text('التالي',style: TextStyle(color: Colors.grey,fontSize: 16),),
        done: const Text('تخطي',style: TextStyle(color: Colors.grey,fontSize: 16)),
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Colors.grey,
          activeSize: Size(33.0, 9.0),
          activeColor:  Colors.blueAccent,
          activeShape: RoundedRectangleBorder(

            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),


      ),
    );
  }
}

