import 'package:check_connectivity_with_bloc/bloc/internet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<InternetBloc, InternetState>(
          builder: (context, state) {
            if (state is ConnectedState) {
              return Text(
                state.message,
                style: const TextStyle(fontSize: 20),
              );
            } else if (state is NotConnectedState) {
              return Text(
                state.message,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
