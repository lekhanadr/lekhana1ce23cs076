package com.gamescrud.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.gamescrud.model.Games;

public interface GamesRepository extends JpaRepository<Games, Long>{
  
	
}
