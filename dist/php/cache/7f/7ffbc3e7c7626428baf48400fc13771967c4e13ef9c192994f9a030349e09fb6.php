<?php

/* occasies.twig */
class __TwigTemplate_5285fb82c66ac8dbe769656c9fac8af3a0390aa55de558c448113e359d7593bf extends Twig_Template
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
      <link rel=\"stylesheet\" href=\"../css/generic.min.css\" />
      <link rel=\"stylesheet\" href=\"../css/screen.min.css\" />
\t\t<link rel=\"stylesheet\" href=\"../css/fonts.min.css\" />
      <link rel=\"stylesheet\" href=\"../css/occasies.min.css\" />

\t\t<link rel=\"stylesheet\" href=\"../../node_modules/owl.carousel/dist/assets/owl.carousel.min.css\">
\t\t<link rel=\"stylesheet\" href=\"../../node_modules/owl.carousel/dist/assets/owl.theme.default.min.css\">
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
\t\t\t\t\t<div class=\"owl-carousel\">
\t\t\t\t\t\t";
        // line 68
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["bannerPhotos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["bannerPhoto"]) {
            // line 69
            echo "\t\t\t\t\t\t<img src=\"../uploads/bannerfotos/";
            echo twig_escape_filter($this->env, $this->getAttribute($context["bannerPhoto"], "filename", array()), "html", null, true);
            echo "\" alt=\"\">
\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['bannerPhoto'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 71
        echo "\t\t\t\t\t</div>
            </div>
         </section>
         <section id=\"content\" class=\"clearfix\">
            <div class=\"col\">
               <div>
                  <div class=\"filters clearfix\" id=\"filters\">
\t\t\t\t\t\t\t<!--TODO: dropdown filters-->
                     <label id=\"lblSearch\">zoek op instrument:</label>
\t\t\t\t\t\t\t<form action=\"occasies.php\" method=\"GET\">
\t                     <select name=\"hout\" id=\"ddlHout\">
\t                        <option value=\"-1\">HOUTBLAZERS</option>
\t                        <option value=\"all\">ALLE</option>
\t\t\t\t\t\t\t\t\t";
        // line 84
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["houtblazers"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["houtblazer"]) {
            // line 85
            echo "\t\t\t\t\t\t\t\t\t<option value=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["houtblazer"], "subtype", array()), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, $this->getAttribute($context["houtblazer"], "subtype", array()), "html", null, true);
            echo "</option>
\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['houtblazer'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 87
        echo "\t                     </select>
\t                     <select name=\"koper\" id=\"ddlKoper\">
\t                        <option value=\"-1\">KOPERBLAZERS</option>
\t                        <option value=\"all\">ALLE</option>
\t\t\t\t\t\t\t\t\t";
        // line 91
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["koperblazers"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["koperblazer"]) {
            // line 92
            echo "\t\t\t\t\t\t\t\t\t<option value=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["koperblazer"], "subtype", array()), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, $this->getAttribute($context["koperblazer"], "subtype", array()), "html", null, true);
            echo "</option>
\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['koperblazer'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 94
        echo "\t                     </select>

\t\t\t\t\t\t\t\t  <input id=\"lnkAll\" type=\"submit\" value=\"bekijk alle occasies\">
\t\t\t\t\t\t\t\t  <!--<a href=\"#\" type=\"submit\" id=\"lnkAll\">bekijk alle occasies</a>-->
\t\t\t\t\t\t\t</form>

                  </div>
                  <h3 class=\"separator\">occasies</h3>
                  <hr>
                  <div id=\"houtblazers\" class=\"occasies\">
\t\t\t\t\t\t\t<!--TODO: fout uit forlussen halen-->
\t\t\t\t\t\t\t<!--TODO: lightbox voor fotos-->
\t\t\t\t\t\t\t";
        // line 106
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["instruments"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["instrument"]) {
            // line 107
            echo "                     <div class=\"item clearfix\" data-subtype=\"Altklarinet\">
                        <div class=\"clearfix\">
                           <div class=\"title\">
                              <p>";
            // line 110
            echo twig_escape_filter($this->env, $this->getAttribute($context["instrument"], "titel", array()), "html", null, true);
            echo "</p>
                           </div>
                           <div class=\"left\">
                              <div class=\"images thumbs\">
\t\t                            \t<a href=\"../uploads/occasies/photos/";
            // line 114
            echo twig_escape_filter($this->env, $this->getAttribute($context["instrument"], "filename", array()), "html", null, true);
            echo "\" class=\"photo\"><img src=\"../uploads/occasies/thumbs/";
            echo twig_escape_filter($this->env, $this->getAttribute($context["instrument"], "filename", array()), "html", null, true);
            echo "\" alt=\"\" /></a>


\t\t\t\t\t\t\t\t\t\t</div>
                           </div>
                           <div class=\"right\">
                              <p>
                                 ";
            // line 121
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
        // line 128
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
      <script src=\"../../node_modules/jquery/dist/jquery.min.js\"></script>
      <script src=\"../js/scripts.min.js\"></script>
\t\t<script src=\"../../node_modules/owl.carousel/dist/owl.carousel.min.js\"></script>
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
        return array (  207 => 128,  194 => 121,  182 => 114,  175 => 110,  170 => 107,  166 => 106,  152 => 94,  141 => 92,  137 => 91,  131 => 87,  120 => 85,  116 => 84,  101 => 71,  92 => 69,  88 => 68,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "occasies.twig", "C:\\xampp\\htdocs\\www\\cws2_labo_01_vleminckx_cedric\\dist\\views\\occasies.twig");
    }
}
