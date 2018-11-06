//
//  TabViewController.swift
//  P&D_App
//
//  Created by Azuma on 2018/11/05.
//  Copyright © 2018 P&D. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TabViewController: UITabBarController {

    private let disposeBag = DisposeBag()

    var button: UIButton {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: "Open"), for: .normal)
        button.sizeToFit()
        button.center = CGPoint(x: tabBar.bounds.size.width/2, y: tabBar.bounds.size.height - (button.bounds.size.height/2))
        return button
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        bind()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        tabBar.addSubview(button)
    }

    private func bind() {
        button.rx.tap
            .subscribe({ _ in

            })
            .disposed(by: disposeBag)
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
