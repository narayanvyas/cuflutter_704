import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My First App',
    home: HomePage(),
  ));
}

// To create stateless class - Type "stl"
// To create stateful class - Type "stf"
// Hot Restart - Shift + r
// Hot Reload - r

final TextEditingController nameController = TextEditingController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'My First Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2023/11/15/15/04/leaves-8390274_1280.jpg',
                    width: 200,
                  ),
                  Container(
                    height: 30,
                  ),
                  Text('This is an image'),
                ],
              ),
              Container(
                width: 20,
              ),
              Column(
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2023/11/15/15/04/leaves-8390274_1280.jpg',
                    width: 200,
                  ),
                  Container(
                    height: 30,
                  ),
                  Text('This is an image'),
                ],
              )
            ],
          ),
          Container(
            height: 50,
          ),
          Text('These are images'),
          Container(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              controller: nameController,
            ),
          ),
          Container(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                print('Button Clicked');
                print(nameController.text);
              },
              child: Text('Click Me'))
        ],
      ),
    );
  }
}
