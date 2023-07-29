import 'package:flutter/material.dart';

import '../widget/summeryCard.dart';
import '../widget/taskWidgetList.dart';
import '../widget/userProfileBanner.dart';
import 'addnewTaskScreen.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserProfileBanner(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: SummeryCard(
                      title: "New",
                      number: 124,
                    ),
                  ),
                  Expanded(
                    child: SummeryCard(
                      title: "Progress",
                      number: 124,
                    ),
                  ),
                  Expanded(
                    child: SummeryCard(
                      title: "Canceled",
                      number: 124,
                    ),
                  ),
                  Expanded(
                    child: SummeryCard(
                      title: "Completed",
                      number: 124,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                      itemCount: 20,
                      itemBuilder: (context,index){
                        return TaskListWidget();
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          height: 4,
                        );
                      },
                  ),
                )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTaskScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
