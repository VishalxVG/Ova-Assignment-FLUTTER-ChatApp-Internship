import 'package:chatapp/Pages/registration_page/bloc/register_page_bloc.dart';
import 'package:chatapp/Pages/registration_page/registration_page.dart';
import 'package:chatapp/Pages/singIn_page.dart/SignIn_Page.dart';
import 'package:chatapp/Pages/singIn_page.dart/bloc/sing_in_bloc.dart';
import 'package:chatapp/Pages/welcome/OnBoarding_Screen.dart';
import 'package:chatapp/common/utils/app_styles.dart';
import 'package:chatapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterBlocs(),
        ),
        BlocProvider(
          create: (context) => SignInBloc(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          title: 'Flutter Demo For Ecommerse App',
          theme: AppTheme.appThemeData,
          home: const OnBoardingScrren(),
          routes: {
            "/signInPage": (context) => const SignInPage(),
            "/registerPage": (context) => const RegisterPage(),
          },
        ),
      ),
    );
  }
}
