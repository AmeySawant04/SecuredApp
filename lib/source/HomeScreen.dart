import 'package:demo/Pages/ChatPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  TabController? _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 1, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HertzSoft"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(
            onSelected: (value){
              print(value);
            },
              itemBuilder: (BuildContext context){
            return [
              PopupMenuItem(child: Text("New group"), value: "New group",),
              PopupMenuItem(child: Text("Settings"), value: "Settings",),
            ];
          })
        ],
        bottom:TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: const [
            Tab(
              text: "Group",
            )
          ],
        ) ,
      ),
      body: TabBarView(
        controller: _controller,
          children: [
          ChatPage(),
          Text("Group"),
      ],
      ),
      );

  }
}
