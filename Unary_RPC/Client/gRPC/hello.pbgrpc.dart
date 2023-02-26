///
//  Generated code. Do not modify.
//  source: hello.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'hello.pb.dart' as $0;
export 'hello.pb.dart';

class HelloClient extends $grpc.Client {
  static final _$sayHelllo = $grpc.ClientMethod<$0.callHello, $0.responseHello>(
      '/Hello.Hello/SayHelllo',
      ($0.callHello value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.responseHello.fromBuffer(value));

  HelloClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.responseHello> sayHelllo($0.callHello request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayHelllo, request, options: options);
  }
}

abstract class HelloServiceBase extends $grpc.Service {
  $core.String get $name => 'Hello.Hello';

  HelloServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.callHello, $0.responseHello>(
        'SayHelllo',
        sayHelllo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.callHello.fromBuffer(value),
        ($0.responseHello value) => value.writeToBuffer()));
  }

  $async.Future<$0.responseHello> sayHelllo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.callHello> request) async {
    return sayHelllo(call, await request);
  }

  $async.Future<$0.responseHello> sayHelllo(
      $grpc.ServiceCall call, $0.callHello request);
}
