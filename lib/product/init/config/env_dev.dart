import 'package:envied/envied.dart';
import 'package:kronos/product/init/config/app_configuration.dart';

part 'env_dev.g.dart';

@Envied(
  obfuscate: true,
  path: 'asset/env/.dev.env',
)
final class DevEnv  implements AppConfiguration {

  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _DevEnv._apiKey;
  
  @override
  String get apiKey => _apiKey;
  
  @override
  String get baseUrl => _baseUrl;
  
}
