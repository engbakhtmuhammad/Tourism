import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class profilePage extends StatefulWidget {
  String image;
  String title;
   profilePage({Key? key,required this.image, required this.title}) : super(key: key);
  @override
  profilePageState createState() => profilePageState();
}

class profilePageState extends State<profilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length:4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage(widget.image), fit: BoxFit.cover,),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(10, 0, 50, 10),
                    child:   Text(widget.title,style: new TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    ),) ,

                  ),



                ],
              ),
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.green,
              tabs: [
                Tab(
                  text: "Description",

                ),
                Tab(
                  text: "Activites",

                ),
                Tab(
                  text: "Information",

                ),
                Tab(
                  text: "Feedback",

                ),


              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(

                    child:    Column(
                      children: [
                        Padding(padding:
                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text("History",style: new TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000),
                            ),)) ,

                        Padding(padding:
                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text("On 8th September, 1958, Pakistan purchased the Gwadar enclave from Oman; Gwadar officially became part of Pakistan on the 8th of December, 1958. Gwadar is strategically located at the apex of the Arabian Sea and at the mouth of the Persian Gulf.",style: new TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF000000),
                          ),) ,
                        ),
                        const Divider(
                          thickness: 0.2, // thickness of the line
                          indent: 20, // empty space to the leading edge of divider.
                          endIndent: 20, // empty space to the trailing edge of the divider.
                          color: Colors.grey, // The color to use when painting the line.
                          height: 25, // The divider's height extent.
                        ),
                        Padding(padding:
                        EdgeInsets.fromLTRB(10, 10, 10, 20),
                            child: Text("About",style: new TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000),
                            ),)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Padding(padding:
                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Text("Division",style: new TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000),
                                ),)) ,
                            Padding(padding:
                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Text("Balochistan",style: new TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000),
                                ),)) ,
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Padding(padding:
                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Text("District",style: new TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000),
                                ),)) ,
                            Padding(padding:
                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Text("Balochistan",style: new TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000),
                                ),)) ,
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Padding(padding:
                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Text("Tehsil",style: new TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000),
                                ),)) ,
                            Padding(padding:
                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Text("Balochistan",style: new TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000),
                                ),)) ,
                          ],
                        ),
                        const Divider(
                          thickness: 0.4, // thickness of the line
                          indent: 20, // empty space to the leading edge of divider.
                          endIndent: 20, // empty space to the trailing edge of the divider.
                          color: Colors.grey, // The color to use when painting the line.
                          height: 25, // The divider's height extent.
                        ),
                        Padding(padding:
                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text("Historical  & touristic importance",style: new TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000),
                            ),)) ,

                        Padding(padding:
                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text("On 8th September, 1958, Pakistan purchased the Gwadar enclave from Oman; .",style: new TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF000000),
                          ),) ,
                        ),
                        const Divider(
                          thickness: 0.2, // thickness of the line
                          indent: 20, // empty space to the leading edge of divider.
                          endIndent: 20, // empty space to the trailing edge of the divider.
                          color: Colors.grey, // The color to use when painting the line.
                          height: 25, // The divider's height extent.
                        ),
                        Padding(padding:
                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text("Directions",style: new TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000),
                            ),)) ,




                      ],
                    ),
                  ),





                  Text('2'),
                  Text('3'),
                  Text('4'),



                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
