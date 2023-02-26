import 'package:grpc/grpc.dart';

import '../Server/gRPC/hello.pbgrpc.dart';

Future<void> main() async {
  // エンドポイントへのチャンネルを用意
  final channel = ClientChannel(
    'localhost',  // サーバの IP アドレス（またはホスト名）を指定すること
    port: 50051,
    options: const ChannelOptions(
      // TLS を無効にする
      credentials: ChannelCredentials.insecure(),
    ),
  );

  // クライアントの用意
  // （クライアントスタブと呼ばれる）
  final client = HelloClient(channel);

  // リクエストデータの用意
  final request = callHello();
  request.hello = "ssssss";

  // サーバが起動していないときなどの例外を捕捉
  try {
    // リクエストを sayHello() に渡してサーバに送ると
    // レスポンスが戻り値として返ってくる
    final response = await client.sayHelllo(request);

    // レスポンスから情報を取り出す
    print(response.response);


  } catch (e) {
    print('Caught error: $e');
  } finally {
    // 終わったらチャンネルをシャットダウン
    await channel.shutdown();
  }

}