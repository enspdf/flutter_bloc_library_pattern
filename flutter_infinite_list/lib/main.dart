import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/bloc/simple_bloc_delegate.dart';
import 'package:flutter_infinite_list/pages/home_page.dart';

void main() {
  BlocSupervisor().delegate = SimpleBlocDelegate();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Infinite Scroll',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: HomePage(),
      ),
    );
  }
}
