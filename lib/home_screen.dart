import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/counter_controllar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final dependency = Get.put(CounterControllar());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GetBuilder<CounterControllar>(builder: (controller) {
              return Text(dependency.counter.toString(),
                  style: TextStyle(fontSize: 22));
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: dependency.dricreament,
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 22),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: dependency.increament,
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 22),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
