using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace ado_tasks
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           




        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {

            string folderPath = Server.MapPath("~/Images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            SqlConnection con = new SqlConnection(" data source= DESKTOP-SAVUMCP\\SQLEXPRESS; database=14/12/2022; integrated security=SSPI");
            SqlCommand comannd = new SqlCommand($"insert into cus values ('{TextBox1.Text}',{TextBox2.Text},'{TextBox3.Text}',{TextBox4.Text} ,'{FileUpload1.FileName}') ", con);
            con.Open();
            comannd.ExecuteNonQuery();
            string table = "<table class='table table-striped'> <tr><th>name</th> <th>age</th> <th>contry</th> <th>number</th>  <th>Image</th> </tr>";
            SqlCommand comand = new SqlCommand("select * from cus", con);
            SqlDataReader sdr = comand.ExecuteReader();
            while (sdr.Read())
            {
                table += $"<tr><td>{sdr[0]}</td><td>{sdr[1]}</td><td>{sdr[2]}</td><td>{sdr[3]}</td><td><img width='200px' height='200px' src='Images/{sdr[4]}'/></td></tr>";
            }
            table += "</table>";
            Label label = new Label();
            label.Text = table;
            this.Controls.Add(label);
            con.Close();


        }
    }
}