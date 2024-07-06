//
//  ViewController.swift
//  NavigationTest
//
//  Created by 柿崎 on 2024/07/06.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    private let storyboardID = "Second"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tappedNextButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SecondViewController", bundle: nil)
        guard let secondViewController = storyboard.instantiateViewController(withIdentifier: storyboardID) as? SecondViewController else {
            print("ViewController with identifier 'SecondViewControllerID' not found")
            return
        }

        guard let navigationController else { return }
        navigationController.pushViewController(secondViewController, animated: true)
    }
}

