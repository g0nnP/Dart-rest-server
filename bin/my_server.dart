import 'package:alfred/alfred.dart';

void main(List<String> args) async {
  final app = Alfred();

  app.get('/example', (req, res) => 'Hello world!');

  app.get('/json', (req, res) => {
    "ok" : true,
    "msg" : "Hello world!"
  });

  await app.listen(8080);
}