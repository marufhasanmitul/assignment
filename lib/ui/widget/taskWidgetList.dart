import 'package:flutter/material.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Title will be Here'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Title will be Here"),
          Text("Date"),
          Row(
            children: [
              Chip(label: Text("New",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete),color: Colors.red.shade300,),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit),color: Colors.green.shade300,),
            ],
          )
        ],
      ),
    );
  }
}