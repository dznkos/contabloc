import 'package:contabloc/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.bloc<CounterBloc>();

    return Scaffold(
      appBar: AppBar(title: Text('Counter with Bloc')),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, count) {
          return Center(
            child: Text(
              '$count',
              style: TextStyle(fontSize: 20.3),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  counterBloc.add(CounterEvent.increment);
                }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: () {
                  counterBloc.add(CounterEvent.decrement);
                }),
          ),
        ],
      ),
    );
  }
}
