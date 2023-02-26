import 'package:grpc/grpc.dart';

import 'gRPC/hello.pbgrpc.dart';

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
    // サーバからのレスポンスを受け取る
    await for(var res in client.sayHelllo(d)){
      print(res.response);
    }
  } catch(e){
    // 例外処理
    print('Caught error: $e');
  }
  finally{
    // チャンネルのクローズ処理
    await channel.shutdown();
  }
}
