import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:fimber/fimber.dart';
import 'package:lodwar_water/util/constants.dart';
import 'package:lodwar_water/util/failure.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class ApiService {
  final Dio dio;
  ApiService({
    this.dio,
  });

  Future<Either<Failure, Map>> loginUser(Map params) async {
    try {
      var response = await dio.post(LOGIN, data: jsonEncode(params));

      if (response.statusCode == 200) {
        return Right(response.data);
      } else {
        var error = response.data['message'];
        Fimber.d(error);
        return Left(ApiException(response.data['message']));
      }
    } catch (error, stackTrace) {
      Fimber.e(error.toString());
      await Sentry.captureException(error, stackTrace: stackTrace);
    }
  }

  Future<Either<Failure, Map>> bookSummary(Map params) async {
    try {
      var response = await dio.post(BOOK_SUMMARY, data: jsonEncode(params));

      if (response.statusCode == 200) {
        return Right(response.data);
      } else {
        var error = response.data['message'];
        Fimber.d(error);
        return Left(ApiException(response.data['message']));
      }
    } catch (error, stackTrace) {
      Fimber.e(error.toString());
      await Sentry.captureException(error, stackTrace: stackTrace);
    }
  }

  Future<Either<Failure, Map>> meterReading(Map params) async {
    try {
      var response = await dio.post(METER_READING, data: jsonEncode(params));

      if (response.statusCode == 200) {
        return Right(response.data);
      } else {
        var error = response.data['message'];
        Fimber.d(error);
        return Left(ApiException(response.data['message']));
      }
    } catch (error, stackTrace) {
      Fimber.e(error.toString());
      await Sentry.captureException(error, stackTrace: stackTrace);
    }
  }
}
