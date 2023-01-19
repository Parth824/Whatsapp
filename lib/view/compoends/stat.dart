import 'package:flutter/material.dart';

class sata_com extends StatefulWidget {
  const sata_com({super.key});

  @override
  State<sata_com> createState() => _sata_comState();
}

class _sata_comState extends State<sata_com> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: double.infinity,
          child: Row(
            children: [
              Stack(
                // alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    color: Colors.amber,
                    child: CircleAvatar(
                      radius: 35,
                    ),
                  ),
                  Container(
                    height: 75,
                    width: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 25,
                      width: 25,
                      // alignment: Alignment.bottomLeft,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.green,
                        child: Center(child: Icon(Icons.add)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
