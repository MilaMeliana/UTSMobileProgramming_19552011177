import 'package:flutter/material.dart';
import '../Data/data_19552011177.dart';

class SearchProvider with ChangeNotifier {
  final List<Produk> listProduk;

  SearchProvider(this.listProduk) {
    searchControl.addListener(() {
      if (searchControl.text.isNotEmpty) {
        isSearch = true;
      }
    });
  }

  bool _isSearch = false;
  FocusNode _focusNode = FocusNode();
  TextEditingController _searchControl = TextEditingController();
  List<Produk> _searchResult = [];

  bool get isSearch => _isSearch;

  set isSearch(bool newValue) {
    _isSearch = newValue;
    notifyListeners();
  }

  FocusNode get focusNode => _focusNode;

  set focusNode(FocusNode newValue) {
    _focusNode = newValue;
    notifyListeners();
  }

  TextEditingController get searchControl => _searchControl;

  set searchControl(TextEditingController newValue) {
    _searchControl = newValue;
    notifyListeners();
  }

  List<Produk> get searchResult => _searchResult;

  set searchResult(List<Produk> newValue) {
    _searchResult = newValue;
    notifyListeners();
  }

  void searchOperation(String searchText) {
    searchResult.clear();
    if (searchText.isNotEmpty) {
      isSearch = true;
      for (int i = 0; i < listProduk.length; i++) {
        Produk data = listProduk[i];
        if (data.cameraName!.toLowerCase().contains(searchText.toLowerCase())) {
          searchResult.add(data);
        }
      }
    } else {
      searchResult.clear();
      isSearch = false;
    }
  }
}
