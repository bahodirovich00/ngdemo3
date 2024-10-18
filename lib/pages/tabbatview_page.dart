import 'package:flutter/material.dart';

class TabbatviewPage extends StatefulWidget {
  const TabbatviewPage({super.key});

  @override
  State<TabbatviewPage> createState() => _TabbatviewPageState();
}

class _TabbatviewPageState extends State<TabbatviewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Tabbar page'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home',),
              Tab(icon: Icon(Icons.school), text: 'School',)
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Container(
              color: Colors.pink,
              child: Center(
                child: Text('Page Home'),
              ),
            ),
            Container(
              color: Colors.pink,
              child: Center(
                child: Text('Page School'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
