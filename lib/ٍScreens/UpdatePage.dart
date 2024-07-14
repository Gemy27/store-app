import 'package:flutter/material.dart';
import 'package:storeapp/widgets/customtextfield.dart';
import 'package:storeapp/widgets/cutombutton.dart';

class UpdatePage extends StatelessWidget {
  UpdatePage({super.key});
  static String id = "updatepage";
  String? title;
  String? desc;
  String? image;
  double? price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Update Page",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Customtextfield(
                "Product title",
                onchanged: (data) {
                  title = data;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Customtextfield(
                "image",
                onchanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Customtextfield(
                "price",
                onchanged: (data) {
                  price = double.parse(data);
                },
                inputtype: TextInputType.number,
              ),
              const SizedBox(
                height: 15,
              ),
              Customtextfield(
                "description",
                onchanged: (data) {
                  desc = data;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton("Update", () {})
            ],
          ),
        ),
      ),
    );
  }
}
