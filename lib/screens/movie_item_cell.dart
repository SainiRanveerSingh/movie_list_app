import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



class MovieItemCell extends StatelessWidget {
  final int itemNo;

  const MovieItemCell(
    this.itemNo, {super.key}
  );

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.primaries[itemNo % Colors.primaries.length];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: color.withAlpha(2),
        onTap: () {},
        leading: Container(
          width: 50,
          height: 30,
          color: color.withAlpha(5),
          child: Placeholder(
            color: color,
          ),
        ),
        title: Text(
          'Product $itemNo',
          key: Key('text_$itemNo'),
        ),
      ),
    );
  }
}