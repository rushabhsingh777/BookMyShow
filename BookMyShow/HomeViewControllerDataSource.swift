//
//  HomeViewControllerDataSource.swift
//  BookMyShow
//
//  Created by Rushabh Singh on 12/05/21.
//

import UIKit

extension HomeViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.moviesList?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let popularMovieCell = popularMoviesTableView.dequeueReusableCell(withIdentifier: POPULAR_MOVIE_CELL_IDENTIFIER, for: indexPath) as! PopularMovieCell
        if self.moviesList?.results.count ?? 0 > indexPath.row{
            let movieResult : Result? = self.moviesList?.results[indexPath.row]
            if let movie = movieResult {
                popularMovieCell.designMovieCell(movie: movie)
            }
        }
        return popularMovieCell
        
    }
    
}
