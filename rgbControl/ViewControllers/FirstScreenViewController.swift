//
//  FirstScreenViewController.swift
//  rgbControl
//
//  Created by Pavel Krigin on 24.8.22..
//

import UIKit

protocol SettingsVCprotocol {
    func getColor(for color: UIColor)
}

final class FirstScreenViewController: UIViewController {

    @IBOutlet var settingsButton: UIBarButtonItem!
    @IBOutlet var backgroudColorFSVC: UIView!
    
//MARK: Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = view.backgroundColor
        settingsVC.delegate = self
    }
    
}

//MARK: - Extensions

extension FirstScreenViewController: SettingsVCprotocol {
    func getColor(for color: UIColor) {
        view.backgroundColor = color
    }
}
