import 'package:flutter/material.dart';

var names = ["jack", "Abel", "James", "Jordan"];

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            shrinkWrap: true,
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text("${index + 1}. "),
                  Text(names[index]),
                ],
              );
            })
      ],
    );
  }
}
