import 'dart:ui';
import 'package:flutter/material.dart';

class HomePagePC extends StatefulWidget {
  const HomePagePC({super.key});
  @override
  State<HomePagePC> createState() => _HomePagePCState();
}

class _HomePagePCState extends State<HomePagePC> {
  List<String> items = ['10', '25', '50', '100'];
  String? selectedItem = '10';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(244, 246, 253, 1),
        body: SingleChildScrollView(
            child: Container(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Container(
                child: Row(children: [
                  Container(
                      margin: EdgeInsets.only(left: 250, top: 100),
                      child: Text('Product List',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(30, 47, 101, 1))))
                ]),
              ),
            ),
            Container(
                //color: Colors.white,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.only(left: 280, top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 50),
                      child: Text(
                        'Individual Column Searching (Text Inputs)',
                        style: TextStyle(
                            color: Color.fromRGBO(30, 47, 101, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        'The searching functionality provided by DataTables is useful for quickly search through the information in the table - however the search is global, and you may wish to present controls that search on specific columns.',
                        style: TextStyle(
                            color: Colors.grey, fontSize: 13, letterSpacing: 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                      child: Row(
                        children: [
                          Container(
                            child: Text('Show'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: DropdownButton<String>(
                              value: selectedItem,
                              items: items
                                  .map((items) => DropdownMenuItem<String>(
                                        value: items,
                                        child: Text(
                                          items,
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (item) =>
                                  setState(() => {selectedItem = item}),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text('entries'),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 670),
                              child: Text('Search:')),
                          Container(
                              width: 250,
                              margin: EdgeInsets.only(left: 20),
                              child: TextFormField(
                                onChanged: (value) => {},
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.grey),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30,
                      ),
                      child: SizedBox(
                          height: 1360,
                          width: 1200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[_createDataTable()],
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30,
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Text('Showing 1 to 10 of 10 entries'),
                          ),
                          Container(
                            height: 40,
                            width: 80,
                            margin: EdgeInsets.only(left: 750),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    //backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                                    foregroundColor: Colors.grey),
                                onPressed: (() => {}),
                                child: Text('Previous')),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                                foregroundColor: Colors.white,
                              ),
                              onPressed: (() => {}),
                              child: Text('1'),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 80,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    //backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                                    foregroundColor: Colors.grey),
                                onPressed: (() => {}),
                                child: Text('Next')),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ))),
      ),
    );
  }

  DataTable _createDataTable() {
    return DataTable(
      columns: _createColumns(),
      rows: _createRows(),
      dataRowHeight: 130,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.grey, width: 0.2),
            top: BorderSide(color: Colors.grey, width: 0.2),
            right: BorderSide(color: Colors.grey, width: 0.2),
            left: BorderSide(color: Colors.grey, width: 0.2)),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
          label: Text('Image',
              style: TextStyle(
                  color: Color.fromRGBO(30, 47, 101, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 15))),
      DataColumn(
          label: Text('Detail',
              style: TextStyle(
                  color: Color.fromRGBO(30, 47, 101, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 15))),
      DataColumn(
          label: Text('Amount',
              style: TextStyle(
                  color: Color.fromRGBO(30, 47, 101, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 15))),
      DataColumn(
          label: Text('Stock',
              style: TextStyle(
                  color: Color.fromRGBO(30, 47, 101, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 15))),
      DataColumn(
          label: Text('Start date',
              style: TextStyle(
                  color: Color.fromRGBO(30, 47, 101, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 15))),
      DataColumn(
          label: Text('Action',
              style: TextStyle(
                  color: Color.fromRGBO(30, 47, 101, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 15))),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Image.asset('redlipstick.png')),
        DataCell(Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: (() => {}),
                  child: Text(
                    'Red Lipstick',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
              Text(
                  "Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens"),
            ])),
        DataCell(Text('\$10')),
        DataCell(Text(
          'In Stock',
          style: TextStyle(
            color: Color.fromRGBO(148, 192, 6, 1),
          ),
        )),
        DataCell(Text('25/04/2011')),
        DataCell(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red, foregroundColor: Colors.white),
              onPressed: (() => {}),
              child: Text(
                'Delete',
              ),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                    foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text(
                  'Edit',
                ))
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(Image.asset('redlipstick.png')),
        DataCell(Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: (() => {}),
                  child: Text('Black Lipstick',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              Text(
                  "Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens"),
            ])),
        DataCell(Text('\$10')),
        DataCell(Text('In Stock',
            style: TextStyle(color: Color.fromRGBO(148, 192, 6, 1)))),
        DataCell(Text('25/04/2011')),
        DataCell(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Delete')),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                    foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Edit'))
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(Image.asset('redlipstick.png')),
        DataCell(Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: (() => {}),
                  child: Text('Green Lipstick',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              Text(
                  "Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens"),
            ])),
        DataCell(Text('\$10')),
        DataCell(Text('In Stock',
            style: TextStyle(color: Color.fromRGBO(148, 192, 6, 1)))),
        DataCell(Text('25/04/2011')),
        DataCell(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Delete')),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                    foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Edit'))
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(Image.asset('redlipstick.png')),
        DataCell(Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: (() => {}),
                  child: Text('Pink Lipstick',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              Text(
                  "Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens"),
            ])),
        DataCell(Text('\$10')),
        DataCell(Text('Low Stock',
            style: TextStyle(color: Color.fromRGBO(99, 107, 232, 1)))),
        DataCell(Text('25/04/2011')),
        DataCell(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Delete')),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                  foregroundColor: Colors.white,
                ),
                onPressed: (() => {}),
                child: Text('Edit'))
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(Image.asset('redlipstick.png')),
        DataCell(Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: (() => {}),
                  child: Text('Green Lipstick',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              Text(
                  "Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens"),
            ])),
        DataCell(Text('\$10')),
        DataCell(Text('Low Stock',
            style: TextStyle(color: Color.fromRGBO(99, 107, 232, 1)))),
        DataCell(Text('25/04/2011')),
        DataCell(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Delete')),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                    foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Edit'))
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(Image.asset('redlipstick.png')),
        DataCell(Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: (() => {}),
                  child: Text('White Lipstick',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              Text(
                  "Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens"),
            ])),
        DataCell(Text('\$10')),
        DataCell(Text('Low Stock',
            style: TextStyle(color: Color.fromRGBO(99, 107, 232, 1)))),
        DataCell(Text('25/04/2011')),
        DataCell(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Delete')),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                    foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Edit'))
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(Image.asset('redlipstick.png')),
        DataCell(Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: (() => {}),
                  child: Text('Gray Lipstick',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              Text(
                  "Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens"),
            ])),
        DataCell(Text('\$10')),
        DataCell(Text('Out of Stock',
            style: TextStyle(color: Color.fromRGBO(231, 39, 39, 1)))),
        DataCell(Text('25/04/2011')),
        DataCell(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Delete')),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                    foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Edit'))
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(Image.asset('redlipstick.png')),
        DataCell(Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: (() => {}),
                  child: Text('Light Lipstick',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              Text(
                  "Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens"),
            ])),
        DataCell(Text('\$10')),
        DataCell(Text('Out of Stock',
            style: TextStyle(color: Color.fromRGBO(231, 39, 39, 1)))),
        DataCell(Text('25/04/2011')),
        DataCell(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Delete')),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                    foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Edit'))
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(Image.asset('redlipstick.png')),
        DataCell(Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: (() => {}),
                  child: Text('Gliter Lipstick',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              Text(
                  "Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens"),
            ])),
        DataCell(Text('\$10')),
        DataCell(Text('Out of Stock',
            style: TextStyle(color: Color.fromRGBO(231, 39, 39, 1)))),
        DataCell(Text('25/04/2011')),
        DataCell(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Delete')),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                    foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Edit'))
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(Image.asset('redlipstick.png')),
        DataCell(Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: (() => {}),
                  child: Text('Yellow Lipstick',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              Text(
                  "Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens"),
            ])),
        DataCell(Text('\$10')),
        DataCell(Text('Out of Stock',
            style: TextStyle(color: Color.fromRGBO(231, 39, 39, 1)))),
        DataCell(Text('25/04/2011')),
        DataCell(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Delete')),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(86, 85, 239, 1),
                    foregroundColor: Colors.white),
                onPressed: (() => {}),
                child: Text('Edit'))
          ],
        ))
      ]),
    ];
  }
}
