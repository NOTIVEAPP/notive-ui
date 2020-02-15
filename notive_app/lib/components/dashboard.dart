import 'package:flutter/material.dart';
import 'package:notive_app/components/reusable_list_card.dart';
import 'package:notive_app/screens/archived_lists_screen.dart';
import 'package:notive_app/screens/listview_screen.dart';
import 'package:provider/provider.dart';
import 'package:random_color/random_color.dart';
import 'package:notive_app/models/list_data.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void openListView() {
      Navigator.pushNamed(context, ListViewScreen.id);
    }

    return Consumer<ListData>(
      builder: (context, listData, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              child: Center(
//              child: Container(
//                color: Colors.red,
//                width: 48.0,
//                height: 48.0,
//              ),
                child: ReusableListCard(
                  color: RandomColor().randomColor(),
                  listName: listData.lists[index].listName,
                  //TODO add Function onPress here
                  onPress: openListView,
                ),
              ),
            );

//              ReusableListCard(
//              color: RandomColor().randomColor(),
//              listName: listData.lists[index].listName,
////              checkCallback: (bool isMuted) {
////                listData.changeListName(listData.lists[index]);
////              },
////              deleteCallback: () {
////                listData.deleteList(listData.lists[index]);
////              },
//            );
          },
          itemCount: listData.itemsCount,
        );
      },
    );
  }
}