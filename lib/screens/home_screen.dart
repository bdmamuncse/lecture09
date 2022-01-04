
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_09_1_fresh_start/class/my_user_data.dart';
import 'package:lecture_09_1_fresh_start/screens/user_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<MyUserData> userName=[
    MyUserData(username: 'Md. Sazzad Hossain', userphone: '01712045195', useremail: 'bdmamuncse@gmail.com'),
    MyUserData(username: 'user-1',userphone: '01712045195',useremail: 'bdmamuncse@gmail.com'),
    MyUserData(username: 'user-2',userphone: '01712045195',useremail: 'bdmamuncse@gmail.com'),
    MyUserData(username: 'user-3',userphone: '01712045195',useremail: 'bdmamuncse@gmail.com')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: (){

              setState(() {

                print('Before add data${userName.length}');
                userName.add(MyUserData(username:'new user', userphone: '797989808', useremail: 'mamun@gmail.com'));
                print('After add data${userName.length}');

              });

            }, icon: const Icon(Icons.add)),
        ],
      ),
      drawer: const Drawer(),
      body: Container(

        child: ListView.builder(
            itemCount: userName.length,
            itemBuilder: (context, index) {
              return InkWell(

                onTap: (){
                  Navigator.of(context).pushNamed(UserDetails.routeName, arguments: {
                                      });
                },

                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 2),
                  padding: const EdgeInsets.only(left:10),
                  height: 80,
                  width: double.infinity,
                  color: Colors.grey,
                  // child: Center(child: Text(userName[index].username )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(userName[index].username),
                      Text(userName[index].useremail),
                      Text(userName[index].userphone),
                    ],
                  ),
                ),
              );
            } ,
        ),
        ),

      );
  }
}
