import 'package:flutter/material.dart';

import '../widget/taskWidgetList.dart';
import '../widget/userProfileBanner.dart';

class CancelTaskScreen extends StatelessWidget {
  const CancelTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              UserProfileBanner(),
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
        )
    );
  }
}
