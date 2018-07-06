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
	
	private func makeChildVC(from point: RootVC.Point) -> ChildVC {
		let child = ChildVC()
		child.color = UIColor(red: point.x, green: point.y, blue: point.x * point.y, alpha: 1)
		return child
	}
	
	func viewController(_ controller: UIViewController, needsTransitionWith information: RouteInformation?) {
		
		switch (controller, information) {
		case (self, _):
			let root = RootVC()
			controller.present(root, animated: false, completion: nil)
			
		case (let root as RootVC, let point as RootVC.Point):
			let child = makeChildVC(from: point)
			root.present(child, animated: true, completion: nil)
			
		case (let child as ChildVC, _):
			child.dismiss(animated: true, completion: nil)
			
		default:
			assertionFailure("Invalid transition")
		}
		
	}
	
}
