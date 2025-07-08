import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_management/core/service_locator/service_locator.dart';
import 'package:learning_management/features/modules/domain/repository/module_repository.dart';
import 'package:learning_management/features/modules/presentation/bloc/module_bloc.dart';
import 'package:learning_management/features/subject/domain/reository/subject_repository.dart';
import 'package:learning_management/features/subject/presentation/bloc/subject_bloc.dart';
import 'package:learning_management/features/subject/presentation/view/home_page.dart';
 import 'package:provider/provider.dart';
// import 'presentation/routes/app_routes.dart';
// import 'presentation/providers/subject_provider.dart';
// import 'data/datasources/subject_remote_datasource.dart';
// import 'data/repositories/subject_repository_impl.dart';
// import 'domain/usecases/get_subjects.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   

    return MultiProvider(
      providers: [
       BlocProvider(create: (context)=> SubjectBloc(getIt<SubjectRepository>())),
        BlocProvider(create: (context)=> ModuleBloc(getIt<ModuleRepository>())),
      ],
    child:  MaterialApp(
        title: 'LMS App',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
    routes: {
    '/': (context) => const HomeScreen(),
  },
     ),
    );
  }
}
