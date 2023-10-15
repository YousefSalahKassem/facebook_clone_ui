import 'package:facebook_clone_ui/features/Home/widgets/online_widget.dart';
import 'package:facebook_clone_ui/features/Home/widgets/post_widget.dart';
import 'package:facebook_clone_ui/features/Home/widgets/separtor_widget.dart';
import 'package:facebook_clone_ui/features/Home/widgets/stories_widget.dart';
import 'package:facebook_clone_ui/features/Home/widgets/write_post_widget.dart';
import 'package:facebook_clone_ui/features/Home/model/post.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const WritePostWidget(),
          const SeparatorWidget(),
          const OnlineWidget(),
          const SeparatorWidget(),
          const StoriesWidget(),
          for(final post in Post.posts) Column(
            children: [
              const SeparatorWidget(),
              PostWidget(postItem: post)
            ],
          )
        ],
      ),
    );
  }
}
