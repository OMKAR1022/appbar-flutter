import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: appbar(),
    );
  }
}

class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,

        toolbarHeight: 70,

        flexibleSpace: Container(

             decoration: const BoxDecoration(

               borderRadius: BorderRadius.only(
                   bottomRight: Radius.circular(20),
                   bottomLeft: Radius.circular(20)),

              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],

               gradient: LinearGradient(
                 colors: [
                   Color(0xFF3366FF),
                   Color(0xFF00CCFF),
                 ],
                 begin: Alignment.topRight,
                 end: Alignment.topLeft,
               ),
             ),
        ),

        title: const Center(
          child: Text(
            'AppBar',
            style: TextStyle(
                fontSize: 25,
                //fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
        ),

        leading:const Icon(Icons.add_a_photo),
        leadingWidth: 60,

        actions:  [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      //  shape: const RoundedRectangleBorder(
        //  borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
       // ),

        elevation: 15,




      ),
    );
  }
}
