package com.quiz.onlineassessment;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface AssessmentRepository extends CrudRepository<Assessment,Long> {

	List<Assessment> findByOrderByDateAsc();
}
