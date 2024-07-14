import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/%D9%8DScreens/UpdatePage.dart';
class CustomCard extends StatefulWidget {
  CustomCard(
      {required this.product,
      super.key});
  final ProductModel product;

  @override
  State<CustomCard> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomCard> {
  bool bol = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdatePage.id);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 50,
                    spreadRadius: 0,
                    offset: const Offset(10, 10),
                    color: Colors.grey.withOpacity(0.2)),
              ],
            ),
            height: 130,
            width: 200,
            child: Card(
              color: Colors.white,
              elevation: 10.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.title.substring(0,6),
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.product.price.toString(),
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                bol = !bol;
                              });
                            },
                            icon: Icon(
                              FontAwesomeIcons.solidHeart,
                              color: bol ? Colors.red : Colors.grey,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 85,
            right: 35,
            child: Image.network(
              widget.product.image,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
