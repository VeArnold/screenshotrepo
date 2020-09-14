import 'package:screenshots/screenshots.dart';
final config = Config();

void main() {
  FlutterDriver driver;
final buttonFinder = find.byType('FloatingActionButton');
  final textFinder = find.byValueKey('count-value');
group('Full body test', () {
   
    setUpAll(
      () async {
        driver = await FlutterDriver.connect();
      },
    );
test(
      'Increment counter',
      () async {
        await screenshot(driver, config, 'myscreenshot1');
        await driver.tap(buttonFinder);
        expect(await driver.getText(textFinder), "1"); 
      }),
    );
tearDownAll(() {
      if (driver != null) {
        driver.close();
      }
    });
  });
}