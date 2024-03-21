import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: 'For You',
            ),
            Tab(
              text: 'Following',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListTile(
                leading: FlutterLogo(),
                title: Text('Data ke ${index + 1}'),
              );
            },
          ),
          GridView.count(
            crossAxisCount: 2,
            children: List.generate(4, (index) {
              return GestureDetector(
                onTap: () {
                  print('Image ${index + 1} clicked');
                },
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.grey[300],
                  child: Center(
                    child: Image.network(
                      'https://png.pngtree.com/background/20210714/original/pngtree-beautiful-blue-winter-snowy-background-picture-image_1251987.jpg',
                      width: MediaQuery.of(context).size.width /
                          2, // Set width gambar sama dengan lebar grid
                      height: MediaQuery.of(context).size.width /
                          2, // Set height gambar sama dengan tinggi grid
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
