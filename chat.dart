import 'package:flutter/material.dart';
class mychats extends StatelessWidget {
  const mychats({super.key});

  @override
  Widget build(BuildContext context) {
    final List names = [
    'Sage', 
    'Juliette', 
    'Aaron', 
    'Kai', 
    'Payden',
    'Raven',
    'Ares Windsor',
    'Rook'
    ];

    final List msg = [
      'Heyy..',
      'How you doing?',
      'Lets meet at 1:30pm at the cafe nearby.',
      'Hello, Darling',
      'Nighty Night',
      'Where are you? Send the location RN!!',
      'NB: This is FAMILY Business!!!!!!',
      'The Truths We Burn.'
    ];

    final List time = [
      '12:01AM', 
      '12:24PM', 
      '9:00AM', 
      '5:30AM', 
      '11:45PM',
      'Yesterday,10PM',
      '8 Nov,11PM',
      '31 October'
      ];
      
    final List img = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5DPziiolpJFlbkiVS_wGdPmf1xYvu9Z9kWQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPyN9wvCXUkWT3kPJQKqz4gKHtkZ0TnY341A&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrwKgHCyX0Fu1hEMlUgnNiY5neCNAr5obOMw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrnQrrWy6sUBs9QtScscyiyX1n1yySFwq1Ww&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Ut_FjeC7hazmuszybdQAiBAuqs-sAMrxwg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCsnQ8sXG1gfKWea8rayQCUA6JNf8oGcUCyQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgJTkFajbUP71n0-y9qfhfvPt6vhYFO4-DrQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlDjNWne-EHuZnIt5T1bejp6KC7Bwj66gz6Q&s',
    ];

    final List <Widget>icon = [
      Icon(Icons.done_all_sharp,color: Colors.blue,size: 15,),
      Icon(Icons.done_all_sharp,color: Colors.blue,size: 15,),
      Icon(Icons.done_all_sharp,color: Colors.grey,size: 15,),
      Icon(Icons.done_all_sharp,color: Colors.grey,size: 15,),
      Icon(Icons.done_all_sharp,color: Colors.blue,size: 15,),
      Icon(Icons.done_all_sharp,color: Colors.grey,size: 15,),
      Icon(Icons.done_all_sharp,color: Colors.blue,size: 15,),
      Icon(Icons.done_all_sharp,color: Colors.blue,size: 15,),
      ];

    return Scaffold(
      body: Padding(padding: EdgeInsets.only(top: 10,),
      child: ListView(
        children: List.generate(
           names.length,
          (index) => 
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(img[index])),
            title: Text(names[index]),
            subtitle: Row(
              children: [
                icon[index],
                SizedBox(width: 3),
                Text(msg[index]),
              ],
            ),
            trailing: Text(time[index]),
          ),
        ),
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 37, 211, 102),
        child: Icon(Icons.add_comment_sharp),
      ),
    );
  }
}
