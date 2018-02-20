<?php

/* occasies.twig */
class __TwigTemplate_5cf8f94c15d7efe82024c53a1b29b325539df5d1bbb70df5d49d5ad7cd15036b extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"nl\">
   <head>
      <title>Occasies &amp; Vintage | Blazers &amp; Blazers</title>
      <meta charset=\"UTF-8\">
      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>
      <link href='https://fonts.googleapis.com/css?family=Tinos:400,700italic,700,400italic' rel='stylesheet' type='text/css'>
      <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,300italic,600italic,700,700italic' rel='stylesheet'>
      <link rel=\"stylesheet\" href=\"../css/generic.css\" />
      <link rel=\"stylesheet\" href=\"../css/screen.css\" />
\t\t<link rel=\"stylesheet\" href=\"../css/fonts.css\" />
      <link rel=\"stylesheet\" href=\"../css/occasies.css\" />
      <style type=\"text/css\">
         #banner_container img {
\t         max-width: 100%;
         }
      </style>
   </head>
   <body>
      <div id=\"wrapper\">
         <header>
            <div class=\"col clearfix\">
               <div id=\"langmenu_wrapper\">
                  <ul id=\"langmenu\" class=\"horizontal-menu\">
                     <li id=\"fb\"><a href=\"#\"><img src=\"../images/fb50.png\" alt=\"fb logo\"></a></li>
                     <li id=\"lnkNieuwsbrief\"><a href=\"#\">nieuwsbrief</a></li>
                     <li class=\"selected\"><a href=\"#\">NL</a></li>
                     <li><a href=\"#\">EN</a></li>
                  </ul>
               </div>
               <h1 id=\"logo\"><a href=\"/\">Blazers &amp; Blazers</a></h1>
               <a id=\"hamburger\" href=\"#\" title=\"open menu\">
\t               <span class=\"line1\"></span>
\t               <span class=\"line2\"></span>
\t               <span class=\"line3\"></span>
               </a>
               <nav>
                  <h2 class=\"structural\">main navigation</h2>
                  <ul id=\"mainmenu\">
                     <li>
                        <a href=\"/nl/\" title=\"Home\">Home</a>
                     </li>
                     <li>
                        <a href=\"/nl/eigen-atelier\" title=\"Herstellingen\">Herstellingen</a>
                     </li>
                     <li>
                        <a href=\"/nl/onze-winkel\" title=\"Winkel\">Winkel</a>
                     </li>
                     <li class=\"selected\">
                        <a href=\"/nl/occasies-vintage\" title=\"Occasies\">Occasies</a>
                     </li>
                     <li>
                        <a href=\"/nl/studio-bricks\" title=\"Studio Bricks\">Studio Bricks</a>
                     </li>
                     <li>
                        <a href=\"/nl/contact\" title=\"Contact\">Contact</a>
                     </li>
                  </ul>
               </nav>
            </div>
         </header>
         <section id=\"banner_container\">
            <div class=\"col\">
               <img src=\"../uploads/bannerfotos/DSC_0049.jpg\" alt=\"\" />
            </div>
         </section>
         <section id=\"content\" class=\"clearfix\">
            <div class=\"col\">
               <div>
                  <div class=\"filters clearfix\" id=\"filters\">
                     <label id=\"lblSearch\">zoek op instrument:</label>
                     <select id=\"ddlHout\">
                        <option value=\"-1\">HOUTBLAZERS</option>
                        <option value=\"all\">ALLE</option>
                        <option value=\"Altklarinet\">Altklarinet</option>
                        <option value=\"Altsax\">Altsax</option>
                        <option value=\"Basklarinet\">Basklarinet</option>
                        <option value=\"Dwarsfluit\">Dwarsfluit</option>
                        <option value=\"Fagot\">Fagot</option>
                        <option value=\"Hobo\">Hobo</option>
                        <option value=\"Klarinet\">Klarinet</option>
                        <option value=\"Sopraansax\">Sopraansax</option>
                        <option value=\"Tenorsax\">Tenorsax</option>
                     </select>
                     <select id=\"ddlKoper\">
                        <option value=\"-1\">KOPERBLAZERS</option>
                        <option value=\"all\">ALLE</option>
                        <option value=\"Alto\">Alto</option>
                        <option value=\"Bastuba\">Bastuba</option>
                        <option value=\"Bugel\">Bugel</option>
                        <option value=\"Cornet\">Cornet</option>
                        <option value=\"Euphonium\">Euphonium</option>
                        <option value=\"Trombone\">Trombone</option>
                        <option value=\"Trompet\">Trompet</option>
                     </select>
                     <a href=\"#\" id=\"lnkAll\">bekijk alle occasies</a>
                  </div>
                  <h3 class=\"separator\">occasies</h3>
                  <hr>
                  <div id=\"houtblazers\" class=\"occasies\">
