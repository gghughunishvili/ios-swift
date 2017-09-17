//
//  SkillVC.swift
//  learning-swoosh-app
//
//  Created by Giorgi Ghughunishvili on 9/17/17.
//  Copyright © 2017 Giorgi Ghughunishvili. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let playerDesiredLeague = player.desiredLeague
        print("Selected Legaue: \(playerDesiredLeague!)")
    }
}
