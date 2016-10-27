//
//  Hero.swift
//  Overwatch
//
//  Created by Enrique Torrendell on 10/26/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation
import UIKit

struct Hero: OverwatchHero {
    
    var name: HeroName
    var hitPoints: Health = 0
    var heroType: HeroType {
        return produceHeroType()
    }
    var image: UIImage { return produceButtonImage() }
    var profileImage: UIImage { return produceprofileImage() }
    
    init(name: HeroName) {
        self.name = name
        self.hitPoints = produceInitialHitPoints()
    }
    
    func produceButtonImage() -> UIImage {
        switch name {
        case .genji:
            return #imageLiteral(resourceName: "Genji")
        case .mcCree:
            return #imageLiteral(resourceName: "McCree")
        case .pharah:
            return #imageLiteral(resourceName: "Pharah")
        case .reaper:
            return #imageLiteral(resourceName: "Reaper")
        case .soldier76:
            return #imageLiteral(resourceName: "Soldier 76")
        case .tracer:
            return #imageLiteral(resourceName: "Tracer")
        case .bastion:
            return #imageLiteral(resourceName: "Bastion")
        case .hanzo:
            return #imageLiteral(resourceName: "Hanzo")
        case .junkrat:
            return #imageLiteral(resourceName: "Junkrat")
        case .mei:
            return #imageLiteral(resourceName: "Mei")
        case .torbjörn:
            return #imageLiteral(resourceName: "Torbjörn")
        case .widowmaker:
            return #imageLiteral(resourceName: "Widowmaker")
        case .dva:
            return #imageLiteral(resourceName: "DVA")
        case .reinhardt:
            return #imageLiteral(resourceName: "Reinhardt")
        case .roadhog:
            return #imageLiteral(resourceName: "Roadhog")
        case .winston:
            return #imageLiteral(resourceName: "Winston")
        case .zarya:
            return #imageLiteral(resourceName: "Zarya")
        case .ana:
            return #imageLiteral(resourceName: "Ana")
        case .lúcio:
            return #imageLiteral(resourceName: "Lúcio")
        case .mercy:
            return #imageLiteral(resourceName: "Mercy")
        case .symmetra:
            return #imageLiteral(resourceName: "Symmetra")
        case .zenyatta:
            return #imageLiteral(resourceName: "Zenyatta")
            //            return UIImage(named: "\(name)")!
        }
    }
    
    func produceprofileImage() -> UIImage {
        switch name {
        case .genji:
            return #imageLiteral(resourceName: "GenjiProfile")
        case .mcCree:
            return #imageLiteral(resourceName: "McCreeProfile")
        case .pharah:
            return #imageLiteral(resourceName: "PharahProfile")
        case .reaper:
            return #imageLiteral(resourceName: "ReaperProfile")
        case .soldier76:
            return #imageLiteral(resourceName: "Soldier 76Profile")
        case .tracer:
            return #imageLiteral(resourceName: "TracerProfile")
        case .bastion:
            return #imageLiteral(resourceName: "BastionProfile")
        case .hanzo:
            return #imageLiteral(resourceName: "HanzoProfile")
        case .junkrat:
            return #imageLiteral(resourceName: "JunkratProfile")
        case .mei:
            return #imageLiteral(resourceName: "MeiProfile")
        case .torbjörn:
            return #imageLiteral(resourceName: "TorbjornProfile")
        case .widowmaker:
            return #imageLiteral(resourceName: "WidowmakerProfile")
        case .dva:
            return #imageLiteral(resourceName: "DVAProfile")
        case .reinhardt:
            return #imageLiteral(resourceName: "ReinhardtProfile")
        case .roadhog:
            return #imageLiteral(resourceName: "RoadhogProfile")
        case .winston:
            return #imageLiteral(resourceName: "WinstonProfile")
        case .zarya:
            return #imageLiteral(resourceName: "ZaryaProfile")
        case .ana:
            return #imageLiteral(resourceName: "AnaProfile")
        case .lúcio:
            return #imageLiteral(resourceName: "LucioProfile")
        case .mercy:
            return #imageLiteral(resourceName: "MercyProfile")
        case .symmetra:
            return #imageLiteral(resourceName: "SymmetraProfile")
        case .zenyatta:
            return #imageLiteral(resourceName: "ZenyattaProfile")
            //            return UIImage(named: "\(name)Profile")!
        }
    }
}
