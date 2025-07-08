import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_management/features/modules/presentation/view/modules_view.dart';
import 'package:learning_management/features/subject/presentation/bloc/subject_bloc.dart';
import 'package:learning_management/features/subject/presentation/bloc/subject_event.dart';
import 'package:learning_management/features/subject/presentation/bloc/subjet_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SubjectBloc>().add(const FetchAllSubjects());
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 1.5,
                        ),
                    itemCount: subjects.length,
                    itemBuilder: (context, index) {
                      final subject = subjects[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ModulesView(
                                subjectId: subject.id,
                                subjectName: subject.title,
                                subjectImageUrl: subject.image,
                                description: subject.description,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: NetworkImage(subject.image),
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
                                  subject.title.toUpperCase(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  subject.description,
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
