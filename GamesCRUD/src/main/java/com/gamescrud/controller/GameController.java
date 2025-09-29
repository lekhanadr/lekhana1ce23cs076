package com.gamescrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.gamescrud.model.Games;
import com.gamescrud.service.Gameservice;

import java.util.List;
@RestController
public class GameController {
	@Autowired
	private Gameservice gameService;
	
	@GetMapping({"/games","/",""})
	public List<Games>getAllGames(){
	List< Games> allGames=gameService. getAllGames() ;
		return allGames;
		
	}	
	
	@GetMapping("/gamebyid")
		public Games getGameById  (@RequestParam Long id) {
		
		    Games game= gameService.getgameById(id);
			return game;
			
			
	}
	@PostMapping({"/games","/",""})
	public String storeGame() {
		return "storing games by server";
	}	
	@PutMapping("/games/id")
	public Games UpadateGameByID(@RequestBody Games game,@RequestParam Long id) {
		Games updateGame= gameService.updategameById(game, id);
		return updateGame;
	}
	@DeleteMapping("/games/id")
	 public String deleteGameById(@RequestParam Long id) {
		gameService.deletegameById(id);
	    return "game is deleted";
	
	}
}
