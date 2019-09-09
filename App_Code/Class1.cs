using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace nsskills
{
    #region interfaces
    public interface inttec
    {
        Int32 teccod
        {
            get;
            set;
        }
        string tecnam
        {
            get;
            set;
        }
    }
    public interface intqst
    {
        Int32 qstcod
        {
            get;
            set;
        }
        Int32 qstteccod
        {
            get;
            set;
        }
        string qstdsc
        {
            get;
            set;
        }
        char qstlvl
        {
            get;
            set;
        }
        DateTime qstdat
        {
            get;
            set;
        }
    }
    public interface intans
    {
        Int32 anscod
        {
            get;
            set;
        }
        Int32 ansqstcod
        {
            get;
            set;
        }
        string ansdsc
        {
            get;
            set;
        }
        char anssts
        {
            get;
            set;
        }
    }
    public interface intreg
    {
        Int32 regcod
        {
            get;
            set;
        }
        string regeml
        {
            get;
            set;
        }
        string regpwd
        {
            get;
            set;
        }
        DateTime regdat
        {
            get;
            set;
        }
        char regsts
        {
            get;
            set;
        }
    }
    #endregion

    #region property class
    public class clstecprp : inttec
    {
        private Int32 pteccod;
        private string ptecnam;
        public int teccod
        {
            get
            {
                return pteccod;
            }

            set
            {
                pteccod = value;
            }
        }

        public string tecnam
        {
            get
            {
                return ptecnam;
            }

            set
            {
                ptecnam = value;
            }
        }
    }
    public class clsqstprp : intqst
    {
        private Int32 pqstcod, pqstteccod;
        private string pqstdsc;
        private char pqstlvl;
        private DateTime pqstdat;
        public int qstcod
        {
            get
            {
                return pqstcod;
            }

            set
            {
                pqstcod = value;
            }
        }

        public DateTime qstdat
        {
            get
            {
                return pqstdat;
            }

            set
            {
                pqstdat = value;
            }
        }

        public string qstdsc
        {
            get
            {
                return pqstdsc;
            }

            set
            {
                pqstdsc = value;
            }
        }

        public char qstlvl
        {
            get
            {
                return pqstlvl;
            }

            set
            {
                pqstlvl = value;
            }
        }

        public int qstteccod
        {
            get
            {
                return pqstteccod;
            }

            set
            {
                pqstteccod = value;
            }
        }
    }
    public class clsansprp : intans
    {
        private Int32 panscod, pansqstcod;
        private string pansdsc;
        private char panssts;

        public int anscod
        {
            get
            {
                return panscod;
            }

            set
            {
                panscod = value;
            }
        }

        public string ansdsc
        {
            get
            {
                return pansdsc;
            }

            set
            {
                pansdsc = value;
            }
        }

        public int ansqstcod
        {
            get
            {
                return pansqstcod;
            }

            set
            {
                pansqstcod = value;
            }
        }

        public char anssts
        {
            get
            {
                return panssts;
            }

            set
            {
                panssts = value;
            }
        }
    }
    public class clsregprp : intreg
    {
        private Int32 pregcod;
        private string pregeml, pregpwd;
        private DateTime pregdat;
        private char pregsts;
        public int regcod
        {
            get
            {
                return pregcod;
            }

            set
            {
                pregcod = value;
            }
        }

        public DateTime regdat
        {
            get
            {
                return pregdat;
            }

            set
            {
                pregdat = value;
            }
        }

        public string regeml
        {
            get
            {
                return pregeml;
            }

            set
            {
                pregeml = value;
            }
        }

        public string regpwd
        {
            get
            {
                return pregpwd;
            }

            set
            {
                pregpwd = value;
            }
        }

        public char regsts
        {
            get
            {
                return pregsts;
            }

            set
            {
                pregsts = value;
            }
        }
    }
    #endregion

    #region connection class
    public abstract class clscon
    {
        protected SqlConnection con = new SqlConnection();
        public clscon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }
    #endregion

    #region MainClass
    public class clstec : clscon
    {
        public void save_rec(clstecprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("instec", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@tecnam", SqlDbType.VarChar, 100).Value = p.tecnam;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public void upd_rec(clstecprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updtec", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@teccod", SqlDbType.Int).Value = p.teccod;
            cmd.Parameters.Add("@tecnam", SqlDbType.VarChar, 100).Value = p.tecnam;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public void del_rec(clstecprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("deltec", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@teccod", SqlDbType.Int).Value = p.teccod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public List<clstecprp> dsp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dsptec", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clstecprp> obj = new List<clstecprp>();
            while (dr.Read())
            {
                clstecprp x = new clstecprp();
                x.teccod = Convert.ToInt32(dr[0]);
                x.tecnam = dr[1].ToString();
                obj.Add(x);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clstecprp> fnd_rec(Int32 teccod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndtec", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@teccod", SqlDbType.Int).Value = teccod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clstecprp> obj = new List<clstecprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clstecprp x = new clstecprp();
                x.teccod = Convert.ToInt32(dr[0]);
                x.tecnam = dr[1].ToString();
                obj.Add(x);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }


    }
    public class clsqst : clscon
    {
        public void save_rec(clsqstprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insqst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@qstteccod", SqlDbType.Int).Value = p.qstteccod;
            cmd.Parameters.Add("@qstdsc", SqlDbType.NVarChar, 2000).Value = p.qstdsc;
            cmd.Parameters.Add("@qstlvl", SqlDbType.Char, 1).Value = p.qstlvl;
            cmd.Parameters.Add("@qstdat", SqlDbType.DateTime).Value = p.qstdat;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public void upd_rec(clsqstprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updqst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@qstcod", SqlDbType.Int).Value = p.qstcod;
            cmd.Parameters.Add("@qstteccod", SqlDbType.Int).Value = p.qstteccod;
            cmd.Parameters.Add("@qstdsc", SqlDbType.NVarChar, 2000).Value = p.qstdsc;
            cmd.Parameters.Add("@qstlvl", SqlDbType.Char, 1).Value = p.qstlvl;
            cmd.Parameters.Add("@qstdat", SqlDbType.DateTime).Value = p.qstdat;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public void del_rec(clsqstprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delqst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@qstcod", SqlDbType.Int).Value = p.qstcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsqstprp> dsp_rec(Int32 teccod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dspqst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@teccod", SqlDbType.Int).Value = teccod;

            SqlDataReader dr = cmd.ExecuteReader();
            List<clsqstprp> obj = new List<clsqstprp>();
            while (dr.Read())
            {
                clsqstprp x = new clsqstprp();
                x.qstcod = Convert.ToInt32(dr[0]);
                x.qstteccod = Convert.ToInt32(dr[1]);
                x.qstdsc = dr[2].ToString();
                x.qstlvl = Convert.ToChar(dr[3]);
                x.qstdat = Convert.ToDateTime(dr[4]);
                obj.Add(x);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }

        public List<clsqstprp> dspqstbyteclvl(Int32 teccod,char lvl)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dspqstbyteclvl", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@teccod", SqlDbType.Int).Value = teccod;
            cmd.Parameters.Add("@lvl", SqlDbType.Char, 1).Value = lvl;

            SqlDataReader dr = cmd.ExecuteReader();
            List<clsqstprp> obj = new List<clsqstprp>();
            while (dr.Read())
            {
                clsqstprp x = new clsqstprp();
                x.qstcod = Convert.ToInt32(dr[0]);
                x.qstteccod = Convert.ToInt32(dr[1]);
                x.qstdsc = dr[2].ToString();
                x.qstlvl = Convert.ToChar(dr[3]);
                x.qstdat = Convert.ToDateTime(dr[4]);
                obj.Add(x);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsqstprp> fnd_rec(Int32 qstcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndqst", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@qstcod", SqlDbType.Int).Value = qstcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsqstprp> obj = new List<clsqstprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsqstprp x = new clsqstprp();
                x.qstcod = Convert.ToInt32(dr[0]);
                x.qstteccod = Convert.ToInt32(dr[1]);
                x.qstdsc = dr[2].ToString();
                x.qstlvl = Convert.ToChar(dr[3]);
                x.qstdat = Convert.ToDateTime(dr[4]);
                obj.Add(x);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsans : clscon
    {
        public void save_rec(clsansprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insans", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ansqstcod", SqlDbType.Int).Value = p.ansqstcod;
            cmd.Parameters.Add("@ansdsc", SqlDbType.NVarChar, 2000).Value = p.ansdsc;
            cmd.Parameters.Add("@anssts", SqlDbType.Char, 1).Value = p.anssts;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public void upd_rec(clsansprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updans", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@anscod", SqlDbType.Int).Value = p.anscod;
            cmd.Parameters.Add("@ansqstcod", SqlDbType.Int).Value = p.ansqstcod;
            cmd.Parameters.Add("@ansdsc", SqlDbType.NVarChar, 2000).Value = p.ansdsc;
            cmd.Parameters.Add("@anssts", SqlDbType.Char, 1).Value = p.anssts;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public void del_rec(clsansprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delans", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@anscod", SqlDbType.Int).Value = p.anscod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsansprp> dsp_rec(Int32 qstcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dspans", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@qstcod", SqlDbType.Int).Value = qstcod;

            SqlDataReader dr = cmd.ExecuteReader();
            List<clsansprp> obj = new List<clsansprp>();
            while (dr.Read())
            {
                clsansprp x = new clsansprp();
                x.anscod = Convert.ToInt32(dr[0]);
                x.ansqstcod = Convert.ToInt32(dr[1]);
                x.ansdsc = dr[2].ToString();
                x.anssts = Convert.ToChar(dr[3]);
                obj.Add(x);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsansprp> fnd_rec(Int32 anscod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndans", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@anscod", SqlDbType.Int).Value = anscod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsansprp> obj = new List<clsansprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsansprp x = new clsansprp();
                x.anscod = Convert.ToInt32(dr[0]);
                x.ansqstcod = Convert.ToInt32(dr[1]);
                x.ansdsc = dr[2].ToString();
                x.anssts = Convert.ToChar(dr[3]);
                obj.Add(x);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsreg : clscon
    {

        public Int32 logincheck(String eml,String pwd,out char rol)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("logincheck", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@eml", SqlDbType.VarChar, 50).Value = eml;
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = pwd;
cmd.Parameters.Add("@cod", SqlDbType.Int).Direction = ParameterDirection.Output;
cmd.Parameters.Add("@rol", SqlDbType.Char, 1).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            Int32 a = Convert.ToInt32(cmd.Parameters["@cod"].Value);
            rol = Convert.ToChar(cmd.Parameters["@rol"].Value);
            cmd.Dispose();
            con.Close();
            return a;
        }



        public void save_rec(clsregprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insreg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@regeml", SqlDbType.VarChar, 50).Value = p.regeml;
            cmd.Parameters.Add("@regpwd", SqlDbType.VarChar, 50).Value = p.regpwd;
            cmd.Parameters.Add("@regdat", SqlDbType.DateTime).Value = p.regdat;
            cmd.Parameters.Add("@regsts", SqlDbType.Char, 1).Value = p.regsts;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public void upd_rec(clsregprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updreg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@regcod", SqlDbType.Int).Value = p.regcod;
            cmd.Parameters.Add("@regeml", SqlDbType.VarChar, 50).Value = p.regeml;
            cmd.Parameters.Add("@regpwd", SqlDbType.VarChar, 50).Value = p.regpwd;
            cmd.Parameters.Add("@regdat", SqlDbType.DateTime).Value = p.regdat;
            cmd.Parameters.Add("@regsts", SqlDbType.Char, 1).Value = p.regsts;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public void del_rec(clsregprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delreg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@regcod", SqlDbType.Int).Value = p.regcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsregprp> dsp_rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dspreg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsregprp> obj = new List<clsregprp>();
            while (dr.Read())
            {
                clsregprp x = new clsregprp();
                x.regcod = Convert.ToInt32(dr[0]);
                x.regeml = dr[1].ToString();
                x.regpwd = dr[2].ToString();
                x.regdat = Convert.ToDateTime(dr[3]);
                x.regsts = Convert.ToChar(dr[4]);
                obj.Add(x);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
        public List<clsregprp> fnd_rec(Int32 regcod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("fndreg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@regcod", SqlDbType.Int).Value = regcod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsregprp> obj = new List<clsregprp>();
            if (dr.HasRows)
            {
                dr.Read();
                clsregprp x = new clsregprp();
                x.regcod = Convert.ToInt32(dr[0]);
                x.regeml = dr[1].ToString();
                x.regpwd = dr[2].ToString();
                x.regdat = Convert.ToDateTime(dr[3]);
                x.regsts = Convert.ToChar(dr[4]);
                obj.Add(x);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    #endregion
}
