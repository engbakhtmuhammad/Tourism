import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class NearByPoints extends StatefulWidget {
  @override
  NearByPointsState createState() => NearByPointsState();
}

class NearByPointsState extends State<NearByPoints>
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
              height: 80,
              width: double.infinity,
              color: Color(0xFF4BA37C),
              child:Center(
                child: Text(" Near By Attractions",style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFffffff),
                ),)),



            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.green,
              tabs: [
                Tab(
                  text: "Historical",

                ),
                Tab(
                  text: "Cultural",

                ),
                Tab(
                  text: "Religious",

                ),
                Tab(
                  text: "Recreational",

                ),


              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [

                    Column(
                      children: [

                                Flexible(

                                  child:GoogleMap(
                                    initialCameraPosition: CameraPosition(target: LatLng(37.77483, -122.41942),
                                        zoom: 12),
                                  ),

                                )










                      ],
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
