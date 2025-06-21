import 'package:flutter/material.dart';

class alertdialoge extends StatefulWidget {
  const alertdialoge({super.key});

  @override
  State<alertdialoge> createState() => _alertdialogeState();
}

class _alertdialogeState extends State<alertdialoge> {
  void showAlertDialog(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('This is Alert'),
      content: Text('Are you sure?'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('No')),
        TextButton(onPressed: (){
          Navigator.pop(context);
          }, child: Text('Yes')),
      ],
    ));
  }

  void showSimpleDialoge(){
    showDialog(context: context, builder: (context)=>SimpleDialog(
      backgroundColor: Colors.blue,
      title: Text('Simple Dialoge'),
      children: [
        SimpleDialogOption(
          child: Text('Option-01'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),SimpleDialogOption(
          child: Text('Option-02'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

      ],
    ));
  }

  void showBottomSheetAlert(){
    showModalBottomSheet(context: context, builder: (context)=>Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Chose opton',style: TextStyle(fontSize: 18),),
          ListTile(
            title: Text('Opton-01'),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('Opton-02'),
            onTap: ()=>Navigator.pop(context),
          ),
        ],
      ),
    ));
  }
  void showAlertDialogWithIcon(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      title: Text('Installation block'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.warning,color: Colors.red,size: 40,),
              SizedBox(width: 5,),
              Text('Fudie Admin'),

            ],
          ),
          SizedBox(height: 10,),
          Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec', style: TextStyle(color: Colors.grey),)


        ],
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Ok'))
      ],
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Alert Box'),
        backgroundColor: Colors.green,
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAlertDialog();
            }, child: Text('Alert')),
             SizedBox(
               height: 40,
             ),
             ElevatedButton(onPressed: (){
               showSimpleDialoge();
            }, child: Text('ShowDialog')),
            SizedBox(
               height: 40,
             ),
             ElevatedButton(onPressed: (){
               showBottomSheetAlert();
            }, child: Text('Bottom Alert')),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed: (){
              showAlertDialogWithIcon();
            }, child: Text(
                'Alert Dialog with icon'
            )),

          ],
        ),
      ),

    );
  }
}
