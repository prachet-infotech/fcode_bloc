import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';

class CloudSupport {
  Future<HttpsCallableResult> call({@required String functionName, dynamic params}) async {
    final callable = CloudFunctions.instance.getHttpsCallable(
      functionName: functionName,
    );
    return await callable.call(params);
  }
}