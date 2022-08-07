//
//  ViewController.swift
//  rgbControl
//
//  Created by Pavel Krigin on 5.8.22..
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var rgbShow: UIView!
    
    @IBOutlet var redColorMeaning: UILabel!
    @IBOutlet var greenColorMeaning: UILabel!
    @IBOutlet var blueColorMeaning: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbShow.layer.cornerRadius = 10
        setupSliderRed()
        setupSliderGreen()
        setupSliderBlue()
               
    }

    @IBAction func sliderRedAction() {
        redColorMeaning.text = String(sliderRed.value)
        rgbShow.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                          green: CGFloat(sliderGreen.value),
                                          blue: CGFloat(sliderBlue.value), alpha: 1)
        
        rgbShow.backgroundColor =  rgbShow.backgroundColor?.withAlphaComponent(CGFloat(sliderRed.value))
    }
    
    @IBAction func sliderGreenAction() {
        greenColorMeaning.text = String(sliderGreen.value)
        rgbShow.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
        
        rgbShow.backgroundColor =  rgbShow.backgroundColor?.withAlphaComponent(CGFloat(sliderGreen.value))
    }
    
    @IBAction func sliderBlueAction() {
        blueColorMeaning.text = String(sliderBlue.value)
        rgbShow.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
        
        rgbShow.backgroundColor =  rgbShow.backgroundColor?.withAlphaComponent(CGFloat(sliderBlue.value))
    }
    
    // MARK: - Private Methods
    private func setupSliderRed() {
        sliderRed.value = 0
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.minimumTrackTintColor = .red
        sliderRed.maximumTrackTintColor = .gray
        sliderRed.thumbTintColor = .red
    }

    private func setupSliderGreen() {
        sliderGreen.value = 0
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.minimumTrackTintColor = .green
        sliderGreen.maximumTrackTintColor = .gray
        sliderGreen.thumbTintColor = .green
    }

    private func setupSliderBlue() {
        sliderBlue.value = 0
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.minimumTrackTintColor = .blue
        sliderBlue.maximumTrackTintColor = .gray
        sliderBlue.thumbTintColor = .blue
    }
    
//    private func sliderAction(sliderColor.value: Float) {
//        redColorMeaning.text = String(sliderColor.value)
//        rgbShow.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
//    }
//
        
}

