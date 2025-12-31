import 'package:flutter/material.dart';

class status extends StatelessWidget {
  const status({super.key});

  @override
  Widget build(BuildContext context) {
    final List names = [
      'Sage',
      'James',
      'Ruby',
      'Warner',
      'Ares',
      'Luca',
      'Raven',
      'Celesti',
      'Zane',
    ];
    final List img = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR216kwAJ16OZ_hP1bdxn9q_LEw8wbtLn-Ceg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFGxGtCmuQr_iXzSESeshJ8rIKNtkwYuZSMQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-tt8dKt8HbZNCfCrT8umU9uTvXw8-yFoG6Q&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhxtx5uOH2FwWtC_-HAnN75PQqBFgfLF9D2w&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Nk4b7IND5VWE5Uma5FBucbCU8wt2Y-HJ3g&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYWOujMp2Fdxez7QFbHma-lLiy0EI_OOrl1w&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwLANb7JA6wln_YkB_3Lgf_t4fAfnyTUcZEA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvcjGWJ4e1djpMb9txVS_52mTZH3GsXspI9Q&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVR-IoKk19EFKTEhB2_0FZEiaAqqX1XSr1pw&s',
    ];
    final List time = [
      '1 Minute Ago',
      '12 Minutes Ago',
      '1hour Ago',
      'Today, 8:00 PM',
      'Today,12PM',
      'Today,7PM',
      'Yesterday, 6:45 PM',
      'Yesterday, 9:30 PM',
      'Yesterday at 6:54PM',
    ];
    final List view = [
      false,
      true,
      true,
      false,
      false,
      true,
      false,
      true,
      true,
    ];

    return Scaffold(
      body: 
      ListView(
        padding: EdgeInsets.all(8),
        children: [
          SizedBox(height: 2,),
          ListTile(
            leading: Stack( children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color.fromARGB(255, 37, 211, 102), width: 3),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp8cLlt8NqHs4F-jhaTkb2OcVk765Z6HrH5Q&s',
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  size: 15,
                  color: Colors.white,),
              )),],),
            title: Text(
              'My Status',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Just Now', style: TextStyle(fontSize: 12)),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_sharp))
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Text(
              'Recent Updates',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Column(
            children: List.generate(
              names.length,
              (index) => ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: view[index] ? Colors.grey : const Color.fromARGB(255, 37, 211, 102),
                      width: 3,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(img[index]),
                  ),
                ),
                title: Text(names[index]),
                subtitle: Text(time[index]),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 37, 211, 102),
        child: Icon(Icons.add_a_photo_outlined),
      ),
    );
  }
}
