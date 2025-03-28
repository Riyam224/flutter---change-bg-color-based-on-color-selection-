import 'package:flutter/material.dart';
import 'package:one/colors_model.dart';
import 'package:one/red_view.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<ColorModel> colors = [
    ColorModel(name: "Red", color: const Color.fromARGB(255, 208, 121, 115)),
    ColorModel(name: "Green", color: Colors.green),
    ColorModel(name: "Blue", color: const Color.fromARGB(255, 41, 52, 61)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ColorsSwitch(colors: colors));
  }
}

class ColorsSwitch extends StatelessWidget {
  const ColorsSwitch({super.key, required this.colors});

  final List<ColorModel> colors;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RedView(colors: colors[index]),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colors[index].color,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Center(
                child: Text(
                  colors[index].name,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
