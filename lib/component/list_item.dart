import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int NomorItem;
  final String Data;
  final String HargaItem;

  const ListItem(
      {super.key,
      required this.NomorItem,
      required this.Data,
      required this.HargaItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(100, 234, 231, 232),
            width: 2.0,
          ),
        )),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text('$NomorItem'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 85.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Data,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Harga: Rp. $HargaItem',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.delete_rounded, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
