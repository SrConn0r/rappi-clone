import 'package:flutter/material.dart';
import 'package:rappi_clone/Home/Components/search.dart';
import 'package:rappi_clone/Search/search_view.dart';

import 'Components/address.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Address(), SearchHome()],
      ),
    );
  }
}
