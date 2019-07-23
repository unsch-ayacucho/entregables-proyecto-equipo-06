package pe.edu.unsch.entities;
// Generated 23/07/2019 03:04:57 AM by Hibernate Tools 5.1.7.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Orders generated by hbm2java
 */
@Entity
@Table(name = "orders", catalog = "bigdb")
public class Orders implements java.io.Serializable {

	private Integer idorders;
	private Account account;
	private String name;
	private Date datecreation;
	private byte status;
	private Set<Ordersdetail> ordersdetails = new HashSet<Ordersdetail>(0);

	public Orders() {
	}

	public Orders(Account account, String name, Date datecreation, byte status) {
		this.account = account;
		this.name = name;
		this.datecreation = datecreation;
		this.status = status;
	}

	public Orders(Account account, String name, Date datecreation, byte status, Set<Ordersdetail> ordersdetails) {
		this.account = account;
		this.name = name;
		this.datecreation = datecreation;
		this.status = status;
		this.ordersdetails = ordersdetails;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idorders", unique = true, nullable = false)
	public Integer getIdorders() {
		return this.idorders;
	}

	public void setIdorders(Integer idorders) {
		this.idorders = idorders;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idaccount", nullable = false)
	public Account getAccount() {
		return this.account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@Column(name = "name", nullable = false, length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "datecreation", nullable = false, length = 10)
	public Date getDatecreation() {
		return this.datecreation;
	}

	public void setDatecreation(Date datecreation) {
		this.datecreation = datecreation;
	}

	@Column(name = "status", nullable = false)
	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "orders")
	public Set<Ordersdetail> getOrdersdetails() {
		return this.ordersdetails;
	}

	public void setOrdersdetails(Set<Ordersdetail> ordersdetails) {
		this.ordersdetails = ordersdetails;
	}

}