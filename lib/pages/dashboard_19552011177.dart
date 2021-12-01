import 'package:flutter/material.dart';
import 'package:fujifilm_19552011177/Data/data_19552011177.dart';
import 'package:fujifilm_19552011177/pages/detail_19552011177.dart';
import 'package:fujifilm_19552011177/pages/search_19552011177.dart';
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
    return ChangeNotifierProvider(
      create: (_) => SearchProvider(_produkCamera.listCamera),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
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
              color: Colors.orange[900],
            ),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          title: Image.asset(
            './images/banner.png',
            width: 150,
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Container(
          width: 350,
          child: ListView(
            padding: const EdgeInsets.all(15.0),
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child:
                    Consumer<SearchProvider>(builder: (_, searchProvider, __) {
                  return TextField(
                    controller: searchProvider.searchControl,
                    onTap: () {
                      FocusScope.of(context).requestFocus(
                        searchProvider.focusNode,
                      );
                    },
                    onChanged: searchProvider.searchOperation,
                    onEditingComplete: () {
                      searchProvider.isSearch = false;
                      FocusScope.of(context).unfocus();
                    },
                    focusNode: searchProvider.focusNode,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15.0),
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 15),
              Consumer<SearchProvider>(
                builder: (context, searchProvider, child) {
                  List<Produk> listKamera = searchProvider.isSearch
                      ? searchProvider.searchResult
                      : _produkCamera.listCamera;
                  return ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: searchProvider.isSearch
                        ? searchProvider.searchResult.length
                        : _produkCamera.listCamera.length,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: _itemList(
                          context: context,
                          produkCamera: listKamera[index],
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  _itemList({
    required BuildContext context,
    required Produk produkCamera,
  }) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width - 60,
          decoration: BoxDecoration(
            color: Color(produkCamera.color!),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Limited Edition',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Instax',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: produkCamera.cameraName!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '\$ ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: produkCamera.price!.toStringAsFixed(2),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffffffff),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return DetailPage(produkCamera);
                      },
                    ),
                  );
                },
                child: Text(
                  'Buy',
                  style: TextStyle(
                    color: Color(produkCamera.color!),
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 15,
          bottom: 15,
          child: Image.asset(
            produkCamera.image!,
            height: 150,
          ),
        ),
      ],
    );
  }
}
