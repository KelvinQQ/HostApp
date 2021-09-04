//
//  ViewController.swift
//  Native_iOS
//
//  Created by admin on 2021/9/4.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button = UIButton.init(type: .system)
        button.frame = CGRect.init(x: 0, y: 100, width: 100, height: 50)
        button.backgroundColor = UIColor.red
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction() {
        let flutterVc = FlutterViewController.init(project: nil, nibName: nil, bundle: nil)
        flutterVc.navigationItem.title = "Flutter Demo"
//        self.present(flutterVc, animated: true, completion: nil)
        self.navigationController?.pushViewController(flutterVc, animated: true)
//        FlutterViewController* flutterViewController = [[FlutterViewController alloc] initWithProject:nil nibName:nil bundle:nil];
//            flutterViewController.navigationItem.title = @"Flutter Demo";
//
//            [self presentViewController:flutterViewController animated:YES completion:nil];
    }


}

