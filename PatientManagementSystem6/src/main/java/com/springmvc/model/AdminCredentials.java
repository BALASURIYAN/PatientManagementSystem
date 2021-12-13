package com.springmvc.model;

import org.springframework.stereotype.Component;

@Component
	public class AdminCredentials 
	{
		
		private String username;
		private String password;
		
		public AdminCredentials(String username, String password) {
			super();
			this.username = username;
			this.password = password;
		}

		public AdminCredentials() {
			super();
			// TODO Auto-generated constructor stub
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
		
}
