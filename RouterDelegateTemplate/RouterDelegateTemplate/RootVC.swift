//
//  RootVC.swift
//  RouterDelegateTemplate
//
//  Created by 史翔新 on 2018/07/06.
//  Copyright © 2018年 史翔新. All rights reserved.
//

import UIKit

final class RootVC: UIViewController {
	
	struct Point: RouteInformation {
		let x: CGFloat
		let y: CGFloat
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
	}
	
	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		let location = touches.first!.location(in: view)
		let point = Point(x: location.x / view.bounds.width, y: location.y / view.bounds.height)
		routerDelegate?.viewController(self, needsTransitionWith: point)
	}
	
}
