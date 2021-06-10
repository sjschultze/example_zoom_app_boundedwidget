// @dart = 2.9
//    https://dart.dev/null-safety/unsound-null-safety
//    supposedly this is only required in main.dart but linter complains in
//    other files too, so it's there too

import 'package:flutter/material.dart';
import 'package:flutter_zoom_plugin_example/join_screen.dart';
import 'package:flutter_zoom_plugin_example/meeting_screen.dart';
import 'package:flutter_zoom_plugin_example/start_meeting_screen.dart';

void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Zoom SDK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [],
      initialRoute: '/',
      routes: {
        '/': (context) => JoinWidget(),
        '/meeting': (context) => MeetingWidget(),
        '/startmeeting': (context) => StartMeetingWidget(),
      },
    );
  }
}
