//
//  MoviesMasterVC.swift
//  Classwork6
//
//  Created by Madaui on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit


class MoviesMasterVC:  UIViewController {
    
        var marvelImages = MarvelMovieData
        var DCImages = DCMovieData
   
    
    @IBOutlet weak var marvelImg0: UIButton!
    @IBOutlet weak var marvelImg1: UIButton!
    @IBOutlet weak var marvelImg2: UIButton!
    @IBOutlet weak var marvelImg3: UIButton!
    @IBOutlet weak var marvelImg4: UIButton!
    @IBOutlet weak var marvelImg5: UIButton!

    @IBOutlet weak var DCImg0: UIButton!
    @IBOutlet weak var DCImg1: UIButton!
    @IBOutlet weak var DCImg2: UIButton!
    @IBOutlet weak var DCImg3: UIButton!
    @IBOutlet weak var DCImg4: UIButton!
    @IBOutlet weak var DCImg5: UIButton!

    override  func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDCImages()
        }
    func setMarvelImages() {
        marvelImg0.setBackgroundImage(UIImage(named: marvelImages[0].movieName), for: .normal)
        marvelImg1.setBackgroundImage(UIImage(named: marvelImages[1].movieName), for: .normal)
        marvelImg2.setBackgroundImage(UIImage(named: marvelImages[2].movieName), for: .normal)
        marvelImg3.setBackgroundImage(UIImage(named: marvelImages[3].movieName), for: .normal)
        marvelImg4.setBackgroundImage(UIImage(named: marvelImages[4].movieName), for: .normal)
        marvelImg5.setBackgroundImage(UIImage(named: marvelImages[5].movieName), for: .normal)
        }
    

    @IBAction func MarvelBtns(_ sender: UIButton) {
        selectedMovie = MarvelMovieData[sender.tag]
}
    
    
    func setDCImages() {
        DCImg0.setBackgroundImage(UIImage(named: DCImages[0].movieName), for: .normal)
        DCImg1.setBackgroundImage(UIImage(named: DCImages[1].movieName), for: .normal)
        DCImg2.setBackgroundImage(UIImage(named: DCImages[2].movieName), for: .normal)
        DCImg3.setBackgroundImage(UIImage(named: DCImages[3].movieName), for: .normal)
        DCImg4.setBackgroundImage(UIImage(named: DCImages[4].movieName), for: .normal)
        DCImg5.setBackgroundImage(UIImage(named: DCImages[5].movieName), for: .normal)
        }
    var selectedMovie : Movie = Movie(movieName: "", movieReleaseDate: 2000, actors: [""], rating: 0.0, pgRating: "PG")
    

    
    @IBAction func DCBtns(_ sender: UIButton) {
        selectedMovie = DCMovieData[sender.tag]
        
    }
    
}

