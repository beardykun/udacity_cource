import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:udacity_cource/unit.dart';

class ConverterRoute extends StatelessWidget {
  final List<Unit> units;

  // TODO: Pass in the [Category]'s name and color
  const ConverterRoute({
    @required this.units,
  }) : assert(units != null);

  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = units.map((Unit unit) {
      // TODO: Set the color for this Container
      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
