import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkersScreen extends StatefulWidget {
  const MarkersScreen({Key? key}) : super(key: key);

  @override
  State<MarkersScreen> createState() => _MarkersScreenState();
}

class _MarkersScreenState extends State<MarkersScreen> {
  final locations = const [
    LatLng(20.747562482334256, 73.0355486967819),
    LatLng(20.74871628142771, 73.03255535154321),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          Positioned(
            top: 40,
            right: 0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  primary: Colors.blue,
                  backgroundColor: Colors.white.withOpacity(0.0),
                  onPrimary: Colors.grey.shade50,
                  elevation: 0),
              child: const Icon(
                Icons.menu_sharp,
                size: 40,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            child: SizedBox(
              width: 100,
              height: 100,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.purple.withOpacity(0.2),
                child: CircleAvatar(
                  radius: 39,
                  backgroundColor: Colors.white.withOpacity(0.6),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Got a plan?"),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            right: 10,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  primary: Colors.blue,
                  backgroundColor: Colors.white.withOpacity(0.5),
                  onPrimary: Colors.grey.shade50,
                  elevation: 0),
              child: Icon(
                Icons.calendar_month_outlined,
                color: Colors.purple.shade200,
                size: 40,
              ),
            ),
          ),
        ],
      ),
      body: CustomGoogleMapMarkerBuilder(
        customMarkers: [
          MarkerData(
              marker: Marker(
                  markerId: const MarkerId('id-1'), position: locations[0]),
              child: customMarker()),
          MarkerData(
              marker: Marker(
                  markerId: const MarkerId('id-2'), position: locations[1]),
              child: customMarker()),
        ], //markers(),
        builder: (BuildContext context, Set<Marker>? markers) {
          if (markers == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(20.747562482334256, 73.0355486967819),
              zoom: 12.4746,
            ),
            zoomControlsEnabled: true,
            markers: markers,
            onMapCreated: (GoogleMapController controller) {},
          );
        },
      ),
    );
  }
}

Widget customMarker() {
  return Stack(
    children: [
      SizedBox(
        height: 100,
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SvgPicture.string(
            ''''<svg
                  width="89.697098mm"
                  height="115.75406mm"
                  viewBox="0 0 89.697098 115.75406"
                  version="1.1"
                  id="svg5"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:svg="http://www.w3.org/2000/svg">
                  <defs
                  id="defs2" />
                  <g
                  id="layer1"
                  transform="translate(-60.40627,-89.327207)">
                  <g
                  id="g2220">
                  <circle
                  style="fill:#c3c5ff;fill-opacity:1;stroke:#c3c5ff;stroke-width:0.264583;stroke-opacity:1"
                  id="path61"
                  cx="105.25482"
                  cy="134.17577"
                  r="44.716263" />
                  <circle
                  style="fill:#c3c5ff;fill-opacity:1;stroke:#eef1ff;stroke-width:0.283212;stroke-opacity:1"
                  id="path223"
                  cx="105.39722"
                  cy="134.34216"
                  r="39.318012" />
                  <path
                  style="fill:#c3c5ff;fill-opacity:1;stroke:#c3c5ff;stroke-width:0.264583;stroke-opacity:1"
                  id="path1787"
                  d="m 87.935909,202.4571 -27.10076,-44.76015 52.313811,-1.08987 z"
                  transform="matrix(0.64967987,0,0,0.64967987,49.446167,73.377106)" />
                  </g>
                  </g>
                  </svg>''',
          ),
        ),
      ),
      memberPosition(10, 19, "#c3c5ff"),
      memberPosition(30, 2, "#c3c5ff"),
      memberPosition(55, 4, "#c3c5ff"),
      memberPosition(71, 23, "#c3c5ff"),
      memberPosition(69, 48, "#c3c5ff"),
    ],
  );
}

Widget memberPosition(double left, double top, String circleColor) {
  return Positioned(
    left: left,
    top: top,
    child: SizedBox(
      width: 20,
      height: 20,
      child: CircleAvatar(
        child: ClipOval(
          child: SvgPicture.string(
            ''''<svg
                   width="29.852959mm"
                   height="29.852959mm"
                   viewBox="0 0 29.852959 29.852959"
                   version="1.1"
                   id="svg5"
                   inkscape:version="1.2 (dc2aedaf03, 2022-05-15)"
                   sodipodi:docname="happen. logo 1.svg"
                   inkscape:export-filename="happen. logo.png"
                   inkscape:export-xdpi="96"
                   inkscape:export-ydpi="96"
                   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
                   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
                   xmlns="http://www.w3.org/2000/svg"
                   xmlns:svg="http://www.w3.org/2000/svg">
                  <sodipodi:namedview
                     id="namedview7"
                     pagecolor="#505050"
                     bordercolor="#eeeeee"
                     borderopacity="1"
                     inkscape:showpageshadow="0"
                     inkscape:pageopacity="0"
                     inkscape:pagecheckerboard="0"
                     inkscape:deskcolor="#505050"
                     inkscape:document-units="mm"
                     showgrid="true"
                     inkscape:zoom="0.84096521"
                     inkscape:cx="173.61004"
                     inkscape:cy="456.02362"
                     inkscape:window-width="1920"
                     inkscape:window-height="1178"
                     inkscape:window-x="-6"
                     inkscape:window-y="-6"
                     inkscape:window-maximized="1"
                     inkscape:current-layer="layer1">
                    <inkscape:grid
                       type="xygrid"
                       id="grid221" />
                  </sodipodi:namedview>
                  <defs
                     id="defs2" />
                  <g
                     inkscape:label="Layer 1"
                     inkscape:groupmode="layer"
                     id="layer1"
                     transform="translate(-89.637186,-32.416381)">
                    <g
                       id="g2175"
                       transform="translate(29.480383,-9.4979645)"
                       inkscape:export-filename="small-circle.svg"
                       inkscape:export-xdpi="96"
                       inkscape:export-ydpi="96">
                      <circle
                         style="fill:$circleColor;fill-opacity:1;stroke:#c3c5ff;stroke-width:0.264583;stroke-opacity:1"
                         id="path2117"
                         cx="75.083282"
                         cy="56.840824"
                         r="14.794188" />
                      <circle
                         style="fill:#ffffff;fill-opacity:1;stroke:#c3c5ff;stroke-width:0.336884;stroke-opacity:1"
                         id="path2119"
                         cx="75.194519"
                         cy="56.952057"
                         r="10.197423" />
                    </g>
                  </g>
                  </svg>''',
          ),
        ),
      ),
    ),
  );
}
