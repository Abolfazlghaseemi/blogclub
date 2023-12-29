import 'package:blogclub/data.dart';
import 'package:blogclub/gen/assets.gen.dart';
import 'package:blogclub/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final posts = AppDatabase.posts;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themeData.colorScheme.background.withOpacity(0),
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz_rounded),
            onPressed: () {},
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: themeData.colorScheme.surface,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color:
                            themeData.colorScheme.onBackground.withOpacity(0.2),
                      ),
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Assets.img.stories.story9
                                    .image(width: 84, height: 84)),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('@jovieden'),
                                  Text(
                                    'Jovi Daniel',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                  ),
                                  Text(
                                    'UX Designer',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .apply(
                                            color:
                                                themeData.colorScheme.primary),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: Text(
                          'About me',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 4, 32, 32),
                        child: Text(
                          'Madison Blackstone is a director of user experience design, with experience managing global teams.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ]),
              ),
              Positioned(
                  bottom: 32,
                  left: 96,
                  right: 96,
                  child: Container(
                    height: 32,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 30,
                          color: themeData.colorScheme.onBackground
                              .withOpacity(0.8)),
                    ]),
                  )),
              Positioned(
                bottom: 0,
                left: 64,
                right: 64,
                child: Container(
                  height: 68,
                  decoration: BoxDecoration(
                      color: themeData.colorScheme.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff2151CD),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '52',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: themeData.colorScheme.onPrimary),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Post',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        fontWeight: FontWeight.w200,
                                        color: themeData.colorScheme.onPrimary),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '250',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: themeData.colorScheme.onPrimary),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Following',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontWeight: FontWeight.w200,
                                      color: themeData.colorScheme.onPrimary),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '4.5K',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: themeData.colorScheme.onPrimary),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Followers',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontWeight: FontWeight.w200,
                                      color: themeData.colorScheme.onPrimary),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                  child: Row(children: [
                    Expanded(
                      child: Text(
                        'My Posts',
                        style: themeData.textTheme.headline6,
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Assets.img.icons.grid.svg()),
                    IconButton(
                        onPressed: () {}, icon: Assets.img.icons.table.svg()),
                  ]),
                ),
                for (var i = 0; i < posts.length; i++) Post(post: posts[i]),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
