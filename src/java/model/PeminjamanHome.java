/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author asus
 */
public class PeminjamanHome {
    public ViewPeminjamanRuang[] getDaftarPeminjaman(){
        ViewPeminjamanRuang[] daftarPeminjaman = null;
        ViewPeminjamanRuang tempPeminjaman = null;
        ArrayList listPeminjaman = new ArrayList();
        String pwd = "";
        String login = "root";
        java.sql.Connection con = null;
        ResultSet rs = null;
        Connection db = new Connection("lab_db", login, pwd);
        String sql = "Select * from history_peminjaman_ruangan";
        try{
            con = db.connect();
            String id_peminjaman_b = null;
            rs = db.executeQuery(sql);
            while (rs.next()){
                tempPeminjaman = new ViewPeminjamanRuang();
                tempPeminjaman.setId_peminjaman(rs.getString("id_peminjaman"));
                tempPeminjaman.setNama_peminjam(rs.getString("nama_peminjam"));
                tempPeminjaman.setNomor_ruangan(rs.getString("nomor_ruangan"));
                tempPeminjaman.setNama_ruangan(rs.getString("nama_ruangan"));
                tempPeminjaman.setWaktu_dipinjam(rs.getString("waktu_dipinjam"));
                tempPeminjaman.setWaktu_dikembalikan(rs.getString("waktu_dikembalikan"));
                tempPeminjaman.setAlasan_peminjaman(rs.getString("alasan_peminjaman"));
                listPeminjaman.add(tempPeminjaman);
            }
            daftarPeminjaman = new ViewPeminjamanRuang[listPeminjaman.size()];
            listPeminjaman.toArray(daftarPeminjaman);
        } catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        } finally {
            try {
                db.disconnect();
                return daftarPeminjaman;
            } catch (SQLException e){
                e.printStackTrace();
                return null;
            }
        }
    }
    public static int save(Peminjaman p) {
        int status = 0;
        try {
            String pwd = "";
            String login = "root";
            java.sql.Connection conn = null;
            ResultSet rs = null;
            Connection db = new Connection("lab_db", login, pwd);
            PreparedStatement ps = db.connect().prepareStatement("insert into peminjaman_r values (?,?,?,?,?,?)");
            ps.setString(1, p.getId_peminjaman_r());
            ps.setString(2, p.getId_user());
            ps.setString(3, p.getId_ruangan());
            ps.setString(4, p.getCek_in());
            ps.setString(5, p.getCek_out());
            ps.setString(6, p.getKeperluan());

            status = ps.executeUpdate();

            db.disconnect();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }
}
