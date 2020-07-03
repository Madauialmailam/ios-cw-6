//
//  MoviesDetailsVC.swift
//  Classwork6
//
//  Created by Madaui on 7/3/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MoviesDetailsVC: UIViewController {
    
        


    @IBOutlet weak var MovieImg: UIImageView!
    
    @IBOutlet weak var MoviePgRate: UILabel!
    
    @IBOutlet weak var MovieReleaseDate: UILabel!
    
    @IBOutlet weak var MovieRating: UILabel!
    
    @IBOutlet weak var MovieActorImg1: UIImageView!
    
    @IBOutlet weak var MovieActorImg2: UIImageView!
    
    @IBOutlet weak var MovieActorImg3: UIImageView!
    
    @IBOutlet weak var MovieActor1Name: UILabel!
    
    @IBOutlet weak var MovieActor2Name: UILabel!
    
    @IBOutlet weak var MovieActor3Name: UILabel!

    
     
    
    
    
    func setMovieDetails(){
        self.MovieImg.image = UIImage(named: selectedMovie.movieName)
        self.MoviePgRate.text = selectedMovie.pgRating
        self.MovieReleaseDate.text = String(selectedMovie.movieReleaseDate)
        self.MovieRating.text = String(selectedMovie.rating)
        self.MovieActorImg1.image = UIImage(named: selectedMovie.actors[0])
        self.MovieActorImg2.image = UIImage(named:selectedMovie.actors[1])
        self.MovieActorImg3.image = UIImage(named: selectedMovie.actors[2])
        }
    override func viewDidLoad() {
        setMovieDetails()
    }
    func configureUI(){
        MovieRating.layer.cornerRadius = 20
        MoviePgRate.layer.cornerRadius = 20
        MovieReleaseDate.layer.cornerRadius = 20

    }

}
