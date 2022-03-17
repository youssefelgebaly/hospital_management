import 'package:flutter/material.dart';
import 'package:hospital_management_system/view/widget/constant.dart';
import 'package:hospital_management_system/view/widget/constants.dart';

Widget buildTextField(String myhintText, IconData myIcons, bool canObscure) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.00),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: canObscure,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(40.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(40.0),
          ),
          prefixIcon: Icon(myIcons, color: Colors.white),
          hintText: myhintText,
          hintStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: primaryColor,
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  Function (String ?)? onSubmit,
  // Function? onChange,
  required String? Function(String?) validate,
  TextInputType? type,
  bool isPassword = false,
  required String label,
  Widget? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,

      // onFieldSubmitted: (s){
      //   onSubmit!(s);
      // },
      validator:(value)
      {
        return validate(value);
      },

      decoration: InputDecoration(
        fillColor:primaryColor ,
        hoverColor: primaryColor,
        hintText: 'lll',
        focusColor: primaryColor,
        labelText: label,
        prefixIcon: prefix,
        suffixIcon: suffix != null ? IconButton(
          onPressed: (){
            suffixPressed!();
          },
          icon: Icon(
            suffix,
            color: primaryColor,
          ),
        ):null,
        border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(6.0),
        ),
      ),


    );