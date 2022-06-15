
// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tourism/DetailPage.dart';
import 'package:tourism/HotelList.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  List<String> imageList=[
    "assets/Makran.jpg",
    "assets/Gawadar.jpg",
    "assets/Gawadar.jpg",
    "assets/Khuzdar.jpg"
  ];
  List<String> imageList2=[
    "assets/Blogs.png",
    "assets/NearBy.png",
    "assets/Events.png",
    "assets/Warnings.png"
  ];
  List<String> titleList=[
    "Makran",
    "Gawadar",
    "Harnai",
    "Khuzdar"
  ];
  List<String> titleList2=[
    "Blogs",
    "NearByPoints",
    "Events",
    "Travel Warnings"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace:  Image(
              image: AssetImage('assets/Makran.jpg'),

              fit: BoxFit.cover,
            ),
            backgroundColor: Colors.transparent,
            title: Text("Makran",style: new TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFFffffff),
            ),),
          )
      ),



      body:
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imageList2.length,
                itemBuilder: (context,index){
                  return  Padding(
                    padding:  EdgeInsets.fromLTRB(10,10,10,10),
                    child: Column(
                      children: [

                        GestureDetector(
                          onTap: () {
                            print("Tapped a Container");
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profilePage(image: imageList2[index], title: titleList[index])


                              ),
                            );
                          },
                          child:  ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              imageList2[index],
                              width: 60.0,
                              height: 60.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child:   Text(titleList2[index],style: new TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6E6F70),
                          ),) ,
                        ),

                        GestureDetector(
                          onTap: () {
                            print("Tapped a Container");
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profilePage(image: imageList[index], title: titleList[index])


                              ),
                            );
                          },
                          child:  ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              imageList[index],
                              width: 120.0,
                              height: 210.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),



                        Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child:   Text(titleList[index],style: new TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6E6F70),
                          ),) ,
                        ),

                      ],
                    ),
                  );

                }),
        bottomNavigationBar: new SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child:  Container(
            padding: EdgeInsets.all(0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Expanded(
                  // flex: 1,
                  child:
                  FlatButton.icon(
                    onPressed: () {
                    },
                    icon: new ImageIcon(
                        AssetImage("assets/Guide.png")
                    ),
                    label: Text("Guide"),
                  ),

                ),

                Expanded(
                  // flex: 1,
                  child:
                  FlatButton.icon(
                    onPressed: () {
                    },
                    icon: new ImageIcon(
                        AssetImage("assets/agent.png")
                    ),
                    label: Text("Guide"),
                  ),
                ),

                Expanded(
                  // flex: 1,
                  child: FlatButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HotelSites()),
                      );

                    },
                    icon: new ImageIcon(
                        AssetImage("assets/hotels.png")
                    ),
                    label: Text("Hotels"),
                  ),
                ),

              ],
            ),
          ) ,
        )


    );
  }
}