\t\t\t\t\t\t\t";
        // line 101
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["instruments"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["instrument"]) {
            // line 102
            echo "                     <div class=\"item clearfix\" data-subtype=\"Altklarinet\">
                        <div class=\"clearfix\">
                           <div class=\"title\">
                              <p>";
            // line 105
            echo twig_escape_filter($this->env, $this->getAttribute($context["instrument"], "title", array()), "html", null, true);
            echo "</p>
                           </div>
                           <div class=\"left\">
                              <div class=\"images thumbs\">
\t                            \t<a href=\"uploads/occasies/photos/Altklarinet_Selmer_7.JPG\" class=\"photo\"><img src=\"../uploads/occasies/thumbs/";
            // line 109
            echo twig_escape_filter($this->env, $this->getAttribute($context["instrument"], "picture", array()), "html", null, true);
            echo "\" alt=\"\" /></a>

\t\t\t\t\t\t\t\t\t\t</div>
                           </div>
                           <div class=\"right\">
                              <p>
                                 ";
            // line 115
            echo twig_escape_filter($this->env, strip_tags($this->getAttribute($context["instrument"], "description", array())), "html", null, true);
            echo "
                              </p>
                              <p><a href=\"#\" class=\"contact_us\">&gt; contacteer ons voor meer info</a></p>
                           </div>
                        </div>
                     </div>
\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['instrument'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 122
        echo "                  </div>
               </div>
            </div>
         </section>
         <footer>
            <div class=\"col\">
               <div class=\"logo\"><a href=\"/\"><img src=\"../images/logo.png\" alt=\"logo\" /></a></div>
               <p class=\"address\"><span class=\"line\">Einde Were 62 • 9000 Gent</span> <span class=\"dot\">•</span><span class=\"line\"> t +32 (0)9 223 14 28</span> <span class=\"dot\">•</span> <span class=\"line\"><a href=\"info@blazersenblazers.be\">info@blazersenblazers.be</a></span></p>
               <p class=\"lbl_openinghours\">openingsuren</p>
               <p class=\"msg_openinghours\"><span class=\"line\">dinsdag t.e.m. vrijdag: 13u – 17u30</span> <span class=\"dot\">•</span> <span class=\"line\">zaterdag: 13u – 16u30</span> <span class=\"dot\">•</span> <span class=\"line\">of op afspraak</span></p>
               <p class=\"designed_by\">DESIGNED BY <a href=\"missmoss.be\" title=\"Miss Moss\"><img src=../s\"images/logo_mismoss.png\"></a></p>
            </div>
         </footer>
      </div>
      <script src=\"../js/jquery.min.js\"></script>
      <script src=\"../js/scripts.js\"></script>
      </div>
   </body>
</html>
";
    }

    public function getTemplateName()
    {
        return "occasies.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  159 => 122,  146 => 115,  137 => 109,  130 => 105,  125 => 102,  121 => 101,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "occasies.twig", "C:\\xampp\\htdocs\\www\\cws2_labo_01_vleminckx_cedric\\src\\views\\occasies.twig");
    }
}
