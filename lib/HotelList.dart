import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class HotelSites extends StatefulWidget {
  const HotelSites({Key? key}) : super(key: key);

  @override
  State<HotelSites> createState() => _HotelSitesState();
}

class _HotelSitesState extends State<HotelSites> {
  String dropdownValue = 'one';

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: double.infinity,
                color: Color(0xFF4BA37C),
                child:Center(
                    child:   Padding(padding: EdgeInsets.fromLTRB(10, 25, 10, 10),

                    child:
                    Text(" Hotel Sites ",style: new TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFffffff),
                    ),)),)



              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(10,10,10,10),

                  child:Container(
                    width: double.maxFinite,
                    child:   DropdownButton<String>(
                      value: dropdownValue,


                      style: const TextStyle(
                          color: Colors.black
                      ),
                      underline: Container(
                        width: double.infinity,
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['one', 'Quetta', 'Makran', 'Khuzdar']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                          .toList(),
                    ),

                  )






                  ),
              DataTable(
                columns: [
                  DataColumn(label: Text('Sr#')),
                  DataColumn(label: Text('Name of hotels')),
                  DataColumn(label:Text('Contact')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('HotelABC')),
                    DataCell(Text('090078601')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('2')),
                    DataCell(Text('HotelABC')),
                    DataCell(Text('090078601')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('3')),
                    DataCell(Text('HotelABC')),
                    DataCell(Text('090078601')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('4')),
                    DataCell(Text('HotelABC')),
                    DataCell(Text('090078601')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('5')),
                    DataCell(Text('HotelABC')),
                    DataCell(Text('090078601')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('6')),
                    DataCell(Text('HotelABC')),
                    DataCell(Text('090078601')),


                  ])
                ],

              )

            ],
          ),
        ),
      );
  }
}
