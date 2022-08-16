import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../thems.dart';

class TaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: DrawerMotion(),
        children: [
      SlidableAction(onPressed: (_){},icon: Icons.delete,
      backgroundColor: MyThem.red,
      label: "Delete",)
      ],
      ),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            Container(
              width: 8,
              height: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(width: 8,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'This is your task',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(width: 8,),

                  Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(width: 5,),

                      Text(
                        '10:00',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.check,color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
