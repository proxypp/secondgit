package co.micol.lost.laf.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LafVO {
	private int lnum;
	private String lmodel;
	private String lname;
	private String location;
	private String ltel;
	private Date ldate;
}
