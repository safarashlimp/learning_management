import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_management/core/service_locator/service_locator.dart';
import 'package:learning_management/features/modules/domain/repository/module_repository.dart';
import 'package:learning_management/features/modules/presentation/bloc/module_bloc.dart';
import 'package:learning_management/features/subject/domain/repository/subject_repository.dart';
import 'package:learning_management/features/subject/presentation/bloc/subject_bloc.dart';
import 'package:learning_management/features/subject/presentation/view/home_page.dart';
import 'package:learning_management/features/videos/domain/repository/video_repository.dart';
import 'package:learning_management/features/videos/presentation/bloc/video_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => SubjectBloc(getIt<SubjectRepository>()),
        ),
        BlocProvider(
          create: (context) => ModuleBloc(getIt<ModuleRepository>()),
        ),
        BlocProvider(create: (context) => VideoBloc(getIt<VideoRepository>())),
      ],
      child: MaterialApp(
        title: 'LMS App',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {'/': (context) => const HomeScreen()},
      ),
    );
  }
}
