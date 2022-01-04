import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  static const String routeName='./user_details';

  const UserDetails({Key? key}) : super(key: key);

  // const UserDetails({Key? key}) : super(key: key);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
      ),
    );
  }
}
