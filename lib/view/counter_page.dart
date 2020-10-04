import 'package:counter_app/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter App',
        ),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) => Text(
            '$state',
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 40.0,
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: Key('add_fab'),
            child: Icon(Icons.add,),
            onPressed: () => context.bloc<CounterCubit>().increment(),
          ),
          SizedBox(height: 8.0),
          FloatingActionButton(
            key: Key('add_fab'),
            child: Icon(Icons.remove,),
            onPressed: () => context.bloc<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
