import 'package:flutter/material.dart';

import '../model/ProductModel.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    required this.prod,
  });

  final productModel prod;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: .5, // Spread radius
              blurRadius: 5, // Blur radius
              offset:
                  const Offset(1, 1), // Offset to control the shadow's position
            ),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                width: 50,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  prod.prod_img,
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
                    padding: const EdgeInsets.only(right:20.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(prod.prod_name_ar,
                    style: const TextStyle(color: Colors.black, fontSize: 20)),
                Text(prod.prod_name_en,
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
