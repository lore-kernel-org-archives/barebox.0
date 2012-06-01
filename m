Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slsa667.piensasolutions.com ([217.76.150.252])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SaNIx-0007eU-Nl
 for barebox@lists.infradead.org; Fri, 01 Jun 2012 08:33:57 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp-02.piensasolutions.com (Postfix) with ESMTP id A59192A0906
 for <barebox@lists.infradead.org>; Fri,  1 Jun 2012 10:33:52 +0200 (CEST)
Received: from mail-ey0-f177.google.com (mail-ey0-f177.google.com
 [209.85.215.177])
 by smtp-02.piensasolutions.com (Postfix) with ESMTPSA id 6D8582A09EF
 for <barebox@lists.infradead.org>; Fri,  1 Jun 2012 10:33:52 +0200 (CEST)
Received: by eaaf11 with SMTP id f11so609360eaa.36
 for <barebox@lists.infradead.org>; Fri, 01 Jun 2012 01:33:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120531200834.GE30400@pengutronix.de>
References: <CAHvDM_e+yLQbJAa96-XJan8u_K57tDuJyWVqTGLyHxeQ8MG02g@mail.gmail.com>
 <20120531200834.GE30400@pengutronix.de>
From: Benoit RAT <benoit@sevensols.com>
Date: Fri, 1 Jun 2012 10:33:31 +0200
Message-ID: <CAHvDM_dU_O+k+=jJ413LypC-q1PsW-znXO89giRRLJjmmOvy+w@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6523213009308164529=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: menu autodisplay does not work
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============6523213009308164529==
Content-Type: multipart/alternative; boundary=90e6ba615438453bf804c1650bac

--90e6ba615438453bf804c1650bac
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I think this is not a bug, it's the documentation that is not clear
here. The above is only useful in conjunction with -A in which case
the description given with -d is shown as timeout text.

It is what I thought but even with the -A option it doesn't work:

menu -m test -s -A 10 -d "test2"

 test menu
      1: test1
      2: test2
      3: test3
  test2  8

So test2 is correctly selected for timeout (test2 8) but when the countdown
terminate I obtain

1
WRS-3> /

this means that the command executed is test1
Moreover, I think it should be usefull to have a -A infinite timeout
options with a preselect option to help someone choose the next step or the
default step.


About the -S -n <num> option I also think it is redundant but maybe someone
thought implementing -S -d <desc>



--
 <http://www.sevensols.com/>  <http://www.sevensecurity.es>

*Benoit RAT LAMY*

Engineer (Sw) \ Ingeniero (Sw)

fix. *(+34) 958 285 024*

cel. *(+34) 617 989 123*

e-mail: benoit@sevensols.com

*www.sevensols.com / **www.sevensecurity.es*

_________________________________

*C/ Baza, parcela 19 Nave 3  \ Pol=EDgono Ind. Juncaril \*

*18210 - PELIGROS - GRANADA =96SPAIN*



On Thu, May 31, 2012 at 10:08 PM, Sascha Hauer <s.hauer@pengutronix.de>wrot=
e:

> On Thu, May 31, 2012 at 05:25:03PM +0200, Benoit RAT wrote:
> > Hy guy,
> >
> > I found a small bug with menu autodisplay functionality that doesn't
> work:
> >
> >  menu -a -m test -d "test menu"
> >  menu -e -a -m test -c "echo 1" -d "test1"
> >  menu -e -a -m test -c "echo 2" -d "test2"
> >  menu -e -a -m test -c "echo 3" -d "test3"
> >
> > And then I try to autoselect test2 after chosing test 1
> >
> > 1
> > barebox> menu -m test -s -d "test2"
>
> I think this is not a bug, it's the documentation that is not clear
> here. The above is only useful in conjunction with -A in which case
> the description given with -d is shown as timeout text.
>
> >
> > But this does not work!
> >
> > The only way to perform this is to use
> >
> > menu -m test -S -n 2
> > menu -m test -s
>
> That's a point I do not understand. Looking at the code it's clear to me
> why this have to be two commands, but I think it should be possible to
> combine the select option with the show option. Furthermore I think the
> -S option is quite useless. -S seems to used only to let the -n option
> take effect.
>
> Overall it's not very clear which options exist and which options take
> an argument. I've collected them and here is the result:
>
> -m <menuname>    specify menu to work on
> -l               list existing menus
> -s               show menu
> -a               Add a menu or, when -e is given additionally, add a menu
> entry
> -r               remove a menu
> -d <description> description, in conjunction with
>                  -a -e: Menu text to show
>                  -A: timeout text to show
> -A <delay>       Autoselect selected entry in <delay> seconds
> -c <command>     run <command> when an entry is selected
> -R               reentrance, used with -a, do not leave the menu after
>                 an entry is selected
> -b 0|1           box entry. used with -a, add a yes/no entry
> -e               when given with -a, add a menu entry. When given with
>                 -l, additionally to the menu also list the entries
> -S -n <num>      select entry <num>, starting at 1. Seperate command,
>                 NOT together with actually showing the menu
>
> I think we should add this to the help text for the menu command, or
> even better, replace the docs and the code for -S -n <num> with a plain
> -S <num>
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Industrial Linux Solutions                 | http://www.pengutronix.de/  =
|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>

