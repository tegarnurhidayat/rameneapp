import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
List<String> kumpulanGambar = [
      "img_1.png",
      "img_2.png",
      "img_3.png",
      "img_4.png",
      "img_5.png",
      "img_6.png"
    ];


class _HomePageState extends State<HomePage>  {
  @override
  Widget build(BuildContext context) {
    
    return new WillPopScope(
    onWillPop: () async => false,
    
  
    
    child: new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications,
                color: const Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Container(
            width: 320,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color.fromARGB(255, 39, 40, 40),
                width: 1,
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 20),
                labelText: "Search",
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          const Padding(
            padding: EdgeInsets.only(right: 230),
            child: Text(
              'Top Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 5)),
          Expanded(
            child: GridView.builder(
              itemCount: kumpulanGambar.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/${kumpulanGambar[i]}'),
                );
              },
            ),
          )
        ],
      ),
    
    ),
    );
    
    
  }

}
