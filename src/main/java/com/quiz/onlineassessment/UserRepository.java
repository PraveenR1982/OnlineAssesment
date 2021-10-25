package com.quiz.onlineassessment;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User,String> {
	User findByEmail(String email);
	
	List<User> findByOrderByFirstnameAsc();

}
