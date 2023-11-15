import 'package:flutter/material.dart';
import 'package:loginshop/component/list_item.dart';
import 'package:loginshop/pages/login.dart';

class Pagehome extends StatefulWidget {
  const Pagehome({super.key});

  @override
  State<Pagehome> createState() => _PagehomeState();
}

class _PagehomeState extends State<Pagehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 158, 38),
        shadowColor: Colors.grey,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageLogin()),
              );
            },
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data Produk',
              style: TextStyle(fontFamily: 'Poppins'),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: IconButton(
              icon: Icon(Icons.refresh_rounded),
              onPressed: () {},
            ),
          ),
        ],
        elevation: 18,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Filter Produk',
                  style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: IconButton(
                  icon: Icon(Icons.close_rounded),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          ListItem(NomorItem: 1, Data: 'Bando 08', HargaItem: '2.000'),
          ListItem(NomorItem: 2, Data: 'Bando 2 cagak', HargaItem: '3.000'),
          ListItem(NomorItem: 3, Data: 'Bando 20 DN', HargaItem: '1.000'),
          ListItem(NomorItem: 4, Data: 'Bando 3 daun', HargaItem: '2.000'),
          ListItem(NomorItem: 5, Data: 'Bando 30', HargaItem: '2.000'),
          ListItem(NomorItem: 6, Data: 'Bando 35', HargaItem: '2.000'),
          ListItem(NomorItem: 7, Data: 'Bando 47', HargaItem: '3.000'),
          ListItem(NomorItem: 8, Data: 'Bando50', HargaItem: '3.000'),
          ListItem(NomorItem: 9, Data: 'Bando 75', HargaItem: '7.000'),
          ListItem(NomorItem: 10, Data: 'Bando ASKW', HargaItem: '9.000')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
