import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchView extends StatefulWidget {
  SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final searchInput = const TextField(
    style: TextStyle(
      fontSize: 14.0,
      color: Colors.black,
    ),
    decoration: InputDecoration(
      contentPadding:
          EdgeInsets.only(top: 4.0, bottom: 4.0, left: 12.0, right: 12.0),
      enabled: true,
      hintText: '¿Qué quieres hoy?',
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(width: 0, style: BorderStyle.none)),
      fillColor: Color.fromARGB(255, 238, 238, 238),
      filled: true, //You must add this property to use the fillColor!!
    ),
  );

  final ButtonStyle returnStyle = TextButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 238, 238, 238),
    primary: Colors.black,
    shape: const CircleBorder(),
    padding: const EdgeInsets.all(2.0),
  );

  final ButtonStyle cartStyle = TextButton.styleFrom(
    primary: Color.fromARGB(255, 170, 170, 170),
    shape: const CircleBorder(),
    padding: const EdgeInsets.all(2.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 35.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Icon(
                    Icons.chevron_left,
                    size: 25.0,
                  ),
                  style: returnStyle,
                ),
                SizedBox(width: 230, child: searchInput),
                TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.shopping_basket_outlined,
                    size: 25.0,
                  ),
                  style: cartStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
