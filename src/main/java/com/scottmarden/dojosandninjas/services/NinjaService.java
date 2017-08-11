package com.scottmarden.dojosandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.scottmarden.dojosandninjas.models.Dojo;
import com.scottmarden.dojosandninjas.models.Ninja;
import com.scottmarden.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private NinjaRepository ninjaRepository;
	
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
	
	public void createNinja(Ninja ninja) {
		ninjaRepository.save(ninja);
	}
	
	public List<Ninja> dojoNinjas(Dojo dojo){
		return ninjaRepository.findAllByDojo(dojo);
	}
}
