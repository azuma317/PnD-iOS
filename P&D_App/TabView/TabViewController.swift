//
//  TabViewController.swift
//  P&D_App
//
//  Created by Azuma on 2018/11/05.
//  Copyright © 2018 P&D. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        setupCenterButton()
    }

    private func setupCenterButton() {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: "Open"), for: .normal)
        button.sizeToFit()
        button.center = CGPoint(x: tabBar.bounds.size.width/2, y: tabBar.bounds.size.height - (button.bounds.size.height/2))
        button.addTarget(self, action: #selector(tapCetnerButton(sender:)), for: .touchUpInside)
        tabBar.addSubview(button)
    }

    @objc func tapCetnerButton(sender: Any) {
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
