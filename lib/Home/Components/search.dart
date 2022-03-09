import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rappi_clone/Search/search_view.dart';

class SearchHome extends StatefulWidget {
  SearchHome({Key? key}) : super(key: key);

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  final ButtonStyle notificationButtonStyle = ElevatedButton.styleFrom(
    shape: const CircleBorder(),
    primary: Colors.white,
    padding: const EdgeInsets.all(8.0),
  );

  final ButtonStyle searchButtonStyle = TextButton.styleFrom(
    textStyle: GoogleFonts.nunito(),
    backgroundColor: Color.fromARGB(255, 241, 241, 241),
    primary: Colors.black,
    padding: EdgeInsets.all(12.0),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12))),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /* 
          SizedBox(
            width: 250,
            child: TextField(
              
              decoration: const InputDecoration(
                  enabled: true,
                  hintText: 'Buscar en Rappi',
                  border: InputBorder.none,
                  fillColor: Color.fromARGB(255, 238, 238, 238),
                  filled:
                      true, //You must add this property to use the fillColor!!
                  suffixIcon: Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                  )),
            ),
          ), */
          SizedBox(
            width: 280.0,
            child: TextButton(
              style: searchButtonStyle,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Buscar en Rappi'),
                  Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'search');
              },
            ),
          ),
          ElevatedButton(
            style: notificationButtonStyle,
            onPressed: () {},
            child: const Icon(
              Icons.notifications,
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
