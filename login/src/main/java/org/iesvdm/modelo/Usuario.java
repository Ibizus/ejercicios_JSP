package org.iesvdm.modelo;

import java.util.Objects;

public class Usuario {
	
	private String user;
	private String password;
	
	
	public Usuario(String user, String password) {
		super();
		this.user = user;
		this.password = password;
	}


	public String getUser() {
		return user;
	}


	public void setUser(String user) {
		this.user = user;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public int hashCode() {
		return Objects.hash(password, user);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		return Objects.equals(password, other.password) && Objects.equals(user, other.user);
	}


	@Override
	public String toString() {
		return "Usuario [user=" + user + ", password=" + password + "]";
	}
	
	
}
