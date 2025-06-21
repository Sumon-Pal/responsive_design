import 'package:flutter/material.dart';

class mediaQuery extends StatefulWidget {
  const mediaQuery({super.key});

  @override
  State<mediaQuery> createState() => _mediaQueryState();
}

class _mediaQueryState extends State<mediaQuery> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double fontsize = screenSize.width > 600 ? 42 : 20;
    double pixelRatio = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Design with Media Query'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: screenSize.width/2,
              height: screenSize.height/2,
              color: Colors.yellow,
            ),
          ),
          Text('This is Media Query Test',style: TextStyle(
            fontSize: fontsize,
          ),),
          Text('Pixel Ration : $pixelRatio'),

          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: List.generate(50, (index){
              return Container(
                color: Colors.indigo,
                width: 20,
                height: 20,
              );
            }),
          )
        ],
      ),
    );
  }
}
