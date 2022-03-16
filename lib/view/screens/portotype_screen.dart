import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_management_system/view/widget/constants.dart';
import 'package:lottie/lottie.dart';
class PrototypeScreen extends StatelessWidget {
  const PrototypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              SvgPicture.asset('assets/icons/Rectangle 3.svg',),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text('Prototype Map ',style: TextStyle(
                      color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),
                  SizedBox(height: MediaQuery.of(context).size.height/20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(onPressed: (){}, child: Text('Doctor',style: TextStyle(color: primaryColor.withOpacity(.6)),)),
                      SizedBox(width: 5,),
                      OutlinedButton(onPressed: (){}, child: Text('Receptionist',style: TextStyle(color: primaryColor.withOpacity(.6)),),),
                      SizedBox(width: 5,),

                      OutlinedButton(onPressed: (){}, child: Text('Nurse',style: TextStyle(color: primaryColor.withOpacity(.6)),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      OutlinedButton(onPressed: (){}, child: Text('Analysis Employee',style: TextStyle(color: primaryColor.withOpacity(.6)),)),
                      SizedBox(width: 5,),
                      OutlinedButton(onPressed: (){}, child: Text('Manger',style: TextStyle(color: primaryColor.withOpacity(.6)),)),
                      SizedBox(width: 5,),

                      OutlinedButton(onPressed: (){}, child: Text('HR',style: TextStyle(color: primaryColor.withOpacity(.6)),)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset('assets/icons/Rectangle.svg',),

        ],
      ),
    );
  }
}
