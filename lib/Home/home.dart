import 'package:flutter/material.dart';
import 'package:rappi_clone/Cards_orders/cards_orders.dart';
import 'package:rappi_clone/Home/Components/search.dart';

import 'Components/address.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Address(), SearchHome(), CardsOrders()],
      ),
    );
  }
}
