import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_management_system/view/widget/CustomButton.dart';
import 'package:hospital_management_system/view/widget/TextFields.dart';
import 'package:hospital_management_system/view/widget/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              SvgPicture.asset(
                'assets/icons/Rectangle 3.svg',
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/Layer 1@2x.png',
                      width: 150,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    Text(
                      'Welcome back !',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'To Continue , Login Now',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    defaultFormField(
                      controller: phoneController,
                      type: TextInputType.phone,
                      validate: (v) {},
                      label: 'Phone Number',
                      prefix: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(
                            'assets/icons/Group 4663.svg',
                            width: 30,
                          ),
                          // Image.asset(
                          //   'assets/icons/Cursor-1.png',
                          //   width: 30,
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    defaultFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      validate: (v) {},
                      label: 'Password',
                      prefix: Row(
                        children: [
                          SizedBox(
                            width: 14,
                          ),
                          SvgPicture.asset(
                            'assets/icons/fi-rr-lock.svg',
                            width: 20,
                          ),
                        ],
                      ),
                      suffix: Icons.remove_red_eye_outlined,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          'Forget Password ?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: MaterialButton(
                          minWidth: double.infinity,
                          height: 45,
                          onPressed: () {},
                          color: primaryColor,
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
          SvgPicture.asset(
            'assets/icons/Rectangle.svg',
          ),
        ],
      ),
    );
  }
}