--90e6ba615438453bf804c1650bac
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I think this is not a bug, it&#39;s the documentation that is not clear<br>=
here. The above is only useful in conjunction with -A in which case<br>the =
description given with -d is shown as timeout text.<div><br></div><div>It i=
s what I thought but even with the -A option it doesn&#39;t work:</div>

<div><br></div><div><div>menu -m test -s -A 10 -d &quot;test2&quot;</div></=
div><div><br></div><div><div>=A0test menu</div><div>=A0 =A0 =A0 <span style=
=3D"background-color:rgb(192,192,192)">1: test1</span></div><div>=A0 =A0 =
=A0 2: test2</div>

<div>=A0 =A0 =A0 3: test3</div><div>=A0 test2 =A08</div><div><br></div><div=
>So test2 is correctly selected for timeout (test2 8) but when the countdow=
n terminate I obtain</div><div><br></div><div><div>1</div><div>WRS-3&gt; /=
=A0</div>

</div><div><br></div><div>this means that the command executed is test1</di=
v><div>Moreover, I think it should be usefull to have a -A infinite timeout=
 options with a preselect option to help someone choose the next step or th=
e default step.</div>

<div><br></div><div><br></div><div>About the -S -n &lt;num&gt; option I als=
o think it is redundant but maybe someone thought implementing -S -d &lt;de=
sc&gt;</div><div><br></div><div><br></div><br><span style=3D"font-family:&#=
39;Times New Roman&#39;;font-size:medium">--</span><br style=3D"font-family=
:&#39;Times New Roman&#39;;font-size:medium">

<div style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><a hr=
ef=3D"http://www.sevensols.com/" target=3D"_blank"><img src=3D"http://www.s=
evensols.com/logos/logo-118x90.png"></a>=A0<a href=3D"http://www.sevensecur=
ity.es" style=3D"margin-left:10px" target=3D"_blank"><img src=3D"http://www=
.sevensols.com/logos/logo-7Sec-216x90.png"></a></div>

<br style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><div s=
tyle=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><span style=
=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;li=
ne-height:15px"><b><span lang=3D"EN-US" style=3D"font-family:&#39;Caecilia =
LT Std Light&#39;,serif;color:rgb(16,138,208)">Benoit RAT LAMY</span></b></=
span></div>

<div><p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-l=
eft:0px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border=
-collapse:collapse"><span lang=3D"EN-US" style=3D"font-family:&#39;Caecilia=
 LT Std Light&#39;,serif;color:rgb(16,138,208)">Engineer (Sw) \ Ingeniero (=
Sw)</span></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border-coll=
apse:collapse"><span lang=3D"EN-US" style=3D"font-family:&#39;Caecilia LT S=
td Light&#39;,serif;color:rgb(16,138,208)">fix.=A0<b>(+34) 958 285 024</b><=
/span></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-size:13px;border-collapse:collapse"><span style=3D=
"color:rgb(16,138,208);font-family:&#39;Caecilia LT Std Light&#39;,serif">c=
el.=A0</span><b style=3D"color:rgb(16,138,208);font-family:&#39;Caecilia LT=
 Std Light&#39;,serif">(+34) 617 989 123</b></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border-coll=
apse:collapse"><span lang=3D"EN-US" style=3D"font-family:&#39;Caecilia LT S=
td Light&#39;,serif;color:rgb(16,138,208)">e-mail:=A0<a href=3D"mailto:beno=
it@sevensols.com" target=3D"_blank"><font color=3D"#339999">benoit@sevensol=
s.com</font></a></span></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border-coll=
apse:collapse"><b><span lang=3D"ES-TRAD" style=3D"font-family:&#39;Caecilia=
 LT Std Light&#39;,serif"><span style=3D"text-decoration:none"><font color=
=3D"#339999"><a href=3D"http://www.sevensols.com/" target=3D"_blank">www.se=
vensols.com</a>=A0/=A0</font></span></span></b><span lang=3D"ES-TRAD" style=
=3D"font-family:&#39;Caecilia LT Std Light&#39;,serif;color:rgb(16,138,208)=
"></span><b><span lang=3D"ES-TRAD" style=3D"font-family:&#39;Caecilia LT St=
d Light&#39;,serif"><font color=3D"#339999"><a href=3D"http://www.sevensecu=
rity.es" target=3D"_blank">www.sevensecurity.es</a></font></span></b></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border-coll=
apse:collapse"><span lang=3D"ES-TRAD" style=3D"font-family:&#39;Caecilia LT=
 Std Light&#39;,serif;color:rgb(16,138,208)">______________________________=
