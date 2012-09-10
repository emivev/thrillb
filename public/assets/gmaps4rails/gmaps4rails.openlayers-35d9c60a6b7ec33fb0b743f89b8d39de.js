(function(){var e={}.hasOwnProperty,t=function(t,n){function i(){this.constructor=t}for(var r in n)e.call(n,r)&&(t[r]=n[r]);return i.prototype=n.prototype,t.prototype=new i,t.__super__=n.prototype,t};this.Gmaps4RailsOpenlayers=function(e){function n(){n.__super__.constructor.apply(this,arguments),this.map_options={},this.mergeWithDefault("map_options"),this.markers_conf={},this.mergeWithDefault("markers_conf"),this.openMarkers=null,this.markersLayer=null,this.markersControl=null}return t(n,e),n.prototype.createPoint=function(e,t){},n.prototype.createLatLng=function(e,t){return(new OpenLayers.LonLat(t,e)).transform(new OpenLayers.Projection("EPSG:4326"),new OpenLayers.Projection("EPSG:900913"))},n.prototype.createAnchor=function(e){return e===null?null:new OpenLayers.Pixel(e[0],e[1])},n.prototype.createSize=function(e,t){return new OpenLayers.Size(e,t)},n.prototype.createLatLngBounds=function(){return new OpenLayers.Bounds},n.prototype.createMap=function(){var e;return e=new OpenLayers.Map(this.map_options.id),e.addLayer(new OpenLayers.Layer.OSM),e.setCenter(this.createLatLng(this.map_options.center_latitude,this.map_options.center_longitude),this.map_options.zoom),e},n.prototype.createMarker=function(e){var t,n;return n=OpenLayers.Util.extend({},OpenLayers.Feature.Vector.style["default"]),n.fillOpacity=1,this.markersLayer===null&&(this.markersLayer=new OpenLayers.Layer.Vector("Markers",null),this.serviceObject.addLayer(this.markersLayer),this.markersLayer.events.register("featureselected",this.markersLayer,this.onFeatureSelect),this.markersLayer.events.register("featureunselected",this.markersLayer,this.onFeatureUnselect),this.markersControl=new OpenLayers.Control.SelectFeature(this.markersLayer),this.serviceObject.addControl(this.markersControl),this.markersControl.activate()),e.marker_picture===""?(n.graphicHeight=30,n.externalGraphic="http://openlayers.org/dev/img/marker-blue.png"):(n.graphicWidth=e.marker_width,n.graphicHeight=e.marker_height,n.externalGraphic=e.marker_picture,e.marker_anchor!==null&&(n.graphicXOffset=e.marker_anchor[0],n.graphicYOffset=e.marker_anchor[1]),e.shadow_picture!==""&&(n.backgroundGraphic=e.shadow_picture,n.backgroundWidth=e.shadow_width,n.backgroundHeight=e.shadow_height,e.shadow_anchor!==null&&(n.backgroundXOffset=e.shadow_anchor[0],n.backgroundYOffset=e.shadow_anchor[1]))),n.graphicTitle=e.title,t=new OpenLayers.Feature.Vector(new OpenLayers.Geometry.Point(e.Lng,e.Lat),null,n),t.geometry.transform(new OpenLayers.Projection("EPSG:4326"),new OpenLayers.Projection("EPSG:900913")),this.markersLayer.addFeatures([t]),t},n.prototype.clearMarkers=function(){return this.clearMarkersLayerIfExists(),this.markersLayer=null,this.boundsObject=new OpenLayers.Bounds},n.prototype.clearMarkersLayerIfExists=function(){if(this.markersLayer!==null&&this.serviceObject.getLayer(this.markersLayer.id)!==null)return this.serviceObject.removeLayer(this.markersLayer)},n.prototype.extendBoundsWithMarkers=function(){var e,t,n,r,i;r=this.markers,i=[];for(t=0,n=r.length;t<n;t++)e=r[t],i.push(this.boundsObject.extend(this.createLatLng(e.lat,e.lng)));return i},n.prototype.createClusterer=function(e){var t,n,r,i,s;return r={pointRadius:"${radius}",fillColor:"#ffcc66",fillOpacity:.8,strokeColor:"#cc6633",strokeWidth:"${width}",strokeOpacity:.8},n={context:{width:function(e){var t;return(t=e.cluster)!=null?t:{2:1}},radius:function(e){var t;return t=2,e.cluster&&(t=Math.min(e.attributes.count,7)+2),t}}},s=new OpenLayers.Style(r,n),i=new OpenLayers.Strategy.Cluster,t=new OpenLayers.Layer.Vector("Clusters",{strategies:[i],styleMap:new OpenLayers.StyleMap({"default":s,select:{fillColor:"#8aeeef",strokeColor:"#32a8a9"}})}),this.clearMarkersLayerIfExists(),this.serviceObject.addLayer(t),t.addFeatures(e),t},n.prototype.clusterize=function(){var e,t,n,r,i;if(this.markers_conf.do_clustering===!0){this.markerClusterer!==null&&this.clearClusterer(),t=new Array,i=this.markers;for(n=0,r=i.length;n<r;n++)e=i[n],t.push(e.serviceObject);return this.markerClusterer=this.createClusterer(t)}},n.prototype.clearClusterer=function(){return this.serviceObject.removeLayer(this.markerClusterer)},n.prototype.createInfoWindow=function(e){if(e.description!=null)return e.serviceObject.infoWindow=e.description},n.prototype.onPopupClose=function(e){return this.markersControl.unselect(this.feature)},n.prototype.onFeatureSelect=function(e){var t,n;return t=e.feature,n=new OpenLayers.Popup.FramedCloud("featurePopup",t.geometry.getBounds().getCenterLonLat(),new OpenLayers.Size(300,200),t.infoWindow,null,!0,this.onPopupClose),t.popup=n,n.feature=t,this.serviceObject.addPopup(n)},n.prototype.onFeatureUnselect=function(e){var t;t=e.feature;if(t.popup)return this.serviceObject.removePopup(t.popup),t.popup.destroy(),t.popup=null},n.prototype.fitBounds=function(){return this.serviceObject.zoomToExtent(this.boundsObject,!0)},n.prototype.centerMapOnUser=function(){return this.serviceObject.setCenter(this.userLocation)},n}(Gmaps4Rails)}).call(this);