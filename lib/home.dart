import 'package:flutter/material.dart';
import 'package:moqat7a/components/animation_bg.dart';
import 'package:moqat7a/components/product_container.dart';
import 'package:moqat7a/model/ProductModel.dart';

import 'components/search_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<productModel> productsList = products;
  bool isEmpty = false;
  Future<void> searchForProducts(String value) async {
    productsList = products
        .where((element) =>
            element.prod_name_ar.toLowerCase().contains(value.toLowerCase()) ||
            element.prod_name_en.toLowerCase().contains(value.toLowerCase()))
        .toList();
    isEmpty = productsList.isEmpty;
    setState(() {});
  }

  List<productModel> prod = products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const AnimationBg(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SearchWidget(
                    onChanged: (val) {
                      searchForProducts(val);
                    },
                  ),
                  isEmpty
                      ? const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'اللي بتدور عليه مش في المقاطعه',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: productsList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final prod = productsList[index];
                              return ProductContainer(prod: prod);
                            },
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
