using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;

using System.Text.RegularExpressions;
using System.Drawing;

namespace HangmanHW2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string word;
        string hint;
        string maskedWord;
        int attemptCount = 5;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                game();
            }
            else
            {
                word = (string)ViewState["word"];
                hint = (string)ViewState["hint"];
                maskedWord = (string)ViewState["maskedWord"];
                attemptCount = (int)ViewState["attemptCount"];
            }
        }

        protected void Page_PreRender(Object sender, EventArgs e)
        {
            ViewState["word"] = word;
            ViewState["maskedWord"] = maskedWord;
            ViewState["attemptCount"] = attemptCount;
        }

        protected void game()
        {
            Image1.ImageUrl = "~/Asset/hangman01.png";
            A.Enabled = true; B.Enabled = true; C.Enabled = true; Ç.Enabled = true;
            D.Enabled = true; E.Enabled = true; F.Enabled = true; G.Enabled = true; 
            Ğ.Enabled = true; H.Enabled = true; I.Enabled = true; İ.Enabled = true; 
            J.Enabled = true; K.Enabled = true; L.Enabled = true; M.Enabled = true; 
            N.Enabled = true; O.Enabled = true; Ö.Enabled = true; P.Enabled = true; 
            R.Enabled = true; S.Enabled = true; T.Enabled = true; U.Enabled = true; 
            Ü.Enabled = true; V.Enabled = true; Y.Enabled = true; Z.Enabled = true;
            Q.Enabled = true; W.Enabled = true; X.Enabled = true; Button1.Enabled = false;
            attemptCount = 5;
            Label2.Text = "Number Of attempts Left: ";
            ArrayList words = new ArrayList();
            ArrayList hints = new ArrayList();
            Random random = new Random();
            try
            {
                Array userData = File.ReadAllLines(Server.MapPath("Words.txt"));
                Array hintData = File.ReadAllLines(Server.MapPath("Hints.txt"));
                foreach (string dataLine in userData)
                {
                    dataLine.ToString();
                    words.Add(dataLine);
                }
                foreach (string dataLine in hintData)
                {
                    dataLine.ToString();
                    hints.Add(dataLine);
                }                
                string[] wordss = words.ToArray(typeof(string)) as string[];
                int rng = random.Next(wordss.Length);
                word = wordss[rng];
                string[] hintss = hints.ToArray(typeof(string)) as string[];
                hint = hintss[rng];
                maskedWord = word;
                maskedWord = Regex.Replace(word, "[a,b,c,ç,d,e,f,g,ğ,h,ı,i,j,k,l,m,n,o,ö,p,r,s,ş,t,u,ü,v,y,z,x,q,w]", "-");
                Label1.Text = maskedWord;
                Label3.Text = attemptCount.ToString();
                Hint1.Text = "Hint : " + hint;
                Label4.Text = "";

            }
            catch (Exception ex)
            {
                Label1.Text = "Cannot read the file " + ex;
            }

        }

        protected void LetterGuessed(object sender, EventArgs e)
        {

            if (attemptCount != 0 && (Label4.Text.Equals("")))
            {
                string letter = ((Control)sender).ID.ToString().ToLower();
                Button b1 = (Button)sender;
                b1.Enabled = false;
                int startPosition = word.IndexOf(letter);
                if (!(startPosition == -1))
                {
                    do
                    {
                        maskedWord = maskedWord.Remove(startPosition, 1).Insert(startPosition, letter);
                        Label1.Text = maskedWord;
                        startPosition = word.IndexOf(letter, startPosition + 1);
                    }
                    while (startPosition != -1);
                }
                else
                {
                    attemptCount--;
                    Label3.Text = attemptCount.ToString();
                }
                if (maskedWord.Equals(word))
                {
                    Label1.Text = word;
                    Label4.Text = "You Win";
                    Button1.Enabled = true;
                    Label2.Text = "You won the game with " + (attemptCount).ToString() + " attempts left";
                    Label3.Text = "";
                }

                if (attemptCount == 4 && !(maskedWord.Equals(word)))
                {
                    Image1.ImageUrl = "~/Asset/hangman02.png";
                }

                if (attemptCount == 3 && !(maskedWord.Equals(word)))
                {
                    Image1.ImageUrl = "~/Asset/hangman03.png";
                }

                if (attemptCount == 2 && !(maskedWord.Equals(word)))
                {
                    Image1.ImageUrl = "~/Asset/hangman04.png";
                }

                if (attemptCount == 1 && !(maskedWord.Equals(word)))
                {
                    Image1.ImageUrl = "~/Asset/hangman05.png";
                }

                if (attemptCount == 0 && !(maskedWord.Equals(word)))
                {
                    Label4.Text = "You Lost";
                    Label1.Text = word;
                    Button1.Enabled = true;
                    Label2.Text = "No more attempts left";
                    Label3.Text = "";
                    Image1.ImageUrl = "~/Asset/hangman.jpg";
                }

            }
            else
            {
                //Do nothing on letter button click
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            game();
        }
    }
}