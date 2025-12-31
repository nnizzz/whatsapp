import 'package:flutter/material.dart';
import 'package:flutter_application_1/whatsapp/calls.dart';
import 'package:flutter_application_1/whatsapp/chat.dart';
import 'package:flutter_application_1/whatsapp/statuscreen.dart';

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp',
           style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold),),
          backgroundColor: const Color.fromARGB(255, 7, 94, 84),
          actions: [
          IconButton(onPressed: (){},
           icon: Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,)),
          IconButton(onPressed: (){}, 
          icon: Icon(
            Icons.search_sharp,
            color: Colors.black)),
          IconButton(onPressed: (){}, 
          icon: Icon(
            Icons.more_vert_sharp,
            color: Colors.black))
          ],
          bottom: TabBar(tabs: [  
            Column(children: [
              Text('Chats',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white),)],),
            Column(
              children: [
                Text('Updates',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),)],),
            Column(
              children: [
                Text('Calls',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),)],)
          ]),
        ),
        body: TabBarView(
          children: [
          mychats(),
          status(),
          call(),
        ]),
      )
      );
  }
}
