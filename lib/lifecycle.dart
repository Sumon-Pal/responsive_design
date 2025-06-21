import 'package:flutter/material.dart';
import 'package:responsive_design/lifecycleTest.dart';
class lifecycle extends StatefulWidget {
  const lifecycle({super.key});

  @override
  State<lifecycle> createState() => _lifecycleState();
}

class _lifecycleState extends State<lifecycle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('From init state');
  }
  @override
  void dispose() {
    // TODO: implement dispose
    print('dispose calles');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life cycle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>lifecycletest()));
            }, child: Text('Next Page',style: TextStyle(color: Colors.blue),))
          ],
        ),
      ),
    );
  }
}
