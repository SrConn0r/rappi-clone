// ignore_for_file: unused_field

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Address extends StatefulWidget {
  Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final ButtonStyle cartButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.white,
    padding: const EdgeInsets.all(8.0),
    shape: const CircleBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35.0, left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.place_rounded,
                color: Colors.deepOrange,
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Calle 28 # 23-44',
                  style: GoogleFonts.nunito(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
              const Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.deepOrange,
                size: 35.0,
              )
            ],
          ),
          ElevatedButton(
              style: cartButtonStyle,
              onPressed: () {},
              child: const Icon(
                Icons.shopping_basket_outlined,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
