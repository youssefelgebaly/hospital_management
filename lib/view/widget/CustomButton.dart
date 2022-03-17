import 'package:flutter/material.dart';
import 'package:hospital_management_system/view/widget/constant.dart';
import 'custom_text.dart';
class CustomButton extends StatelessWidget {

  final String text;
  var onPressed;
  final Color color;
  CustomButton({this.text=" ", this.onPressed,this.color=primarydarkcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  MaterialButton(
          onPressed:onPressed,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          padding: EdgeInsets.all(20),
          color:primarycolor ,
          child: Container(
            width:  MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: CustomText(
              text: text,
              color:Colors.white ,
              alignment: Alignment.center,
            ),
          )

      ),
    );
  }
}
Widget defaultButton({
  double width =double.infinity ,
  Color background =Colors.blue,
  bool isUpperCase =true,
  double radius= 4.0,
  required Function() function,
  required String text,
})=> Container(
  width: width,
  height: 50.0,
  child: MaterialButton(

    onPressed:function,
    child: Text (
      isUpperCase ? text.toUpperCase():text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius:BorderRadius.circular(50),
    color: background,
  ),

);
