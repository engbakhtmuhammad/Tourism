// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:tourism/DetailPage.dart';
import 'package:tourism/HotelList.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  List<String> imageList = [
    "assets/Makran.jpg",
    "assets/Gawadar.jpg",
    "assets/Gawadar.jpg",
    "assets/Khuzdar.jpg"
  ];
  List<String> imageList2 = [
    "assets/Blogs.png",
    "assets/NearBy.png",
    "assets/Events.png",
    "assets/Warnings.png"
  ];
  List<String> titleList = ["Makran", "Gawadar", "Harnai", "Khuzdar"];
  List<String> titleList2=[
    "Blogs",
    "NearByPoints",
    "Events",
    "Travel Warnings"
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(200.0),
            child: AppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: const Image(
                image: AssetImage('assets/Makran.jpg'),
                fit: BoxFit.cover,
              ),
              backgroundColor: Colors.transparent,
              title: const Text(
                "Makran",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFffffff),
                ),
              ),
            )),
        body: SingleChildScrollView(
          child: Column(children: [
            titleWidget('Catagories'),
            CatagoriesWidget(height: height, imageList2: imageList2, titleList: titleList, titleList2: titleList2),
            titleWidget('Gallary'),
            GallaryWidget(height: height, imageList: imageList, titleList: titleList),
          ]),
        ),
        bottomNavigationBar: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Container(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  // flex: 1,
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: const ImageIcon(AssetImage("assets/Guide.png")),
                    label: const Text("Guide"),
                  ),
                ),
                Expanded(
                  // flex: 1,
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: const ImageIcon(AssetImage("assets/agent.png")),
                    label: const Text("Guide"),
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
                    icon: const ImageIcon(AssetImage("assets/hotels.png")),
                    label: const Text("Hotels"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  // ignore: non_constant_identifier_names
  ListTile titleWidget(String title) {
    return ListTile(
            title: Text(title, style: const TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
          );
  }
}

class GallaryWidget extends StatelessWidget {
  const GallaryWidget({
    Key? key,
    required this.height,
    required this.imageList,
    required this.titleList,
  }) : super(key: key);

  final double height;
  final List<String> imageList;
  final List<String> titleList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * .3,
      width: double.infinity,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => profilePage(
                                image: imageList[index],
                                title: titleList[index])),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        imageList[index],
                        width: 120.0,
                        height: height*.2,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      titleList[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6E6F70),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class CatagoriesWidget extends StatelessWidget {
  const CatagoriesWidget({
    Key? key,
    required this.height,
    required this.imageList2,
    required this.titleList,
    required this.titleList2,
  }) : super(key: key);

  final double height;
  final List<String> imageList2;
  final List<String> titleList;
  final List<String> titleList2;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height*.15,
      width: double.infinity,
      child: Center(
        child: ListView.builder(
          itemCount: imageList2.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
          return Padding(
            padding:  EdgeInsets.only(right: width*.1),
            child: Column(
              children: [GestureDetector(
                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    imageList2[index],
                                    width: 60.0,
                                    height: 60.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
              ),
                            Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                              child:   Text(titleList2[index],textAlign: TextAlign.center,style:  const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6E6F70),
                              ),) ,
                            ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
