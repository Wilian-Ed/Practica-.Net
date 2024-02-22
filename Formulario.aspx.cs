using System;
using System.Web.UI;

namespace PruebaPractricaDotNet
{
    public class Formulario : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Enviar(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Aquí se envia si la pagina esta validada 
            }
            else
            {
                // Aquí se muestra un mensaje de error ya que la pagina no esta validada
            }
        }
    }
}