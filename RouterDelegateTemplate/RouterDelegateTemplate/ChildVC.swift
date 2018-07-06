//
//  ChildVC.swift
//  RouterDelegateTemplate
//
//  Created by 史翔新 on 2018/07/06.
//  Copyright © 2018年 史翔新. All rights reserved.
//

import UIKit

final class ChildVC: UIViewController {
	
	var color: UIColor?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = color
	}
	
	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		routerDelegate?.viewController(self, needsTransitionWith: nil)
	}
	
}
