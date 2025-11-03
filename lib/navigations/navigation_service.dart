import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:working_app/consts/router.dart';
import 'package:working_app/screens/detail-travel/detail_travel_screen.dart';
import 'package:working_app/screens/forgot-pass-verify/forgot_pass_verify_screen.dart';
import 'package:working_app/screens/forgot-pass/forgot_pass_screen.dart';
import 'package:working_app/screens/guids/guids_screen.dart';
import 'package:working_app/screens/home/home_screen.dart';
import 'package:working_app/screens/login/login_screen.dart';
import 'package:working_app/screens/register/register_screen.dart';
import 'package:working_app/screens/splash/splash_screen.dart';

class NavigationService {
  // 1. Tạo Global Key cho Navigator (cần thiết cho GoRouter)
  // Đây là cách GoRouter được khuyến nghị để truy cập NavigatorState
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  // 2. Tạo một thể hiện của GoRouter (thường được đặt trong main.dart)
  static final router = GoRouter(
    navigatorKey: navigatorKey, // Gắn key vào router
    initialLocation: AppScreen.splash,
    routes: [
      GoRoute(
        path: AppScreen.splash,
        name: AppScreen.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppScreen.guid,
        name: AppScreen.guid,
        builder: (context, state) => const GuidTour(),
      ),
      GoRoute(
        path: AppScreen.login,
        name: AppScreen.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppScreen.register,
        name: AppScreen.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppScreen.forgotPassword,
        name: AppScreen.forgotPassword,
        builder: (context, state) => const ForgotPassScreen(),
      ),
      GoRoute(
        path: AppScreen.forgotPasswordVerify,
        name: AppScreen.forgotPasswordVerify,
        builder: (context, state) => const ForgotPassVerifyScreen(),
      ),
      GoRoute(
        path: AppScreen.home,
        name: AppScreen.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppScreen.detailTravel,
        name: AppScreen.detailTravel,
        builder: (context, state) => const DetailTravelScreen(),
      ),
    ],
  );

  // 3. Các phương thức điều hướng không cần Context

  // Điều hướng (thay thế stack)
  static void go(String path) {
    // Sử dụng context từ GlobalKey để gọi go()
    router.go(path);
  }

  // Điều hướng bằng tên (thay thế stack)
  static void goNamed(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
  }) {
    router.goNamed(name, pathParameters: pathParameters);
  }

  // Đẩy tuyến đường mới vào stack
  static void push(String path) {
    router.push(path);
  }

  // Quay lại
  static void pop() {
    // Dùng NavigatorState trực tiếp nếu muốn kiểm soát pop
    if (navigatorKey.currentState != null &&
        navigatorKey.currentState!.canPop()) {
      navigatorKey.currentState!.pop();
    }
  }
}
