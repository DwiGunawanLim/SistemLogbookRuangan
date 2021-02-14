/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ucul
 */
public class ViewPeminjamanRuang {
    private String id_peminjaman;
    private String nama_peminjam;
    private String nomor_ruangan;
    private String nama_ruangan;
    private String waktu_dipinjam;
    private String waktu_dikembalikan;
    private String alasan_peminjaman;

    public String getId_peminjaman() {
        return id_peminjaman;
    }

    public void setId_peminjaman(String id_peminjaman) {
        this.id_peminjaman = id_peminjaman;
    }

    public String getNama_peminjam() {
        return nama_peminjam;
    }

    public void setNama_peminjam(String nama_peminjam) {
        this.nama_peminjam = nama_peminjam;
    }

    public String getNomor_ruangan() {
        return nomor_ruangan;
    }

    public void setNomor_ruangan(String nomor_ruangan) {
        this.nomor_ruangan = nomor_ruangan;
    }

    public String getNama_ruangan() {
        return nama_ruangan;
    }

    public void setNama_ruangan(String nama_ruangan) {
        this.nama_ruangan = nama_ruangan;
    }

    public String getWaktu_dipinjam() {
        return waktu_dipinjam;
    }

    public void setWaktu_dipinjam(String waktu_dipinjam) {
        this.waktu_dipinjam = waktu_dipinjam;
    }

    public String getWaktu_dikembalikan() {
        return waktu_dikembalikan;
    }

    public void setWaktu_dikembalikan(String waktu_dikembalikan) {
        this.waktu_dikembalikan = waktu_dikembalikan;
    }

    public String getAlasan_peminjaman() {
        return alasan_peminjaman;
    }

    public void setAlasan_peminjaman(String alasan_peminjaman) {
        this.alasan_peminjaman = alasan_peminjaman;
    }
    
}
