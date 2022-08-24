//
//  ViewController.swift
//  rgbControl
//
//  Created by Pavel Krigin on 5.8.22..
//

import UIKit



final class SettingsViewController: UIViewController {

//MARK: - Outlets
    @IBOutlet var rgbShow: UIView!
    
    @IBOutlet var redColorMeaning: UILabel!
    @IBOutlet var greenColorMeaning: UILabel!
    @IBOutlet var blueColorMeaning: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var doneButton: UIButton! 
    
    var color: UIColor!
    
    var delegate: SettingsVCprotocol!
    
//MARK: - Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rgbShow.backgroundColor = color
        
        rgbShow.layer.cornerRadius = 10
        
        setupSlider(sliderRed, color: .red)
        setupSlider(sliderGreen, color: .green)
        setupSlider(sliderBlue, color: .blue)
        
        setupViewColor()
        

    }
        
//MARK: - IBA Functions
    @IBAction func sliderRedAction() {
        redColorMeaning.text = String(sliderRed.value)
        setupViewColor()
    }
    
    @IBAction func sliderGreenAction() {
        greenColorMeaning.text = String(sliderGreen.value)
        setupViewColor()
    }
    
    @IBAction func sliderBlueAction() {
        blueColorMeaning.text = String(sliderBlue.value)
        setupViewColor()
    }
    
    @IBAction func doneButton(_ sender: Any) {
        delegate.getColor(for: rgbShow.backgroundColor ?? .blue)
    }
    
    
    // MARK: - Private Methods
    private func setupViewColor() {
        rgbShow.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                          green: CGFloat(sliderGreen.value),
                                          blue: CGFloat(sliderBlue.value),
                                          alpha: 1)
    }
    
    private func setupSlider(_ slider: UISlider, color: UIColor) {
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = color
        slider.maximumTrackTintColor = .gray
        slider.thumbTintColor = color
    }
}


