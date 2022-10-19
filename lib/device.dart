import 'dart:convert';
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io' show Platform;

import 'package:xxh3/xxh3.dart';

class Device {
  final String signature;
  final String name;
  final String os;

  Device({required this.signature, required this.name, required this.os});

  static Future<Device> get currentDevice async {
    final deviceInfo = DeviceInfoPlugin();
    String os;
    String signature;
    String name;

    {
      String deviceString;

      // Retrieved device information
      if (Platform.isAndroid) {
        final androidInfo = await deviceInfo.androidInfo;
        deviceString =
            androidInfo.id + androidInfo.manufacturer + androidInfo.model;
        os = "android";
        name = androidInfo.product;
      } else if (Platform.isWindows) {
        final windowsInfo = await deviceInfo.windowsInfo;
        deviceString = windowsInfo.deviceId + windowsInfo.buildLab;
        os = "windows";
        name = "${windowsInfo.productName} (${windowsInfo.computerName})";
      } else if (Platform.isLinux) {
        final linuxInfo = await deviceInfo.linuxInfo;
        os = "linux";
        deviceString = linuxInfo.machineId! + linuxInfo.name;
        name = linuxInfo.prettyName;
      } else {
        throw Exception("Device is not supported");
      }
      final bytes = Uint8List.fromList(utf8.encode(deviceString));
      final highInt = BigInt.from(xxh3(bytes, seed: 48)).toUnsigned(64);
      final lowInt = BigInt.from(xxh3(bytes, seed: 16)).toUnsigned(64);

      signature = (highInt.toRadixString(32).padLeft(16, '0') +
              lowInt.toRadixString(16).padLeft(16, '0'))
          .toUpperCase();
    }

    return Device(signature: signature, name: name, os: os);
  }
}
