//
//  ViewController.swift
//  RouterDelegateTemplate
//
//  Created by 史翔新 on 2018/07/06.
//  Copyright © 2018年 史翔新. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		appDelegate?.routerDelegate = self
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

private extension UIViewController {
	
	var appDelegate: AppDelegate? {
		return UIApplication.shared.delegate as? AppDelegate
	}
	
}

extension UIViewController {
	
	var routerDelegate: RouterDelegate? {
		
		return appDelegate?.routerDelegate
		
	}
	
}
