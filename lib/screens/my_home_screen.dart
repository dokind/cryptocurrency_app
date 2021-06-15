import 'package:coin_base_clone/blocs/theme_cubit/theme_cubit.dart';
import 'package:coin_base_clone/screens/screens.dart';
import 'package:flutter/material.dart';

import 'package:coin_base_clone/models/fetchCoins_models/fetch_coins_models.dart';
import 'package:coin_base_clone/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  // late Future<BigDataModel> _futureCoins;

  _onPressed() {
    BlocProvider.of<ThemeCubit>(context).toggleTheme();
    print('how to do');
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _screenList = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 12, 54, 1),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      // appBar: AppBar(
      //   title: Text('Update Data Example'),
      //   actions: [
      //     IconButton(onPressed: _onPressed, icon: Icon(Icons.toggle_off))
      //   ],
      // ),
      body: _screenList[_selectedIndex],
    );
  }
}
