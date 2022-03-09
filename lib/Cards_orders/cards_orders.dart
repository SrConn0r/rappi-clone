import 'package:flutter/material.dart';

class CardsOrders extends StatelessWidget {
  const CardsOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textOrder = Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Pedido programado',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            'Tu orden fue programada, empezaremos a prepararla en la fecha seleccionada',
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );

    final _textDate = Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Entrega estimada',
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),
          ),
          Text(
            'Sáb., 10:00 AM - 11:00 AM',
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );

    final _iconOrder = Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.storefront,
              color: Colors.deepOrange,
            ),
          ],
        ));

    return Container(
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      margin: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: _iconOrder),
          Expanded(flex: 6, child: _textOrder),
          Expanded(flex: 3, child: _textDate),
        ],
      ),
    );
  }
}
