import 'package:flutter/material.dart';
import 'package:lab1/models/clothes_model.dart';

import '../widgets/clothes_grid.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const List<String> imagesURL = ["https://www.comme-des-garcons.de/cdn/shop/products/P1T107-2-PLAYCDGREDHEARTEMBLEMT-SHIRTWHITE.jpg?v=1598261821",
  "https://sammalouf.com/cdn/shop/products/cbdeb85dComme-des-Garcons-Wns-185936-a-opt.jpg?v=1703928257",
  "https://comme-des-garcons.com.au/cdn/shop/products/AZ-T063-051-1_f983c02a-b444-4d02-8d4f-b75a917a2418.jpg?v=1631592266",
  "https://www.serie-noire.com/29179/red-tee-with-double-heart-patch.jpg",
  "https://shop-sg.doverstreetmarket.com/cdn/shop/products/02_01_DSML.jpg?v=1662439495&width=600",
  "https://comme-des-garcons.com.au/cdn/shop/products/AZ-T225-051-4_662d8a27-31b0-4c83-9a0f-a18160bd18fb_3024x.jpg?v=1631596090"];

class _MyHomePageState extends State<MyHomePage> {

  List<Clothes> clothes = List.generate(imagesURL.length, (index) =>
      Clothes(id: index, name: "CDG Shirt $index", img: imagesURL[index], description: "Description for CDG Shirt $index", price: 50 + 2 * index - 15)
  );

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ClothesGrid(clothes: clothes),
    );
  }
}
