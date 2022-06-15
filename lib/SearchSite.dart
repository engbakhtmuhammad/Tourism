import 'package:flutter/material.dart';

import 'Destination.dart';
class SearchSite extends StatefulWidget {
  const SearchSite({Key? key}) : super(key: key);

  @override
  State<SearchSite> createState() => _SearchSiteState();
}

class _SearchSiteState extends State<SearchSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Site'),
        backgroundColor: Color(0xFF4BA37C), // appbar color.
        foregroundColor: Colors.white,
        elevation: 0.0,// appbar text color.
      ),
      body:SingleChildScrollView(
        child:Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(10,10,10,10),

                child:

                TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(
                    color:Color(0xFF000000),
                  ),
                  decoration: InputDecoration(

                    hintText: "Search",
                    suffixIcon: IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.search),
                    ),
                    filled: true,
                    fillColor:Color(0xFFEFEFEF),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                )),
            Column(
              children: [

                GestureDetector(
                  onTap: () {
                    print("Tapped a Container");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Destination()),
                    );
                  },
                  child:     Container(
                      height: 50,
                      width:350,
                      margin: const EdgeInsets.fromLTRB(20,20,20,20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,  // red as border color
                        ),
                      ),
                      child:Center(
                        child:    Text("I.	Quetta"),

                      )

                  ),
                ),

                Container(
                    height: 50,
                    width:350,
                    // margin: const EdgeInsets.fromLTRB(20,20,20,20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,  // red as border color
                      ),
                    ),
                    child:Center(
                      child:    Text("II.	Ziarat"),

                    )

                ),
                Container(
                    height: 50,
                    width:350,
                    margin: const EdgeInsets.fromLTRB(20,20,20,20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,  // red as border color
                      ),
                    ),
                    child:Center(
                      child:    Text("III.	Harnai"),

                    )

                ),
                Container(
                    height: 50,
                    width:350,
                    // margin: const EdgeInsets.fromLTRB(20,20,20,20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,  // red as border color
                      ),
                    ),
                    child:Center(
                      child:    Text("IV.	Khuzdar"),

                    )

                ),
                Container(
                    height: 50,
                    width:350,
                    margin: const EdgeInsets.fromLTRB(20,20,20,20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,  // red as border color
                      ),
                    ),
                    child:Center(
                      child:    Text("V.	Lasbela"),

                    )

                ),
              ],
            )
          ],

        ),
      )


    );
  }
}
