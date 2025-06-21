import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class drawertabbar extends StatefulWidget {
  const drawertabbar({super.key});

  @override
  State<drawertabbar> createState() => _drawertabbarState();
}

class _drawertabbarState extends State<drawertabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Tab bar device preview'),
          backgroundColor: Colors.deepPurpleAccent,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'HOME',
              ),
              Tab(
                icon: Icon(Icons.video_chat),
                text: 'video',
              ),
              Tab(
                icon: Icon(Icons.audio_file),
                text: 'audio',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
              Tab(
                icon: Icon(Icons.menu),
                text: 'Menu',
              ),

            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('asset/images/Sumon_Pal.png')
                      ),
                      SizedBox(height: 8,),
                      Text('Sumon Pal',style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),),
                      Text("sumonpalcse@gmail.com",style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black
                      ),)
                    ],
                  )
              ),
              ListTile(
                title: Text('Birth'),
                onTap: (){},
              ),
              Divider(
                thickness: 5,
                color: Colors.black,
              ),
              ListTile(
                title: Text('Childhood'),
                onTap: (){},
              ),
              Divider(
                thickness: 5,
                color: Colors.black,
              ),
              ListTile(
                title: Text('Education'),
                onTap: (){},
              ),
              Divider(
                thickness: 5,
                color: Colors.black,
              ),
              ListTile(
                title: Text('Job Summary'),
                onTap: (){},
              ),
              Divider(
                thickness: 5,
                color: Colors.black,
              ),
               ListTile(
                title: Text('Marrige & others'),
                onTap: (){},
              ),
              Divider(
                thickness: 5,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Image(image: AssetImage('asset/images/Sumon_Pal.png')),
            Image(image: AssetImage('asset/images/Sumon_Pal.png')),
            Image(image: AssetImage('asset/images/Sumon_Pal.png')),
            Image(image: AssetImage('asset/images/Sumon_Pal.png')),
            Image(image: AssetImage('asset/images/Sumon_Pal.png')),
          ],
        ),
      ),
    );
  }
}
