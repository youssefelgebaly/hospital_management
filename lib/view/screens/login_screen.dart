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
    var formKey = GlobalKey<FormState>();

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
                child: Form(
                  key: formKey,
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
                        type: TextInputType.number,
                        validate: (v) {
                          if(v!.isEmpty){
                            return 'please enter your phone';
                          }
                        },
                        label: 'Phone Number',
                        prefix: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset('assets/Login/Group 4663.svg',
                            height: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/Login/Cursor.svg',
                            height: 30,),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                        controller: passwordController,
                        type: TextInputType.text,
                        validate: (v) {
                          if(v!.isEmpty){
                            return 'please enter your password';
                          }
                        },
                        label: 'Password',
                        prefix: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset('assets/Login/fi-rr-lock.svg',
                            height: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset('assets/Login/Cursor.svg',
                            height: 30,
                            ),

                          ],
                        ),
                        suffix: Icons.remove_red_eye_outlined,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/40,
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height/40,
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: MaterialButton(
                            minWidth: double.infinity,
                            height: 45,
                            onPressed: () {
                              if(formKey.currentState!.validate())
                              {
                                print(phoneController.text);
                                print(passwordController.text);
                              }
                            },

                            color: primaryColor,
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
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
