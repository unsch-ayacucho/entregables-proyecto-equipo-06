package pe.edu.unsch.entities;
// Generated 23/07/2019 03:04:57 AM by Hibernate Tools 5.1.7.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * ProfileOption generated by hbm2java
 */
@Entity
@Table(name = "profile_option", catalog = "bigdb")
public class ProfileOption implements java.io.Serializable {

	private int idprofileoption;
	private Options options;
	private Profile profile;
	private Byte status;

	public ProfileOption() {
	}

	public ProfileOption(int idprofileoption, Options options, Profile profile) {
		this.idprofileoption = idprofileoption;
		this.options = options;
		this.profile = profile;
	}

	public ProfileOption(int idprofileoption, Options options, Profile profile, Byte status) {
		this.idprofileoption = idprofileoption;
		this.options = options;
		this.profile = profile;
		this.status = status;
	}

	@Id

	@Column(name = "idprofileoption", unique = true, nullable = false)
	public int getIdprofileoption() {
		return this.idprofileoption;
	}

	public void setIdprofileoption(int idprofileoption) {
		this.idprofileoption = idprofileoption;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idoptions", nullable = false)
	public Options getOptions() {
		return this.options;
	}

	public void setOptions(Options options) {
		this.options = options;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idprofile", nullable = false)
	public Profile getProfile() {
		return this.profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

	@Column(name = "status")
	public Byte getStatus() {
		return this.status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

}