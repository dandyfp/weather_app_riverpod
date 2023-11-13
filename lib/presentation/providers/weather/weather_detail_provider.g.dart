// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherDetailHash() => r'3a514725b6e189d4f9d9c6ba574c3d7d97ef0063';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [weatherDetail].
@ProviderFor(weatherDetail)
const weatherDetailProvider = WeatherDetailFamily();

/// See also [weatherDetail].
class WeatherDetailFamily extends Family<AsyncValue<DataWeather?>> {
  /// See also [weatherDetail].
  const WeatherDetailFamily();

  /// See also [weatherDetail].
  WeatherDetailProvider call({
    required String cityName,
  }) {
    return WeatherDetailProvider(
      cityName: cityName,
    );
  }

  @override
  WeatherDetailProvider getProviderOverride(
    covariant WeatherDetailProvider provider,
  ) {
    return call(
      cityName: provider.cityName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'weatherDetailProvider';
}

/// See also [weatherDetail].
class WeatherDetailProvider extends AutoDisposeFutureProvider<DataWeather?> {
  /// See also [weatherDetail].
  WeatherDetailProvider({
    required String cityName,
  }) : this._internal(
          (ref) => weatherDetail(
            ref as WeatherDetailRef,
            cityName: cityName,
          ),
          from: weatherDetailProvider,
          name: r'weatherDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherDetailHash,
          dependencies: WeatherDetailFamily._dependencies,
          allTransitiveDependencies:
              WeatherDetailFamily._allTransitiveDependencies,
          cityName: cityName,
        );

  WeatherDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cityName,
  }) : super.internal();

  final String cityName;

  @override
  Override overrideWith(
    FutureOr<DataWeather?> Function(WeatherDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WeatherDetailProvider._internal(
        (ref) => create(ref as WeatherDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cityName: cityName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DataWeather?> createElement() {
    return _WeatherDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherDetailProvider && other.cityName == cityName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cityName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WeatherDetailRef on AutoDisposeFutureProviderRef<DataWeather?> {
  /// The parameter `cityName` of this provider.
  String get cityName;
}

class _WeatherDetailProviderElement
    extends AutoDisposeFutureProviderElement<DataWeather?>
    with WeatherDetailRef {
  _WeatherDetailProviderElement(super.provider);

  @override
  String get cityName => (origin as WeatherDetailProvider).cityName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
