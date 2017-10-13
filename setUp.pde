import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;


UnfoldingMap map;
Location beijing = new Location(39.919019f, 116.396471f);

float maxPanningDistance = 30;
PVector bound = new PVector(1500, 1000);
Table  traject;

void setup() {
  size(int(bound.x), int(bound.y));
  //map = new UnfoldingMap(this,new OpenStreetMap.OpenStreetMapProvider());
  map = new UnfoldingMap(this, new Google.GoogleMapProvider());
  MapUtils.createDefaultEventDispatcher(this, map);
  map.zoomAndPanTo(beijing, 12);
  map.setZoomRange(10, 20);
  map.setPanningRestriction(beijing, maxPanningDistance);
  traject = loadTable("20081024020959.csv","header");
  MapUtils.creatDefaultEventDispatcher(this,map);
  List<Feature> features = GeoDataReader.loadData()this,data;
}

void draw() {
  map.draw();
  fill(204, 237, 255);
  noStroke();
  rect(0, 0, bound.x, bound.y/10);
  rect(0, 0, bound.x/8, bound.y);
  rect(bound.x*7/8, 0, bound.x/8, bound.y);
  rect(0, bound.x*5/6, bound.x, bound.y/6);
}

