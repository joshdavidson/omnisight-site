---
title: "Privacy Policy"
permalink: /privacy/
---

# OmniSight Privacy Policy

Effective date: November 10, 2026

OmniSight is published by Defiant Labs, called "we" here.

OmniSight is an app for Apple TV, iPhone and iPad that shows open data feeds on a 3D globe.

## The short version

- We don't collect your data. There's no account, no analytics, no advertising and no tracking, and we run no server that the app talks to.
- The app gets its maps and data directly from public services and map providers. Each request shows that service your IP address, and some requests also show which part of the map you're looking at.
- We don't control those services, and we don't know how long they keep what they receive.

## What we collect

Nothing. The app doesn't send us your location, searches, settings, keys or anything about how you use it.

## What stays on your device

The app keeps these on your device only:

- Settings: the layers you've turned on, your map, whether labels are on, and your remote control style on Apple TV.
- Recent searches: the last 5 things you typed into Go to a place and then chose a result for. Search results and their positions aren't kept.
- Keys: any API keys you enter, in the device's Keychain. The app doesn't sync them to iCloud Keychain.
- Map tiles: up to 1 GB of map images, so that they don't need downloading again, each kept only as long as its map service allows. They're stored by web address, which shows which parts of the map you've viewed. Any ArcGIS or TomTom key is taken out of the address first, so no key is stored with them.
- Feed data: copies of some public feeds, such as airports and satellites.
- Radio: while a station plays, its name goes to the system's Now Playing controls.

An iPhone or iPad backup may include your settings, recent searches and keys. The app doesn't save your device location. It also doesn't save where the map was when you close it, though the stored tiles above can show areas you've viewed.

## Your location

The app asks for your location only when you choose "Go to my location", and asks for one approximate reading, accurate to about a kilometre. It uses that reading to move the map to you. It doesn't track your location, use it in the background, or store it.

**The map position does leave your device.** After moving to your location, the map is centred on you, and the services under "Services that see the map area" can then work out roughly where you are, to within a few kilometres. The app rounds the map position it sends to those services, so they get the area on screen, not the exact point. The map images for the area on screen are still requested, so move the map elsewhere if you don't want that.

If you don't choose "Go to my location", the services see only the parts of the map you look at. Those may still be places that matter to you.

## What every request shows

The app connects to each service directly over an encrypted connection. Every request shows the service:

- your IP address, which can suggest your rough location and your internet provider
- the time of the request
- the app's name and version, and whether it's running on Apple TV, iPhone or iPad

The app adds no advertising identifier, device identifier, name or account of yours.

## Services that see the map area

- adsb.lol (`api.adsb.lol`), with the aircraft layer on and the map closer than 4,000 km: the centre of the map rounded to one decimal place, which is about 11 km, and a search radius. This repeats about every 15 seconds.
- AISStream (`stream.aisstream.io`), with the vessels layer on and your key: a box around the area on screen, with edges on whole degrees of latitude and longitude, at least about 330 km each way. With the whole globe in view it's the whole world. A new box replaces it when the map moves out of it or zooms well inside it, at most every 5 seconds.
- USGS (`api.waterdata.usgs.gov`), for the river gauges layer, with the map closer than 1,500 km and over the United States: a box 2 to 4 degrees tall (about 220 to 440 km) around the centre of the map, with the centre rounded to a grid of 0.5 degree, about 55 km. This repeats about every 15 minutes, and when the map moves out of the box.
- Overpass, for the simulated road traffic layer, with the map closer than 80 km (`overpass-api.de`, then `overpass.private.coffee` or `overpass.kumi.systems` if one fails): a box up to 25 km each way around the centre of the map, with the centre rounded to a grid of 2 to 11 km, coarser the higher the map.
- Map tiles, see below.

## Map tiles

Map images are downloaded in squares for the area on screen. The closer you zoom in, the smaller the area each request shows, down to street level.

- Esri (`ibasemaps-api.arcgis.com`, `static-map-tiles-api.arcgis.com`): Esri basemaps and labels, with an ArcGIS key.
- Esri (`elevation3d.arcgis.com`): heights for 3D terrain, coarser than the map, when the app has an ArcGIS key and 3D terrain is on. The key isn't sent there.
- OpenStreetMap (`tile.openstreetmap.org`): the OpenStreetMap basemap.
- NASA GIBS (`gibs.earthdata.nasa.gov`): the night lights layer.
- RainViewer (`tilecache.rainviewer.com`): the radar layer.
- TomTom (`api.tomtom.com`): the traffic speeds layer, with your key.

