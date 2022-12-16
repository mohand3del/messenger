import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
            'Users'
        ),
      ),
      body: Row(
        children:  [
          const CircleAvatar(
            radius: 20.0,
            child: Text(
              '1',
              style: TextStyle(
                fontSize:25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Column(
            mainAxisSize:MainAxisSize.min ,
            children: const [
              Text(
                '2',
                style: TextStyle(
                  fontSize:25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],

          ),
        ],
      ),
    );
  }

}
