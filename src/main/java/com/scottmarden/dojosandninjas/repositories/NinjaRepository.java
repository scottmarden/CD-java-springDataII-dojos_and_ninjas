package com.scottmarden.dojosandninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.scottmarden.dojosandninjas.models.Dojo;
import com.scottmarden.dojosandninjas.models.Ninja;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long>{
	
	public List<Ninja> findAllByDojo(Dojo dojo);
}
