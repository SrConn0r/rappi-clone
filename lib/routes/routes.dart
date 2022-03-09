import 'package:flutter/material.dart';

import '../Home/home.dart';
import '../Search/search_view.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return {
    '/': (BuildContext context) => Home(),
    'search': (BuildContext context) => SearchView(),
  };
}
