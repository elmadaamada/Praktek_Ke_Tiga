import 'package:flutter/material.dart';

void main() {
  runApp(PeduliLindungiApp());
}

class PeduliLindungiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PeduliLindungiHomePage(),
    );
  }
}

class PeduliLindungiHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Entering a Public Space?',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              'Stay alert to stay safe',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.blue, // Set background color to blue
        actions: [
          IconButton(
            icon: Icon(Icons.scanner),
            onPressed: () {
              // Action when the scan button is pressed
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Check-in-Preference',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(height: 8),
                        DropdownButton<String>(
                          items: <String>['Option 1', 'Option 2', 'Option 3']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                          dropdownColor: Colors.blue,
                          underline: Container(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Scan Here'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                InfoCard(
                  imageUrl:
                      'https://th.bing.com/th/id/OIP.C4MNOE112ASPZVx0WR6rGAHaE8?rs=1&pid=ImgDetMain',
                  title: 'COVID-19',
                ),
                InfoCard(
                  imageUrl:
                      'https://th.bing.com/th/id/OIP.5YJYmOeTx3MaqrKAYrD9ogHaFj?rs=1&pid=ImgDetMain',
                  title: 'Covid-19 Test Result',
                ),
                InfoCard(
                  imageUrl:
                      'https://th.bing.com/th/id/OIP.jvPa2puiwv9lc9H4tNID2gHaGo?rs=1&pid=ImgDetMain',
                  title: 'EHAC',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Check-in-Preference',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 8),
            DropdownButton<String>(
              items: <String>['Option 1', 'Option 2', 'Option 3']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {}, // Implement your logic here
              dropdownColor: Colors.blue,
              underline: Container(),
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const InfoCard({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: SizedBox(
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.network(imageUrl, width: 50, height: 50),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
