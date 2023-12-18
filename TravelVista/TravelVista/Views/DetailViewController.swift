//
//  DetailViewController.swift
//  TravelVista
//
//  Created by Amandine Cousin on 18/12/2023.
//

import UIKit
import MapKit

class DetailViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var capitalNameLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var embedMapView: UIView!
    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var rateView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setCustomDesign()
        self.setMapLocation(lat: 28.394857,
                            long: 84.124008)
    }
    
    private func setCustomDesign() {
        self.mapView.layer.cornerRadius = self.mapView.frame.size.width / 2
        self.embedMapView.layer.cornerRadius = self.embedMapView.frame.size.width / 2
        self.mapButton.layer.cornerRadius = self.mapButton.frame.size.width / 2
        
        self.mapView.layer.borderColor = UIColor(named: "CustomSand")?.cgColor
        self.mapView.layer.borderWidth = 2
    }
    
    private func setMapLocation(lat: Double, long: Double) {
        let initialLocation = CLLocationCoordinate2D(latitude: lat, longitude: long)
        let span = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        let region = MKCoordinateRegion(center: initialLocation, span: span)
        self.mapView.setRegion(region, animated: true)
        self.mapView.delegate = self
    }
}
