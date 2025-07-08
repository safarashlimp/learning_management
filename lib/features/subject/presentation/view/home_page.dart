import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'LMS App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: BlocBuilder<SubjectBloc, SubjectState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text("Welcome")),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (subjects) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageSlideshow(
                  width: double.infinity,
                  height: 150,
                  initialPage: 0,
                  indicatorColor: Colors.blueAccent,
                  indicatorBackgroundColor: Colors.grey.shade300,
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuwydKpxlOiJg5j-yVE8h6jAXtcKTyo62ZMs3zxRztVzVEeA6ykGSwWTVPRgp8Her6COM&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://st4.depositphotos.com/33945136/41464/v/450/depositphotos_414646194-stock-illustration-educational-learning-app-commonly-known.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://cdni.iconscout.com/illustration/premium/thumb/mobile-learning-app-illustration-download-in-svg-png-gif-file-formats--online-education-course-school-and-pack-illustrations-3726690.png?f=webp',
                      fit: BoxFit.cover,
                    ),
                  ],
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
                      print('Image URL: ${subject.image}');

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
