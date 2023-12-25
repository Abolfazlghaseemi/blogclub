import 'package:blogclub/gen/assets.gen.dart';
import 'package:flutter/material.dart';
class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  static const int logoinTab = 0;
  static const int singUpTab = 1;
  int selectedTapIndex = logoinTab;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final tabTextStyle = TextStyle(
      color: themeData.colorScheme.onPrimary,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 32, top: 32),
          child: Assets.img.icons.logo.svg(width: 120),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: themeData.colorScheme.primary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            selectedTapIndex = logoinTab;
                          });
                        },
                        child: Text(
                          'Login'.toUpperCase(),
                          style: tabTextStyle.apply(
                              color: selectedTapIndex == logoinTab
                                  ? Colors.white
                                  : Colors.white54),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            selectedTapIndex = singUpTab;
                          });
                        },
                        child: Text(
                          'Sing Up'.toUpperCase(),
                          style: tabTextStyle.apply(
                              color: selectedTapIndex == singUpTab
                                  ? Colors.white
                                  : Colors.white54),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: (const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        )),
                        color: themeData.colorScheme.surface),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(32, 48, 32, 32),
                        child: selectedTapIndex == logoinTab
                            ? _Login(themeData: themeData)
                            : _SingUp(themeData: themeData),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class _Login extends StatelessWidget {
  const _Login({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Welcome back',
        style: themeData.textTheme.headline4,
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        'Sing in white your account',
        style: themeData.textTheme.subtitle1!.apply(fontSizeFactor: 0.8),
      ),
      const SizedBox(
        height: 16,
      ),
      const TextField(
        decoration: InputDecoration(label: Text('Username')),
      ),
      const PasswordTextField(),
      const SizedBox(
        height: 24,
      ),
      ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width, 60)),
            backgroundColor:
                MaterialStateProperty.all<Color>(themeData.primaryColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          child: Text('Login'.toUpperCase(),style:TextStyle(color:themeData.primaryColorLight,))),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Forgot your password?'),
          const SizedBox(
            width: 8,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Reset here'),
          ),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      const Center(
        child: Text(
          'OR SING IN WITH',
          style: TextStyle(
            letterSpacing: 2,
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.img.icons.google.image(
            width: 36,
            height: 36,
          ),
          const SizedBox(
            width: 24,
          ),
          Assets.img.icons.facebook.image(
            width: 36,
            height: 36,
          ),
          const SizedBox(
            width: 24,
          ),
          Assets.img.icons.twitter.image(
            width: 36,
            height: 36,
          ),
        ],
      ),
    ]);
  }
}

class _SingUp extends StatelessWidget {
  const _SingUp({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Welcome to blog club',
        style: themeData.textTheme.headline4,
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        'please enter your information ',
        style: themeData.textTheme.subtitle1!.apply(fontSizeFactor: 0.8),
      ),
      const SizedBox(
        height: 16,
      ),
      const TextField(
        decoration: InputDecoration(label: Text('Full name')),
      ),
      const TextField(
        decoration: InputDecoration(label: Text('Username')),
      ),
      const PasswordTextField(),
      const SizedBox(
        height: 24,
      ),
      ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width, 60),
            ),
             backgroundColor:
                MaterialStateProperty.all<Color>(themeData.primaryColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          child: Text('Sing up'.toUpperCase(),style: TextStyle(color:themeData.primaryColorLight),)),
      const SizedBox(
        height: 16,
      ),
      const Center(
        child: Text(
          'OR SING UP WITH',
          style: TextStyle(
            letterSpacing: 2,
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.img.icons.google.image(
            width: 36,
            height: 36,
          ),
          const SizedBox(
            width: 24,
          ),
          Assets.img.icons.facebook.image(
            width: 36,
            height: 36,
          ),
          const SizedBox(
            width: 24,
          ),
          Assets.img.icons.twitter.image(
            width: 36,
            height: 36,
          ),
        ],
      ),
    ]);
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        label: const Text('Password'),
        suffix: InkWell(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: Text(
            obscureText ? 'Show' : 'Hide',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }
}
