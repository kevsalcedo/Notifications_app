import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:push_app/presentation/blocs/notifications/notifications_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select((NotificationsBloc bloc) => Text(
              "Permisos: ${bloc.state.status}",
              style: const TextStyle(fontSize: 20),
            )),
        actions: [
          IconButton(
            onPressed: () {
              context.read<NotificationsBloc>().requestPermission();
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifications =
        context.watch<NotificationsBloc>().state.notifications;

    return ListView.builder(
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return ListTile(
          title: Text(notification.title),
          subtitle: Text(notification.body),
          leading: notification.imageUrl != null 
          ? Image.network(notification.imageUrl!) 
          : null ,
          onTap: () {
            context.push('/push-details/${notification.messageId}');
          },
        );
      },
      itemCount: notifications.length,
    );
  }
}
