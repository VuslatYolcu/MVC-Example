//
//  HomeViewController.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 11/12/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var welcomeLbl: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        user = NetworkService.shared.getLoggedInUser()
        populateUserName()
    }
    
    private func populateUserName() {
        welcomeLbl.text = "Hello, \(user.firstName) \(user.lastName)"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
