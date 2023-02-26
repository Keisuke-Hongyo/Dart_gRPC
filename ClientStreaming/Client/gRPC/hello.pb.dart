///
//  Generated code. Do not modify.
//  source: hello.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class callHello extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'callHello', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Hello'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hello')
    ..hasRequiredFields = false
  ;

  callHello._() : super();
  factory callHello({
    $core.String? hello,
  }) {
    final _result = create();
    if (hello != null) {
      _result.hello = hello;
    }
    return _result;
  }
  factory callHello.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory callHello.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  callHello clone() => callHello()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  callHello copyWith(void Function(callHello) updates) => super.copyWith((message) => updates(message as callHello)) as callHello; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static callHello create() => callHello._();
  callHello createEmptyInstance() => create();
  static $pb.PbList<callHello> createRepeated() => $pb.PbList<callHello>();
  @$core.pragma('dart2js:noInline')
  static callHello getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<callHello>(create);
  static callHello? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hello => $_getSZ(0);
  @$pb.TagNumber(1)
  set hello($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHello() => $_has(0);
  @$pb.TagNumber(1)
  void clearHello() => clearField(1);
}

class responseHello extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'responseHello', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Hello'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response')
    ..hasRequiredFields = false
  ;

  responseHello._() : super();
  factory responseHello({
    $core.bool? response,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    return _result;
  }
  factory responseHello.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory responseHello.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  responseHello clone() => responseHello()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  responseHello copyWith(void Function(responseHello) updates) => super.copyWith((message) => updates(message as responseHello)) as responseHello; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static responseHello create() => responseHello._();
  responseHello createEmptyInstance() => create();
  static $pb.PbList<responseHello> createRepeated() => $pb.PbList<responseHello>();
  @$core.pragma('dart2js:noInline')
  static responseHello getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<responseHello>(create);
  static responseHello? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get response => $_getBF(0);
  @$pb.TagNumber(1)
  set response($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
}

