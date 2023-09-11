import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'anim_bloc/anim_bloc.dart';
import 'ui/hexagon_screen.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>AnimBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HexagonScreen(),
      ),
    );
  }
}