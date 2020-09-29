import 'package:google_maps_flutter_platform_interface/src/types/tile_overlay.dart';

/// Converts an [Iterable] of TileOverlays in a Map of TileOverlayId -> TileOverlay.
Map<TileOverlayId, TileOverlay> keyByTileOverlayId(
    Iterable<TileOverlay> tileOverlays) {
  if (tileOverlays == null) {
    return <TileOverlayId, TileOverlay>{};
  }
  return Map<TileOverlayId, TileOverlay>.fromEntries(tileOverlays.map(
      (TileOverlay tileOverlay) => MapEntry<TileOverlayId, TileOverlay>(
          tileOverlay.tileOverlayId, tileOverlay)));
}

/// Converts a Set of TileOverlays into something serializable in JSON.
List<Map<String, dynamic>> serializeTileOverlaySet(
    Set<TileOverlay> tileOverlays) {
  if (tileOverlays == null) {
    return null;
  }
  return tileOverlays
      .map<Map<String, dynamic>>((TileOverlay p) => p.toJson())
      .toList();
}