___</span></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border-coll=
apse:collapse"><b><span lang=3D"ES-TRAD" style=3D"font-family:&#39;Caecilia=
 LT Std Light&#39;,serif;color:rgb(16,138,208)">C/ Baza, parcela 19 Nave 3=
=A0 \ Pol=EDgono Ind. Juncaril \</span></b></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;font-family:arial,sans-serif;font-size:13px;border-collapse:collapse"><b=
><span style=3D"font-family:&#39;Caecilia LT Std Light&#39;,serif;color:rgb=
(16,138,208)">18210 - PELIGROS - GRANADA =96SPAIN</span></b></p>

</div><br>
<br><br><div class=3D"gmail_quote">On Thu, May 31, 2012 at 10:08 PM, Sascha=
 Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de" targ=
et=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">

<div class=3D"im">On Thu, May 31, 2012 at 05:25:03PM +0200, Benoit RAT wrot=
e:<br>
&gt; Hy guy,<br>
&gt;<br>
&gt; I found a small bug with menu autodisplay functionality that doesn&#39=
;t work:<br>
&gt;<br>
&gt; =A0menu -a -m test -d &quot;test menu&quot;<br>
&gt; =A0menu -e -a -m test -c &quot;echo 1&quot; -d &quot;test1&quot;<br>
&gt; =A0menu -e -a -m test -c &quot;echo 2&quot; -d &quot;test2&quot;<br>
&gt; =A0menu -e -a -m test -c &quot;echo 3&quot; -d &quot;test3&quot;<br>
&gt;<br>
&gt; And then I try to autoselect test2 after chosing test 1<br>
&gt;<br>
&gt; 1<br>
&gt; barebox&gt; menu -m test -s -d &quot;test2&quot;<br>
<br>
</div>I think this is not a bug, it&#39;s the documentation that is not cle=
ar<br>
here. The above is only useful in conjunction with -A in which case<br>
the description given with -d is shown as timeout text.<br>
<div class=3D"im"><br>
&gt;<br>
&gt; But this does not work!<br>
&gt;<br>
&gt; The only way to perform this is to use<br>
&gt;<br>
&gt; menu -m test -S -n 2<br>
&gt; menu -m test -s<br>
<br>
</div>That&#39;s a point I do not understand. Looking at the code it&#39;s =
clear to me<br>
why this have to be two commands, but I think it should be possible to<br>
combine the select option with the show option. Furthermore I think the<br>
-S option is quite useless. -S seems to used only to let the -n option<br>
take effect.<br>
<br>
Overall it&#39;s not very clear which options exist and which options take<=
br>
an argument. I&#39;ve collected them and here is the result:<br>
<br>
-m &lt;menuname&gt; =A0 =A0specify menu to work on<br>
-l =A0 =A0 =A0 =A0 =A0 =A0 =A0 list existing menus<br>
-s =A0 =A0 =A0 =A0 =A0 =A0 =A0 show menu<br>
-a =A0 =A0 =A0 =A0 =A0 =A0 =A0 Add a menu or, when -e is given additionally=
, add a menu entry<br>
-r =A0 =A0 =A0 =A0 =A0 =A0 =A0 remove a menu<br>
-d &lt;description&gt; description, in conjunction with<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0-a -e: Menu text to show<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0-A: timeout text to show<br>
-A &lt;delay&gt; =A0 =A0 =A0 Autoselect selected entry in &lt;delay&gt; sec=
onds<br>
-c &lt;command&gt; =A0 =A0 run &lt;command&gt; when an entry is selected<br=
>
-R =A0 =A0 =A0 =A0 =A0 =A0 =A0 reentrance, used with -a, do not leave the m=
enu after<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 an entry is selected<br>
-b 0|1 =A0 =A0 =A0 =A0 =A0 box entry. used with -a, add a yes/no entry<br>
-e =A0 =A0 =A0 =A0 =A0 =A0 =A0 when given with -a, add a menu entry. When g=
iven with<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 -l, additionally to the menu also list the=
 entries<br>
-S -n &lt;num&gt; =A0 =A0 =A0select entry &lt;num&gt;, starting at 1. Seper=
ate command,<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 NOT together with actually showing the men=
u<br>
<br>
I think we should add this to the help text for the menu command, or<br>
even better, replace the docs and the code for -S -n &lt;num&gt; with a pla=
in<br>
-S &lt;num&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Sascha<br>
<br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: <a href=3D"tel:%2B49-51=
21-206917-0" value=3D"+4951212069170">+49-5121-206917-0</a> =A0 =A0|<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 <a href=3D"=
tel:%2B49-5121-206917-5555" value=3D"+4951212069175555">+49-5121-206917-555=
5</a> |<br>
</font></span></blockquote></div><br></div>

--90e6ba615438453bf804c1650bac--


--===============6523213009308164529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6523213009308164529==--
