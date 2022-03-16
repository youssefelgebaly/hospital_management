import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_management_system/view/screens/portotype_screen.dart';
import 'package:hospital_management_system/view/widget/constants.dart';

import 'package:lottie/lottie.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
  
    Timer(Duration(milliseconds: 3660),
        (){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>PrototypeScreen()));
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          SvgPicture.asset('assets/icons/Rectangle.svg',),

          Stack(
            children: [
              SvgPicture.asset('assets/icons/Rectangle 3.svg',),
              Center(child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image.asset('assets/icons/Group 340@2x.png',width: 180,height: 180,)),
                  SizedBox(height: 100,),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      margin: const  EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                      child: Lottie.asset(
                        'assets/loading.json'
                       // 'https://assets7.lottiefiles.com/packages/lf20_7prnsonq.json',
                      )
                  ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       margin: EdgeInsets.symmetric(horizontal: 20),
                  //       width: double.infinity,
                  //       height: 4,
                  //       decoration: BoxDecoration(
                  //         color: Colors.grey[200],
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //     ),
                  //     AnimatedPositioned(
                  //       //left: 180,
                  //       duration: Duration(seconds: 4),
                  //       child: Container(
                  //         margin: EdgeInsets.symmetric(horizontal: 20),
                  //         height: 4,
                  //         width: 80,
                  //         decoration: BoxDecoration(
                  //           color: primaryColor,
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Loading ...',style: TextStyle(
                    color: primaryColor
                  ),)
                ],
              )),
            ],
          ),

        ],

      ),
    );
  }
}
