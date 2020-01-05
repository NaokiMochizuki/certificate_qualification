import 'package:flutter/material.dart';

class ProviderData extends ChangeNotifier {
  final List<int> _selectedTermIds = [];

  int get selectedTermIdsCount{
    return _selectedTermIds.length;
  }

  bool isSelectedId(int id){
    return _selectedTermIds.contains(id);
  }

  void addSelectedTermId(int id){
    _selectedTermIds.add(id);
    notifyListeners();
  }

  void resetSelectedTermId(){
    _selectedTermIds.clear();
    notifyListeners();
  }

  void removeTermId(int id){
    _selectedTermIds.remove(id);
    notifyListeners();
  }
}