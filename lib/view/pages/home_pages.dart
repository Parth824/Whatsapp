import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatapp/view/compoends/chart.dart';
import 'package:whatapp/view/compoends/stat.dart';

import '../compoends/gobles.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({super.key});

  @override
  State<HomaPage> createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (Goldes.isIos == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                appBar: AppBar(
                  backgroundColor: Color.fromARGB(255, 13, 152, 80),
                  title: Text(
                    "WhatsApp",
                    style: TextStyle(fontSize: 15),
                  ),
                  // centerTitle: true,
                  actions: [
                    Switch(
                      value: Goldes.isIos,
                      onChanged: (val) {
                        setState(() {
                          Goldes.isIos = val;
                        });
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.camera_alt_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.more_vert),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                  bottom: TabBar(
                    controller: controller,
                    indicatorColor: Colors.white,
                    physics: BouncingScrollPhysics(),
                    // indicator: UnderlineTabIndicator(
                    //   // borderSide: BorderSide(width: 2.5),
                    //   insets: EdgeInsets.symmetric(horizontal: 25),
                    // ),
                    
                    
                    tabs: [
                      Tab(
                        text: "Chats",
                      ),
                      Tab(
                        text: "Status",
                      ),
                      Tab(
                        text: "Calls",
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  controller: controller,
                  children: [
                    home_Page(),
                  sata_com(),
                    Text("PArth2"),
                  ],
                )),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text("Platform Covertor"),
                trailing: CupertinoSwitch(
                  value: Goldes.isIos,
                  onChanged: (val) {
                    setState(() {
                      Goldes.isIos = val;
                    });
                  },
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        SingleChildScrollView(
                          child: Container(
                            child: IndexedStack(
                              index: Goldes.k,
                              children: [
                                home_Page(),
                                sata_com(),
                                // Setting_comp(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CupertinoTabBar(
                    onTap: (value) {
                      setState(() {
                        Goldes.k = value;
                      });
                    },
                    currentIndex: Goldes.k,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.bubble_left),
                        label: "Chart",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.rectangle_stack),
                        label: "Status",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.phone),
                        label: "Calls",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
