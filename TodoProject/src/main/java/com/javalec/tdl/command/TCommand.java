package com.javalec.tdl.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface TCommand {

	public void excute(HttpServletRequest request, HttpServletResponse response);

}
