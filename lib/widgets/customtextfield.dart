import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield(this.text,{this.obsecuretext=false,this.onchanged,this.inputtype,super.key});
  final String? text;
  final Function(String)? onchanged;
  final bool? obsecuretext;
  final TextInputType? inputtype;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputtype,
      obscureText: obsecuretext!,
      style: const TextStyle(color:Colors.black),
      validator: (data){
        if(data!.isEmpty)
        {
          return "Field is required";
        }
        return null;
      },
      onChanged: onchanged,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color:Colors.grey),
        focusColor: Colors.black,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black,),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
