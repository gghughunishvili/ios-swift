//
//  LeagueVC.swift
//  learning-swoosh-app
//
//  Created by Giorgi Ghughunishvili on 9/17/17.
//  Copyright © 2017 Giorgi Ghughunishvili. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague("mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague("womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague("coed")
    }
    
    func selectLeague(_ leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
        
    }
}









