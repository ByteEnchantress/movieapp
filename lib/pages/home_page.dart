import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Text("The Beatles",
                      style: GoogleFonts.fasthand(
                        fontSize:24.0,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.notifications),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Actualizado: ",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "29 NOVEMBER 2024",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Image.asset(
                "assets/imagees/car.jpg"
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextPersonal(
                      title: "Sometimes its better to back our steps.",
                      fontWeight:FontWeight.w900,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}

class TextPersonal extends StatelessWidget{
  String title;
  FontWeight? fontWeight;
  double? fontPers;

  TextPersonal({
    required this.title,
    this.fontWeight,
    this.fontPers,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: fontPers??16.0,
        fontWeight: fontWeight,
      ),
    );
  }

}