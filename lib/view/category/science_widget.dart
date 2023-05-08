import 'package:flutter/material.dart';

class ScienceWidget extends StatelessWidget {
  const ScienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return const Text("SCIENCE");
    });
  }
}