import 'package:flutter/material.dart';
import 'package:whatssaapp/pages/Chat_page.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with 
SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab>topTabs = <Tab>[
    Tab(icon:Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

   @override
  void initState() {
  _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
  ..addListener(() {
    setState(() {});
       });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
        IconButton(
          icon: Icon(Icons.search), onPressed: (){
          print('Search Button Clicked');
        }),
        IconButton(
          icon: Icon(Icons.more_vert), 
          onPressed: (){
          print('Three Dot Button Clicked');
        })
        ],
        bottom: TabBar(
          controller:_tabController,
          indicatorColor: Colors.white,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          ChatPage(),
          Text('Status'),
          Text('Call'),
        ],
    ));
  }
}