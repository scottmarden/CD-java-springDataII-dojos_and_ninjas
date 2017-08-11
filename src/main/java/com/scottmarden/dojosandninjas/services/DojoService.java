package com.scottmarden.dojosandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.scottmarden.dojosandninjas.models.Dojo;
import com.scottmarden.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {

	private DojoRepository dojoRepository;
	
	public DojoService(DojoRepository dojoRepository) {
		this.dojoRepository = dojoRepository;
	}
	
	public void createDojo(Dojo dojo) {
		dojoRepository.save(dojo);
	}
	
	public List<Dojo> findDojos(){
		return (List<Dojo>) dojoRepository.findAll();
	}
	
	public Dojo findOneDojo(Long id) {
		return dojoRepository.findOne(id);
	}
	
	
}
