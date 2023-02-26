import 'package:grpc/grpc.dart';

import 'gRPC/hello.pbgrpc.dart';

// async* と yield を使ってリクエストの Stream を作る
Stream<callHello> requestStream() async* {
  List<String> name =["aaa","bbb","ccc","ddd"];

  for(String s in name){
    yield callHello()..hello= s;
  }
}

Future<void> main() async {
  // エンドポイントへのチャンネルを用意
  final channel = ClientChannel(
    'localhost', // サーバの IP アドレス（またはホスト名）を指定すること
    port: 50051,
    options: const ChannelOptions(
      // TLS を無効にする
      credentials: ChannelCredentials.insecure(),
    ),
  );

  // クライアントの用意（クライアントスタブと呼ばれる）
  final client = HelloClient(channel);
  callHello d = callHello();
  d.hello = "ssss";

  try {
    await for(var res in client.sayHelllo(d)){
      print(res.response);
    }
  } catch(e){
    print('Caught error: $e');
  }
  finally{
    await channel.shutdown();
  }
}
