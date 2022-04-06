import 'package:flutter/material.dart';
import 'package:flutter_app_bloc/blocs/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'events/counter_event.dart';
import 'states/counter_state.dart';
import 'views/counter_view_bloc.dart';
import 'CounterObserver.dart';
import 'blocs/counter_bloc.dart';
void main() => runApp(CounterApp());
class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: CounterViewBloc(),
      ),
    );
  }
}