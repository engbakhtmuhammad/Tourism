import 'package:flutter/material.dart';
import 'package:tourism/SearchSite.dart';

import 'DetailPage.dart';
import 'HotelList.dart';
import 'NearByPoints.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<String> imageList=[
    "assets/Makran.jpg",
    "assets/Gawadar.jpg",
    "assets/Harnai.jpg"
  ];
  List<String> titleList=[
    "Makran",
    "Gawadar",
    "Harnai"
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
    body: Column(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/Makran.jpg"), fit: BoxFit.cover,),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 50, 50),
                  child:   Text("Balochistan Travels",style: new TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF355E3B),
                  ),) ,

                ),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child:   Text("Makran, Coastal Highway",style: new TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),) ,

                ),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child:   Text("Find your Hotels, and travel anywhere you want with us",style: new TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  ),) ,

                )


              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                child:   Text("Categories",style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF6E6F70),
                ),) ,




              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                child:   Text("All Categories",style: new TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6E6F70),
                ),) ,




              ),

            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20),
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print("Tapped a Container");
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SearchSite()),
                                    );
                                  },
                                  child: Container(
                                    height: 65,
                                    width: 60,
                                    decoration: new BoxDecoration(
                                      image: new DecorationImage(image: new AssetImage("assets/Blogs.png"), fit: BoxFit.cover,),
                                    ),
                                  ),
                                )],
                            ),

                          ),






                          Padding(padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                            child:   Text(" Blogs",style: new TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4BA37C),
                            ),) ,

                          ),
                        ],

                      ),
                    ),




                    Container(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("Tapped a Container");
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NearByPoints()),
                              );
                            },
                            child:

                            Container(
                              height: 65,
                              width: 60,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(image: new AssetImage("assets/NearBy.png"), fit: BoxFit.cover,),
                              ),
                            ),),
                          Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child:   Text(" Near-by-points ",style: new TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4BA37C),
                            ),) ,

                          ),
                        ],

                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 65,
                            width: 60,
                            decoration: new BoxDecoration(
                              image: new DecorationImage(image: new AssetImage("assets/Events.png"), fit: BoxFit.cover,),
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child:   Text(" Events",style: new TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4BA37C),
                            ),) ,

                          ),
                        ],

                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 65,
                            width: 60,
                            decoration: new BoxDecoration(
                              image: new DecorationImage(image: new AssetImage("assets/Warnings.png"), fit: BoxFit.cover,),
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child:   Text(" Travel Warnings",style: new TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4BA37C),
                            ),) ,

                          ),
                        ],

                      ),
                    ),
                  ],
                ) ,

              )

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(15, 15, 10, 10),
                child:   Text("Attractions / Gallery ",style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF6E6F70),
                ),) ,




              ),


            ],
          ),
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Tapped a Container");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => profilePage(image: imageList[index], title: titleList[index])


                          ),
                        );
                      },
                      child:  Container(
                        height: 130,
                        width: 100,
                        decoration: const BoxDecoration(
                            image:  DecorationImage(image:  AssetImage("assets/Gawadar.jpg"), fit: BoxFit.cover,),
                            borderRadius:  BorderRadius.only(
                              topLeft:  Radius.circular(10.0),
                              topRight:  Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            )

                        ),
                      ),
                    ),




                    Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                      child:   Text("Gawadar",style: new TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6E6F70),
                      ),) ,




                    ),
                  ],
                );

              }),
          Padding(padding: EdgeInsets.only(top: 20),
            child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 10,),

                  (
                      SingleChildScrollView (
                        scrollDirection: Axis.vertical,


                        child: Column(
                          children: [
                            GestureDetector(
                              child:  Container(
                                height: 130,
                                width: 100,
                                decoration: new BoxDecoration(
                                    image: new DecorationImage(image: new AssetImage("assets/Gawadar.jpg"), fit: BoxFit.cover,),
                                    borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(10.0),
                                      topRight: const Radius.circular(10.0),
                                      bottomLeft: const Radius.circular(10.0),
                                      bottomRight: const Radius.circular(10.0),
                                    )

                                ),
                              ),
                            ),




                            Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                              child:   Text("Gawadar",style: new TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6E6F70),
                              ),) ,




                            ),
                          ],

                        ),
                      )

                  ),



                  SizedBox(width: 10,),
                  SingleChildScrollView (
                    scrollDirection: Axis.vertical,


                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(image: new AssetImage("assets/MakranCostal.jpg"), fit: BoxFit.cover,),
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0),
                                bottomLeft: const Radius.circular(10.0),
                                bottomRight: const Radius.circular(10.0),
                              )

                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child:   Text("Makran",style: new TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6E6F70),
                          ),) ,




                        ),
                      ],

                    ),
                  ),
                  SizedBox(width: 10,),
                  SingleChildScrollView (
                    scrollDirection: Axis.vertical,


                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(image: new AssetImage("assets/Harnai.jpg"), fit: BoxFit.cover,),
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0),
                                bottomLeft: const Radius.circular(10.0),
                                bottomRight: const Radius.circular(10.0),
                              )

                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child:   Text("Harnai",style: new TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6E6F70),
                          ),) ,




                        ),
                      ],

                    ),
                  ),
                  SizedBox(width: 10,),
                  SingleChildScrollView (
                    scrollDirection: Axis.vertical,


                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(image: new AssetImage("assets/Khuzdar.jpg"), fit: BoxFit.cover,),
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10.0),
                                topRight: const Radius.circular(10.0),
                                bottomLeft: const Radius.circular(10.0),
                                bottomRight: const Radius.circular(10.0),
                              )

                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child:   Text("Khuzdar",style: new TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6E6F70),
                          ),) ,




                        ),
                      ],

                    ),
                  )

                ],
              ) ,
            ),



          ),



        ],
      ),

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
