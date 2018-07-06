//
//  ViewController+RouterDelegate.swift
//  RouterDelegateTemplate
//
//  Created by 史翔新 on 2018/07/06.
//  Copyright © 2018年 史翔新. All rights reserved.
//

import UIKit

protocol RouteInformation {
	
}

protocol RouterDelegate: class {
	func viewController(_ controller: UIViewController, needsTransitionWith information: RouteInformation?)
}

extension ViewController: RouterDelegate {
	
	func viewController(_ controller: UIViewController, needsTransitionWith information: RouteInformation?) {
		
	}
	
}
