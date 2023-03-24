import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:organixo/models/task_model.dart';
import 'package:organixo/screens/details/widgets/date_picker_static.dart';
import 'package:organixo/screens/details/widgets/task_timeline.dart';
import 'package:organixo/screens/details/widgets/task_title.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage({required this.task});

  @override
  Widget build(BuildContext context) {
    final detailList = task.desc;
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            _buildAppBar(context),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [DatePicker(), TaskTitle()]),
              ),
            ),
            detailList == null
                ? SliverFillRemaining(
                    child: Container(
                        color: Colors.white,
                        child: Center(
                            child: Text(
                          'No Task Today !',
                        ))),
                  )
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                    (_, index) => TaskTimeline(detailList[index]),
                    childCount: detailList.length,
                  ))
          ],
        ));
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 20,
      ),
      actions: [
        Icon(
          Icons.more_vert,
          size: 40,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
          title: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${task.title} task',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'You have ${task.left} task for today!',
            style: TextStyle(fontSize: 10, color: Colors.grey[700]),
          )
        ],
      )),
    );
  }
}
