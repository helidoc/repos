using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Printing;

namespace WebApplication2
{
    public partial class About : Page
    {


        protected void CallPrint()
        {
            // Create a PrintDocument object
            PrintDocument printDocument = new PrintDocument();

            // Set the PrintPage event handler
            printDocument.PrintPage += new PrintPageEventHandler(PrintPage);

            // Specify the printer name (optional, defaults to default printer)
            //            printDocument.PrinterSettings.PrinterName = "HP17D9C3 (HP Officejet Pro 8600)";
            printDocument.PrinterSettings.PrinterName = "ZDesigner GX420t";
            //printDocument.PrinterSettings.PrinterName = "Microsoft Print to PDF";



            // Start the printing process
            try
            {
                printDocument.Print();
                lblPrintStatus.Text = "Printing completed!";
            }
            catch (Exception ex)
            {
                lblPrintStatus.Text = "An error occurred: " + ex.Message;
            }
        }

        private /*static*/ void PrintPage(object sender, PrintPageEventArgs e)
        {
            // Define what to print
            string textToPrint = "Hello, this is a test print!  Spanish: á, ñ, ¿";
            Font font = new Font("Arial", 12);
            PointF point = new PointF(10, 200);

            // Draw the text on the page
            e.Graphics.DrawString(textToPrint, font, Brushes.Black, point);
            // Path to the JPG image file
            string imagePath = Server.MapPath("Images/HOPE_LOGO_BLACK_2.png");

            // Load the image
            System.Drawing.Image image = System.Drawing.Image.FromFile(imagePath);

            //Put it on page
            e.Graphics.DrawImage(image, new Rectangle(0, 0, image.Width, image.Height));
            image.Dispose();


        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DoPrint(object sender, EventArgs e)
        {
            CallPrint();
        }
    }
}