//
//  MapViewController.swift
//  TravelVista
//
//  Created by Amandine Cousin on 18/12/2023.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    var coordinates: CLLocationCoordinate2D? = nil
    var capitalName: String? = nil
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setMapLocation()
        if (coordinates != nil) && (capitalName != nil) {
            setMapPins()
        }
    }
    
    func setUpData(capitalName: String?, lat: Double, long: Double) {
        self.capitalName = capitalName
        self.coordinates = CLLocationCoordinate2D(latitude: lat, longitude: long)
    }
    
    private func setMapLocation() {
        let initialLocation = self.coordinates!
        let span = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        let region = MKCoordinateRegion(center: initialLocation, span: span)
        self.mapView.setRegion(region, animated: true)
        self.mapView.delegate = self
    }
    
    private func setMapPins() {
        let pin = MKPointAnnotation()
        pin.coordinate = self.coordinates!
        pin.title = capitalName
        mapView.addAnnotation(pin)
    }
}

