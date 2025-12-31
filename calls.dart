import 'package:flutter/material.dart';

class call extends StatelessWidget {
  const call({super.key});

  @override
  Widget build(BuildContext context) {
    final List names = [
      'Aaron', 
      'Payden',
      'Kai', 
      'Lia', 
      'Landon', 
      'Kitt',
      'Aaron', 
      'Payden', 
      'Kai', 
      'Lia', 
      'Landon',
      ];
    final List img = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrwKgHCyX0Fu1hEMlUgnNiY5neCNAr5obOMw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxGBVpFzLd5IizIFCN967ivaTZsDB-wfiXNw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkEJB1L4WbnSMoi3txibMhJP8aBO_A8WZ4Yg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ58_UhyHVMaUOsPMDvAb1ewhe1tCLh46A51g&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYWOujMp2Fdxez7QFbHma-lLiy0EI_OOrl1w&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlpRef1KK2r3G7D0JH3FsbD8Lm7KGE6zrVNg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrwKgHCyX0Fu1hEMlUgnNiY5neCNAr5obOMw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxGBVpFzLd5IizIFCN967ivaTZsDB-wfiXNw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkEJB1L4WbnSMoi3txibMhJP8aBO_A8WZ4Yg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ58_UhyHVMaUOsPMDvAb1ewhe1tCLh46A51g&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjruqCZknR701OF_BME_WNT6erWed_74FBWw&s',
      
    ];
    final List time = [
      'Just Now',
      '12 Minutes Ago',
      '30 Minutes Ago',
      'Today,8:00AM',
      'Yesterday,10AM',
      'Yesteday,11:54PM',
      'Monday,7PM',
      'Wednesday,11:23AM',
      '9th November,8:45Pm',
      '22nd October,12:30PM',
      '15th August,6:47PM'

    ];
     List <Widget>icon  = [
      Icon(Icons.call_made, color: Colors.blue,size: 15,),
      Icon(Icons.call_missed,color:Colors.red,size: 15,),
      Icon(Icons.call_received,color:Colors.blue,size: 15),
      Icon(Icons.call_end,color:Colors.blue,size: 15),
      Icon(Icons.call_missed_outgoing,color:Colors.red,size: 15),
      Icon(Icons.call_received,color:Colors.blue,size: 15),
      Icon(Icons.call_end,color:Colors.blue,size: 15),
      Icon(Icons.call_missed_outgoing,color:Colors.red,size: 15),
      Icon(Icons.call_received,color:Colors.blue,size: 15),
      Icon(Icons.call_received,color:Colors.blue,size: 15),
      Icon(Icons.call_end,color:Colors.blue,size: 15),
      Icon(Icons.call_missed_outgoing,color:Colors.red,size: 15),
      
    ];
    final List view = [
      Icons.videocam,
      Icons.call,
      Icons.videocam,
      Icons.call,
      Icons.call,
      Icons.call,
      Icons.videocam,
      Icons.call,
      Icons.videocam,
      Icons.call,
      Icons.call,
      Icons.call];

    return Scaffold(
      body: Padding(padding: EdgeInsets.only(top: 10),
      child: ListView(
        children: List.generate(
          names.length,
          (index) => ListTile(
            title: Text(names[index]),
            leading: CircleAvatar(backgroundImage: NetworkImage(img[index])),
            subtitle: Row(
              children: [
                icon[index],
                SizedBox(width: 3),
                Text(time[index]),
              ],
            ),
             trailing: Icon(view[index],color: const Color.fromARGB(255, 37, 211, 102),size: 18,),
          ),
        ),
      ),),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: const Color.fromARGB(255, 37, 211, 102),
      child: Icon(Icons.add_call),
      ),
    );
  }
}
