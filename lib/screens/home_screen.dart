
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> userName=['Rahim','Karim','Abul','user-1','user-2'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: (){
              print('Before add data${userName.length}');
              userName.add('New Name');
              print('Before add data${userName.length}');

            }, icon: const Icon(Icons.add),),
        ],
      ),
      drawer: const Drawer(),
      body: Container(

        child: ListView.builder(
            itemCount: userName.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 2),
                height: 40,
                width: double.infinity,
                color: Colors.grey,
                child: Center(child: Text(userName[index])),
              );
            } ,
        ),
        ),

      );
  }
}
