import 'package:angular2/platform/browser.dart' show bootstrap;
import 'package:angular_components/angular_components.dart'
    show materialProviders;
import 'components/app/app.dart';

main() => bootstrap(AppComponent, [materialProviders]);
