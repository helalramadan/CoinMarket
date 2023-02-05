import 'package:coinmarket/cubit/coinCubit.dart';
import 'package:coinmarket/cubit/coinState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoinCubit, CoinState>(
      listener: (context, state) {},
      builder: (context, state) {
        // print(CoinCubit.get(context).currentModel);
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Text('Hello');
                        }),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
