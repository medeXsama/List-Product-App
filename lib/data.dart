import 'package:flutter/material.dart';

class DataProd extends StatefulWidget {
  @override
  _DataProdState createState() => _DataProdState();
}

class _DataProdState extends State<DataProd> {
  final List<Widget> myList = [
    buildItem(1, 'SSD', '800.000'),
    buildItem(2, 'Keyboard', '230.000'),
    buildItem(3, 'Mousepad', '80.000'),
    buildItem(4, 'Microphone', '150.000'),
    buildItem(5, 'Headset', '185.000'),
    buildItem(6, 'Facecam', '500.000'),
    buildItem(7, 'Rice Cooker', '300.000'),
    buildItem(8, 'Mouse', '250.000'),
    buildItem(8, 'Kipas Angin', '120.000'),
    buildItem(10, 'Pancingan', '250.000')
  ];

  static Widget buildItem(int index, String title, String price) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(),
        border: Border.all(
          color: Color.fromARGB(255, 207, 207, 207),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$index   $title',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '     Price: Rp. $price',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
            ),
          ),
          title: Text('Product Data'),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                // Add your search logic here
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return myList[index];
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}