import 'package:flutter/material.dart';
import 'package:resonance/utils/enums.dart';

class HomeContext extends ChangeNotifier {
  HomePageView _view = HomePageView.Dashboard;

  HomePageView get view => _view;

  void changeHomePageView(HomePageView newView) {
    _view = newView;
    notifyListeners();
  }
}
