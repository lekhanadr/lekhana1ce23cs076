package com.gamescrud.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gamescrud.model.Games;
import com.gamescrud.repository.GamesRepository;

@Service
public class Gameservice {
	
	@Autowired
	private GamesRepository gamesRepository;
	
	public List<Games>getAllGames(){
		List<Games> games= gamesRepository.findAll();
		return games;
				
	}
	public Games getgameById(Long id) {
		
		Optional<Games>byId=gamesRepository.findById(id);
		Games game=byId.get();
		return game;
		
		
	}
	public void deletegameById(Long id) {
		gamesRepository.deleteById(id);
		
	}
	public Games updategameById(Games game,Long id) {
		Optional<Games>oldGame=gamesRepository.findById(id);
		Games oldGame1=oldGame.get();
		System.out.println(oldGame1);
		oldGame1.setGameName(game.getGameName());
		oldGame1.setCostPerHour(game.getCostPerHour());
		oldGame1.setStatus(game.getStatus());
		Games save = gamesRepository.save(oldGame1);
		return save;
		
	}
	

}
