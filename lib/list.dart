import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  /// Needed to have the counter array based on that we can handle the list
  List<int> listOfCounters = [];

  @override
  void initState() {
    /// To have complete hold on whole list , took the main widget StatefulWidget
    /// In Init, done initial setup to have 100 records [filled the array 100 times]
    for (var i = 0; i < 100; i++) {
      listOfCounters.add(0);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Solution"),
      ),
      body: ListView.builder(
          itemCount: listOfCounters.length,
          itemBuilder: (context, index) => buildListItemWidget(index)),
    );
  }

  /// Built List item here with the index as an option [to show the counter]
  ListItemWidget buildListItemWidget(int index) {
    return ListItemWidget(
      counter: listOfCounters[index],
      onTapInc: () {
        onListItemTapHandler(index);
      },
    );
  }

  /// Method to be called when tapped list item
  void onListItemTapHandler(int index) {
    setState(() {
      listOfCounters[index]++;
      debugPrint(
          "For index $index updated counter value :: ${listOfCounters[index]}");
    });
  }
}

class ListItemWidget extends StatelessWidget {
  final int counter;

  ///Call back function passed here [to update the counter]
  final VoidCallback onTapInc;

  const ListItemWidget(
      {super.key, required this.counter, required this.onTapInc});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Text(counter.toString()),
            MaterialButton(
              onPressed: onTapInc,
              child: const Text("+"),
            )
          ],
        ));
  }
}
