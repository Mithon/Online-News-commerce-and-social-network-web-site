package edu.daffodil.ssb.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.daffodil.ssb.dao.Country;
import edu.daffodil.ssb.dao.CountryDao;

@Service("countryService")
public class CountryService {

	private CountryDao countryDao;
	
	@Autowired
	public void setCountryDao(CountryDao countryDao) {
		this.countryDao = countryDao;
	}


	public List<Country> showCountry() {
		
		return countryDao.showCountry();
	}

}