## Place search

When you submit a search in Go to a place, what you typed goes to Apple through its MapKit service. If you pick a recent search, it's sent again. Nothing is sent as you type. The app doesn't add the map's position to the search. Apple's handling of searches is covered by Apple's own privacy terms.

Finding your location and dictating into the keyboard are also system services run by Apple, under the same terms.

## Keys you enter

Keys are optional. Each goes only to the service it belongs to:

- AISStream key: `stream.aisstream.io`
- TomTom key: `api.tomtom.com`
- OpenSky client ID and secret: `auth.opensky-network.org`, which issues a token that the app sends to `opensky-network.org`
- ArcGIS key: Esri, at the basemap addresses above

The app may also include an ArcGIS key of ours, which is used when you haven't entered your own. Esri can tell us about the use of that key. Esri shows us only how many map tiles were requested with that key, not who requested them or from where.

## Services used when you first open the app

These layers are on until you turn them off. No map position is sent to them, only your IP address and the request details above.

- US Geological Survey (`earthquake.usgs.gov`, `volcanoes.usgs.gov`): earthquakes and volcanoes
- NOAA National Hurricane Center (`www.nhc.noaa.gov`): storms

The app also starts downloading tiles for a basemap: Esri if the app has a key, otherwise OpenStreetMap. With a key it also downloads Esri's terrain heights, unless you turn 3D terrain off.

## Services used by other layers

These are contacted only when you turn on the layer. No map position is sent.

- OpenSky Network (`opensky-network.org`): aircraft worldwide
- CelesTrak (`celestrak.org`): satellites
- The Space Devs Launch Library 2 (`ll.thespacedevs.com`): launches
- OurAirports (`davidmegginson.github.io`): airports
- NASA FIRMS (`firms.modaps.eosdis.nasa.gov`): fires
- NOAA National Data Buoy Center (`www.ndbc.noaa.gov`): buoys
- U.S. Geological Survey (`api.waterdata.usgs.gov`): river gauges, see "Services that see the map area"
- NOAA Space Weather Prediction Center (`services.swpc.noaa.gov`): aurora forecast
- US National Weather Service (`api.weather.gov`): weather alerts
- GDACS (`www.gdacs.org`) and NASA EONET (`eonet.gsfc.nasa.gov`): disasters
- RainViewer (`api.rainviewer.com`): radar
- MBTA (`cdn.mbta.com`) and King County Metro (`s3.amazonaws.com`): transit
- Lyft (`gbfs.lyft.com`): bikeshare
- Radio Browser: the radio station list, from one of its servers (such as `de1.api.radio-browser.info`), found by looking up `all.api.radio-browser.info`

## Radio

When you listen to a station, the app tells Radio Browser which station, as Radio Browser asks apps to, so that it can rank stations by how often they're played. It then connects to that station's own server, using the address listed for it in Radio Browser. Each station is run by someone different, and it sees your IP address and when you listen. We don't know who runs each one or what they keep.

## How these services handle what they receive

These services are independent of us, and most have no agreement with us. We haven't reviewed their privacy terms, and we can't promise that they protect what they receive the way this policy describes, or how long they keep it. Some may log requests, as web servers commonly do. Please check a service's own privacy terms if this matters to you.

We don't send them your name, contact details or any account of yours, unless a key you enter is linked to an account you hold with that service.

## Your choices and deleting your data

We hold no data about you, so there's nothing for us to delete or give you a copy of. On your device:

- Location: don't use "Go to my location", or turn off location for OmniSight in Settings.
- Recent searches: choose "Clear recent searches" in Go to a place.
- Keys: choose Remove next to the key in OmniSight's Settings.
- Layers: turn off any layer in the Layers panel, and the app stops contacting its service.
- Everything else: delete the app, which removes its settings, recent searches, stored tiles and feeds. Keys in the Keychain can outlast the app, so remove them first.

To ask a service about data it may hold, contact that service directly.

## Children

The app has no accounts and doesn't ask anyone's age. We don't collect data from anyone, including children. The services above receive the same requests whoever is using the app.

## Changes to this policy

If what the app does changes, we'll update this policy and its effective date.

## Contact

Questions about this policy: hello@defiantlabs.io
