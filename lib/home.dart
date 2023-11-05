import 'package:flutter/material.dart';
import 'package:moqat7a/model/ProductModel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = TextEditingController();
  List<productModel> prod = products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
                onChanged: search,
                controller: controller,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  hintText: 'Search',
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 20, color: Colors.teal)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.red)),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                )),
            ListView.builder(
              itemCount: products.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final product = products[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(95, 166, 20, 9),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              width: 50,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset(
                                product.prod_img,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(product.prod_name_ar,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Text(product.prod_name_en,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void search(String query) {
    final find = products.where((prod) {
      final prodname = prod.prod_name_en.toLowerCase();
      final input = query.toLowerCase();
      return prodname.contains(input);
    }).toList();
    if (controller.text == '') {
      setState(() => prod = products);
    } else {
      setState(() => prod = find);
    }
  }
}
