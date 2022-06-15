import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(Destination());
}

class Destination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:  Color(0xFF4BA37C),
            bottom: TabBar(
              tabs: [
                Tab(text: "List View",),
                Tab(text: "Map View",),
              ],
            ),
            title: Text('Destinations'),

          ),
          body: TabBarView(
            children: [
             Column(
               children: [
                 Padding(
                     padding: EdgeInsets.fromLTRB(20,10,20,10),

                     child:

                     TextField(
                       cursorColor: Colors.black,
                       style: TextStyle(
                         color:Color(0xFF000000),
                       ),
                       decoration: InputDecoration(

                         hintText: "Quetta",
                         suffixIcon: IconButton(
                           onPressed: () => {},
                           icon: Icon(Icons.arrow_drop_down_rounded),
                         ),
                         filled: true,
                         fillColor:Color(0xFFEFEFEF),
                         border: OutlineInputBorder(
                             borderSide: BorderSide.none,
                             borderRadius: BorderRadius.circular(5)
                         ),
                       ),
                     )),
                 Container(
                   height: 60,
                   width: double.infinity,
                   color: Colors.white,
                   child: Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                         child:      Container(
                           height: 45,
                           width: 45,
                           decoration: new BoxDecoration(
                             image: new DecorationImage(image: new AssetImage("assets/Historical.png"), fit: BoxFit.cover,),
                           ),),

                       ),

                       Padding(padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                         child:   Text("Historical",style: new TextStyle(
                           fontSize: 14.0,
                           fontWeight: FontWeight.w600,
                           color: Color(0xFF000000),
                         ),) ,




                       ),

                     ],

                   ),
                 ),
                 const Divider(
                   thickness: 0.2, // thickness of the line
                   indent: 10, // empty space to the leading edge of divider.
                   endIndent: 10, // empty space to the trailing edge of the divider.
                   color: Colors.grey, // The color to use when painting the line.
                   height: 20, // The divider's height extent.
                 ),
                 SizedBox(height:5),
                 Container(
                   height: 60,
                   width: double.infinity,
                   color: Colors.white,
                   child: Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                         child:      Container(
                           height: 45,
                           width: 45,
                           decoration: new BoxDecoration(
                             image: new DecorationImage(image: new AssetImage("assets/culture.png"), fit: BoxFit.cover,),
                           ),),

                       ),

                       Padding(padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                         child:   Text("Cultural Tourism",style: new TextStyle(
                           fontSize: 14.0,
                           fontWeight: FontWeight.w600,
                           color: Color(0xFF000000),
                         ),) ,




                       ),

                     ],

                   ),
                 ),
                 const Divider(
                   thickness: 0.2, // thickness of the line
                   indent: 10, // empty space to the leading edge of divider.
                   endIndent: 10, // empty space to the trailing edge of the divider.
                   color: Colors.grey, // The color to use when painting the line.
                   height: 20, // The divider's height extent.
                 ),
                 SizedBox(height:5),
                 Container(
                   height: 60,
                   width: double.infinity,
                   color: Colors.white,
                   child: Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                         child:      Container(
                           height: 45,
                           width: 45,
                           decoration: new BoxDecoration(
                             image: new DecorationImage(image: new AssetImage("assets/Relegious.png"), fit: BoxFit.cover,),
                           ),),

                       ),

                       Padding(padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                         child:   Text("Religious Tourism",style: new TextStyle(
                           fontSize: 14.0,
                           fontWeight: FontWeight.w600,
                           color: Color(0xFF000000),
                         ),) ,




                       ),

                     ],

                   ),
                 ),
                 const Divider(
                   thickness: 0.2, // thickness of the line
                   indent: 10, // empty space to the leading edge of divider.
                   endIndent: 10, // empty space to the trailing edge of the divider.
                   color: Colors.grey, // The color to use when painting the line.
                   height: 20, // The divider's height extent.
                 ),
                 SizedBox(height:5),
                 Container(
                   height: 60,
                   width: double.infinity,
                   color: Colors.white,
                   child: Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                         child:      Container(
                           height: 45,
                           width: 45,
                           decoration: new BoxDecoration(
                             image: new DecorationImage(image: new AssetImage("assets/Recreational.png"), fit: BoxFit.cover,),
                           ),),

                       ),

                       Padding(padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                         child:   Text("Recreational Toursim",style: new TextStyle(
                           fontSize: 14.0,
                           fontWeight: FontWeight.w600,
                           color: Color(0xFF000000),
                         ),) ,




                       ),

                     ],

                   ),
                 ),
                 const Divider(
                   thickness: 0.2, // thickness of the line
                   indent: 10, // empty space to the leading edge of divider.
                   endIndent: 10, // empty space to the trailing edge of the divider.
                   color: Colors.grey, // The color to use when painting the line.
                   height: 20, // The divider's height extent.
                 ),
                 SizedBox(height:5),
                 Container(
                   height: 60,
                   width: double.infinity,
                   color: Colors.white,
                   child: Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                         child:      Container(
                           height: 45,
                           width: 45,
                           decoration: new BoxDecoration(
                             image: new DecorationImage(image: new AssetImage("assets/Other.png"), fit: BoxFit.cover,),
                           ),),

                       ),

                       Padding(padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                         child:   Text("Other",style: new TextStyle(
                           fontSize: 14.0,
                           fontWeight: FontWeight.w600,
                           color: Color(0xFF000000),
                         ),) ,




                       ),

                     ],

                   ),
                 )

               ],
             ),
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

            ],
          ),
        ),
      ),
    );
  }
}
