import 'package:flutter/material.dart';
import 'package:spice_blog/blogs/logic/add_blog_bloc.dart';
import 'package:spice_blog/common/widgets/input_field.dart';
import 'package:spice_blog/common/widgets/vertical_spacing.dart';

class AddBlogPage extends StatefulWidget {
  const AddBlogPage({Key? key}) : super(key: key);

  @override
  State<AddBlogPage> createState() => _AddBlogPageState();
}

class _AddBlogPageState extends State<AddBlogPage> {
  late final AddBlogBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = AddBlogBloc();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 48.0,
            horizontal: MediaQuery.of(context).size.width / 6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Add Blog',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const VerticalSpacing(),
              StreamedInputField(
                addValue: bloc.title.addValue,
                title: 'Title',
                stream: bloc.title.obs$,
              ),
              const VerticalSpacing(),
              StreamedInputField(
                addValue: bloc.content.addValue,
                title: 'Content',
                stream: bloc.content.obs$,
              ),
              const VerticalSpacing(),
              StreamedInputField(
                addValue: bloc.imgUrl.addValue,
                title: 'Image Url',
                stream: bloc.imgUrl.obs$,
              ),
              const VerticalSpacing(),
              StreamBuilder<bool>(
                  stream: bloc.validInputObs$,
                  builder: (context, snapshot) {
                    final isValid = snapshot.data ?? false;
                    return StreamBuilder<bool>(
                        stream: bloc.isLoading.obs$,
                        builder: (context, loadingSnapshot) {
                          final isLoading = loadingSnapshot.data ?? false;
                          return ElevatedButton(
                              onPressed: isLoading || !isValid
                                  ? null
                                  : () {
                                      bloc.isLoading.addValue(true);
                                      bloc.addBlog().then((_) {
                                        bloc.isLoading.addValue(false);
                                        if (mounted) {
                                          Navigator.of(context).pop();
                                        }
                                      });
                                    },
                              child: isLoading
                                  ? const CircularProgressIndicator(
                                      color: Colors.white)
                                  : const Text('Add Blog'));
                        });
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class StreamedInputField<T> extends StatelessWidget {
  final Stream<T> stream;
  final void Function(String?) addValue;
  final String title;

  const StreamedInputField({
    Key? key,
    required this.stream,
    required this.addValue,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
        stream: stream,
        builder: (context, snapshot) {
          return InputField(
            onChanged: addValue,
            hintText: title,
            labelText: title,
            errorText: snapshot.error as String?,
          );
        });
  }
}
