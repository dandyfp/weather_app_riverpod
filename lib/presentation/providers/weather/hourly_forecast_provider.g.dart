// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_forecast_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hourlyForecastHash() => r'25adbb3c9a1ae81d2a13f68f7d88fba401116d28';

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

/// See also [hourlyForecast].
@ProviderFor(hourlyForecast)
const hourlyForecastProvider = HourlyForecastFamily();

/// See also [hourlyForecast].
class HourlyForecastFamily extends Family<AsyncValue<DataHourlyForecast?>> {
  /// See also [hourlyForecast].
  const HourlyForecastFamily();

  /// See also [hourlyForecast].
  HourlyForecastProvider call({
    required String cityName,
  }) {
    return HourlyForecastProvider(
      cityName: cityName,
    );
  }

  @override
  HourlyForecastProvider getProviderOverride(
    covariant HourlyForecastProvider provider,
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
  String? get name => r'hourlyForecastProvider';
}

/// See also [hourlyForecast].
class HourlyForecastProvider
    extends AutoDisposeFutureProvider<DataHourlyForecast?> {
  /// See also [hourlyForecast].
  HourlyForecastProvider({
    required String cityName,
  }) : this._internal(
          (ref) => hourlyForecast(
            ref as HourlyForecastRef,
            cityName: cityName,
          ),
          from: hourlyForecastProvider,
          name: r'hourlyForecastProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hourlyForecastHash,
          dependencies: HourlyForecastFamily._dependencies,
          allTransitiveDependencies:
              HourlyForecastFamily._allTransitiveDependencies,
          cityName: cityName,
        );

  HourlyForecastProvider._internal(
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
    FutureOr<DataHourlyForecast?> Function(HourlyForecastRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HourlyForecastProvider._internal(
        (ref) => create(ref as HourlyForecastRef),
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
  AutoDisposeFutureProviderElement<DataHourlyForecast?> createElement() {
    return _HourlyForecastProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HourlyForecastProvider && other.cityName == cityName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cityName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HourlyForecastRef on AutoDisposeFutureProviderRef<DataHourlyForecast?> {
  /// The parameter `cityName` of this provider.
  String get cityName;
}

class _HourlyForecastProviderElement
    extends AutoDisposeFutureProviderElement<DataHourlyForecast?>
    with HourlyForecastRef {
  _HourlyForecastProviderElement(super.provider);

  @override
  String get cityName => (origin as HourlyForecastProvider).cityName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
