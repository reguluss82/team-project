package com.oracle.choongangGroup.taewoo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.oracle.choongangGroup.changhun.JPA.Member;
import com.oracle.choongangGroup.taewoo.domain.Message;

public interface MessageRepository extends JpaRepository<Message, Long> {
	List<Message>		findAllByReceiver(Member member);
	List<Message>		findAllBySender(Member member);

}