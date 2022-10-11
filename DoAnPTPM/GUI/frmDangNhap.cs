﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL_DAL;
namespace GUI
{
    public partial class frmDangNhap : Form
    {
       
        public frmDangNhap()
        {
            InitializeComponent();
            txtPass.UseSystemPasswordChar = true;
            Load();
        }
        XuLy.LoginResult lg = new XuLy.LoginResult();
        XuLy CauHinh = new XuLy();


        private void btn_DNhap_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUser.Text.Trim()))
            {
                MessageBox.Show("Không được bỏ trống" + label1.Text.ToLower());
                this.txtUser.Focus();
                return;
            }
            if (string.IsNullOrEmpty(txtPass.Text.Trim()))
            {
                MessageBox.Show("Không được bỏ trống" + label2.Text.ToLower());
                this.txtUser.Focus();
                return;
            }

            int kq = CauHinh.Check_config();
            if (kq == 0)
            {
                ProcessLogin();
            }
            if (kq == 1)
            {
                MessageBox.Show("Chuỗi cấu hình không tồn tại!!");
                ProcessConfig();
            }
            if (kq == 2)
            {
                MessageBox.Show("Chuỗi cấu hình không phù hợp!!");
                ProcessConfig();
            }
        }

        public void ProcessConfig()
        {
            Program.errorserver = new frmErrorSever();
            Program.errorserver.Show();
        }

        public void ProcessLogin()
        {
            lg = CauHinh.Check_User(txtUser.Text, txtPass.Text);
            if (lg == XuLy.LoginResult.Invalid)
            {

                MessageBox.Show("Sai " + label2.Text + " Hoặc " + label3.Text);
                return;
            }
            else if (lg == XuLy.LoginResult.Disabled)
            {
                MessageBox.Show("Tài khoản bị Khóa");
                return;
            }
            if (Program.frmHomePage == null || Program.frmHomePage.IsDisposed)
            {
                Program.frmHomePage = new Form1();

            }
            this.Visible = false;
            Program.frmHomePage.Show();
        }

        private void frmDangNhap_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("bạn có chắc muốn thoát không ?", "Thông báo?", MessageBoxButtons.YesNo, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1) == DialogResult.No)
            {
                e.Cancel = true;
            }
            
        }

        private void frmDangNhap_Load(object sender, EventArgs e)
        {

            
        }
        public void Load()
        {
            

            elipseControl1.CornerRadius = 60;
            elipseControl1.TargetControl = panel1;
            elipseControl2.CornerRadius = 90;
            elipseControl2.TargetControl = btn_DNhap;
            elipseControl3.CornerRadius = 90;
            elipseControl3.TargetControl = label1;
            elipseControl4.CornerRadius = 30;
            elipseControl4.TargetControl = txtUser;
            elipseControl5.CornerRadius = 30;
            elipseControl5.TargetControl = txtPass;
        }
    }
}
