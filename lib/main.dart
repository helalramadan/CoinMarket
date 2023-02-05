import 'package:coinmarket/api/apiRepo.dart';
import 'package:coinmarket/constant/constant.dart';
import 'package:coinmarket/cubit/coinCubit.dart';
import 'package:coinmarket/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  ApiReop.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => CoinCubit()..getAllData())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
