//new

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_management/subject/presentation/bloc/subject_bloc.dart';
import 'package:learning_management/subject/presentation/bloc/subject_event.dart';
import 'package:learning_management/subject/presentation/bloc/subjet_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SubjectBloc>().add(FetchAllSubjects());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LMS App')),
      body: BlocBuilder<SubjectBloc, SubjectState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text("Welcome")),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (subjects) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://image.shutterstock.com/image-vector/elearning-banner-design-260nw-1005367822.jpg',
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Popular Subjects',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(12),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 1,
                    ),
                    itemCount: subjects.length,
                    itemBuilder: (context, index) {
                      final item = subjects[index];
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: NetworkImage(item.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.black.withOpacity(0.5),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item.title.toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 6),
                              Text(
                                item.description,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white70,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            error: (failure) => Center(
              child: Text('Failed to load subjects: ${failure.message}'),
            ),
          );
        },
      ),
    );
  }
}

