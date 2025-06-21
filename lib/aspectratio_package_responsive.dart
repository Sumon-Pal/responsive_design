import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class asrespackage extends StatefulWidget {
  const asrespackage({super.key});

  @override
  State<asrespackage> createState() => _asrespackageState();
}

class _asrespackageState extends State<asrespackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspect Ratio Respossive Design with package'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Container(
              height: 300.h,
              width: 200.w,
              color: Colors.red,
            ),
            Text('This is responsive text',style: TextStyle(
              color: Colors.blue,
              fontSize: 30.sp
            ),),
            SizedBox(height: 20,),
            FractionallySizedBox(
              widthFactor: 0.48,
              child: ElevatedButton(onPressed: (){}, child: Text('This is a a button')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red,width: 5)
                ),
                margin: EdgeInsets.all(10),
                height: 300,
                child: FractionallySizedBox(
                  heightFactor: 0.8,
                  child: Container(
                    color: Colors.yellow,
                    child: Center(
                      child: Text('This is FR'),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Flexible(
                  flex: 4,
                  child: Container(
                    height: 100,
                    color: Colors.tealAccent,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.lightGreen,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.deepPurpleAccent,
                ),
                Container(
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(flex:2,child: ElevatedButton(onPressed: (){}, child: Text('1'))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text('2'))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text('3'))),
              ],
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.green),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.red),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
