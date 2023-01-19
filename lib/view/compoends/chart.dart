import 'package:flutter/material.dart';
import 'package:whatapp/view/compoends/gobles.dart';

class home_Page extends StatefulWidget {
  const home_Page({super.key});

  @override
  State<home_Page> createState() => _home_PageState();
}

class _home_PageState extends State<home_Page> {
  DateTime k = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: Goldes.l
            .map(
              (e) => Builder(builder: (context) {
                return Container(
                  color: Colors.white10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        (e['i'] != null)
                            ? CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("${e['i']}"),
                              )
                            : CircleAvatar(
                                radius: 30,
                              ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${e['n']}",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${e['d']}",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "${e['t']} AM",
                          style: TextStyle(
                            fontSize: 14,
                            height: -0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            )
            .toList(),
      ),
    );
  }
}
