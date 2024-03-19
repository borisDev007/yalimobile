import 'package:connectivity/connectivity.dart';

Future<bool> isInternetConnected() async {
  final result = await Connectivity().checkConnectivity();
  return result != ConnectivityResult.none;
}
