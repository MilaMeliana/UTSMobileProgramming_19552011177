import 'package:flutter/material.dart';
import 'package:fujifilm_19552011177/Data/data_19552011177.dart';
import 'package:fujifilm_19552011177/pages/detail_19552011177.dart';
import 'package:fujifilm_19552011177/pages/searchPro/search_19552011177.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final Produk _produkCamera = Produk();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        leading: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange.shade900,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        title: Image.asset(
          './images/banner.png',
          width: 150,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
