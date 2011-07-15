Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pv0-f177.google.com ([74.125.83.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QhfOy-0004of-9I
	for barebox@lists.infradead.org; Fri, 15 Jul 2011 10:13:49 +0000
Received: by pvg20 with SMTP id 20so1169102pvg.36
	for <barebox@lists.infradead.org>; Fri, 15 Jul 2011 03:13:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAM9uW_4_d1NcZZYvfFpTW2g=pjeM1nQ0Ohf3RXiYX7fhK6tseA@mail.gmail.com>
References: <CAM9uW_57ecdoGWdV9pqNjBfkCo5xS-R1zkY910_yvBLKHEYzxQ@mail.gmail.com>
	<20110712135443.GW6069@pengutronix.de>
	<20110712135816.GY6069@pengutronix.de>
	<CAM9uW_4_d1NcZZYvfFpTW2g=pjeM1nQ0Ohf3RXiYX7fhK6tseA@mail.gmail.com>
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Fri, 15 Jul 2011 12:13:16 +0200
Message-ID: <CAM9uW_7v_VkCLBsfNajo2sk4zkGzdrgwVRpHhFvDFUgPEhH-SQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1107160917=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Fwd: FEC Not working with imx27 based board
To: barebox@lists.infradead.org

--===============1107160917==
Content-Type: multipart/alternative; boundary=bcaec52162e50fb65604a818e71f

--bcaec52162e50fb65604a818e71f
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ----------
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: 2011/7/12
Subject: Re: FEC Not working with imx27 based board
To: Sascha Hauer <s.hauer@pengutronix.de>


Yes I've set the correct adress and it's why I don't have fffff like on the
phytec.
But in fact I had to change the fec_get_hwadrr() to make it work with my
board :

static int fec_get_hwaddr(struct eth_device *dev, unsigned char *mac)

{

 int i;

 int uninitialized =3D 0;


>  for (i=3D0;i<6;i++) {

 mac[6-1-i] =3D readl(&IIM_BANK_REG(0,(IIM0_MAC+i)));

 }


>  /* uninitialized if all 00 */

 if ((mac[0] =3D=3D 0) && (mac[1] =3D=3D 0) && (mac[2] =3D=3D 0) &&

            (mac[3] =3D=3D 0) && (mac[4] =3D=3D 0) && (mac[5] =3D=3D 0))

                uninitialized =3D 1;


>  /* uninitialized if all FF (could be safe) */

        if ((mac[0] =3D=3D 0xff) && (mac[1] =3D=3D 0xff) && (mac[2] =3D=3D =
0xff) &&

    (mac[3] =3D=3D 0xff) && (mac[4] =3D=3D 0xff) && (mac[5] =3D=3D 0xff))

        uninitialized =3D 1;


>  return uninitialized;

}


Before this change it wasn't the case, I had no mac adress in barebox
start...
I also added a specific reset :

void fec_reset()
{
        int i=3D0;
    /*  FEC RESET */
    imx_gpio_mode(CFG_ETHPHY_RST | GPIO_OUT | GPIO_PUEN | GPIO_GPIO);
    printf("Before PHY reset\n");
    GPIO_CLEAR(CFG_ETHPHY_RST);
    udelay(200);
    GPIO_SET(CFG_ETHPHY_RST);
    printf("After PHY reset\n");

}

And then I call it in the fec_probe() to ensure the fec is reset properly
before settings.
I already tested the fec on u-boot and it works fine, so i tought it can
help me with barebox but it seems there are some differences between codes.

For now Im trying to see if it can be a cpu frequence problem because I hav=
e
an errata on the pll that shifts all my frequencies and so I have to adjust
them in the lowlevelinit...

So I would like to know if the clock initialization is taking effect if I
boot from RAM ? Do I have t boot from flash ?

Thanks again.

Here is what


2011/7/12 Sascha Hauer <s.hauer@pengutronix.de>

> On Tue, Jul 12, 2011 at 03:54:43PM +0200, Sascha Hauer wrote:
> > On Mon, Jul 11, 2011 at 05:14:54PM +0200, Kamel BOUHARA wrote:
> > > Hi,
> > >
> > > Im trying to port barebox to my Armadeus apf27 board (based on the
> Freescale
> > > imx27 with a 512MiB NAND and 1GB of SDRAM).
> > > I've first tried the phytec imx27 configuration and I got it worked
> until
> > > the Linux uncompressing task (the machine ID is bad so I didn't expec=
t
> it
> > > will boot fine :)).
> > > So I just copied the phycard-imx27 board directory and I followed the
> > > boards.dox in order to add support for my board.
> > > But when I've tried to boot again it was not working anymore ...
> > >
> > > There are somethings stranges with the FEC, here is the result of a
> memory
> > > display with both phytec and my own board :
> > >
> > > > barebox@Phytec phyCard-i.MX27:/ md -s /dev/phy0
> > > >
> > > > 00000000: ffffffff ffffffff ffffffff ffffffff ................
> > > >
> > > > 00000010: ffffffff ffffffff ffffffff ffffffff ................
> > > >
> > > > 00000020: ffffffff ffffffff ffffffff ffffffff ................
> > > >
> > > > 00000030: ffffffff ffffffff ffffffff ffffffff ................
> >
> > This means your phy is not configured correctly. Do you usse the correc=
t
> > address (can be passed in platform_data).
>
> GPIO pins which hold the phy in reset are another thing which might go
> wrong.
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



--=20
__________________________________
*Kamel BOUHARA*
7 rue Jules C=E9sar
02100 SAINT-QUENTIN
06.17.83.29.04





--=20
__________________________________
*Kamel BOUHARA*
7 rue Jules C=E9sar
02100 SAINT-QUENTIN
06.17.83.29.04

--bcaec52162e50fb65604a818e71f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">---------- Forwarded message ----------<=
br>From: <b class=3D"gmail_sendername">Kamel BOUHARA</b> <span dir=3D"ltr">=
&lt;<a href=3D"mailto:k.bouhara@gmail.com">k.bouhara@gmail.com</a>&gt;</spa=
n><br>

Date: 2011/7/12<br>Subject: Re: FEC Not working with imx27 based board<br>T=
o: Sascha Hauer &lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengu=
tronix.de</a>&gt;<br><br><br>Yes I&#39;ve set the correct adress and it&#39=
;s why I don&#39;t have fffff like on the phytec.<div>

But in fact I had to change the fec_get_hwadrr() to make it work with my bo=
ard :</div><div><div><br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-l=
eft-width:1px;border-left-color:rgb(204, 204, 204);border-left-style:solid;=
padding-left:1ex">


static int fec_get_hwaddr(struct eth_device *dev, unsigned char *mac)</bloc=
kquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-rig=
ht:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-lef=
t-color:rgb(204, 204, 204);border-left-style:solid;padding-left:1ex">


{</blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;mar=
gin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;bor=
der-left-color:rgb(204, 204, 204);border-left-style:solid;padding-left:1ex"=
>


<span style=3D"white-space:pre-wrap">	</span>int i;</blockquote><blockquote=
 class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bott=
om:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204, 2=
04, 204);border-left-style:solid;padding-left:1ex">


<span style=3D"white-space:pre-wrap">	</span>int uninitialized =3D 0;</bloc=
kquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-rig=
ht:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-lef=
t-color:rgb(204, 204, 204);border-left-style:solid;padding-left:1ex">


<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;=
margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;=
border-left-color:rgb(204, 204, 204);border-left-style:solid;padding-left:1=
ex">


<span style=3D"white-space:pre-wrap">	</span>for (i=3D0;i&lt;6;i++) {</bloc=
kquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-rig=
ht:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-lef=
t-color:rgb(204, 204, 204);border-left-style:solid;padding-left:1ex">


<span style=3D"white-space:pre-wrap">		</span>mac[6-1-i] =3D readl(&amp;IIM=
_BANK_REG(0,(IIM0_MAC+i)));</blockquote><blockquote class=3D"gmail_quote" s=
tyle=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex=
;border-left-width:1px;border-left-color:rgb(204, 204, 204);border-left-sty=
le:solid;padding-left:1ex">


<span style=3D"white-space:pre-wrap">	</span>}</blockquote><blockquote clas=
s=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0p=
x;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204, 204, 2=
04);border-left-style:solid;padding-left:1ex">


<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;=
margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;=
border-left-color:rgb(204, 204, 204);border-left-style:solid;padding-left:1=
ex">


<span style=3D"white-space:pre-wrap">	</span>/* uninitialized if all 00 */<=
/blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margi=
n-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;borde=
r-left-color:rgb(204, 204, 204);border-left-style:solid;padding-left:1ex">


<span style=3D"white-space:pre-wrap">	</span>if ((mac[0] =3D=3D 0) &amp;&am=
p; (mac[1] =3D=3D 0) &amp;&amp; (mac[2] =3D=3D 0) &amp;&amp;</blockquote><b=
lockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;ma=
rgin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:r=
gb(204, 204, 204);border-left-style:solid;padding-left:1ex">


=A0=A0 =A0 =A0 =A0 =A0 =A0(mac[3] =3D=3D 0) &amp;&amp; (mac[4] =3D=3D 0) &a=
mp;&amp; (mac[5] =3D=3D 0))</blockquote><blockquote class=3D"gmail_quote" s=
tyle=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex=
;border-left-width:1px;border-left-color:rgb(204, 204, 204);border-left-sty=
le:solid;padding-left:1ex">


=A0=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0uninitialized =3D 1;</blockquote><blockqu=
ote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-b=
ottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204=
, 204, 204);border-left-style:solid;padding-left:1ex">


<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;=
margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;=
border-left-color:rgb(204, 204, 204);border-left-style:solid;padding-left:1=
ex">


<span style=3D"white-space:pre-wrap">	</span>/* uninitialized if all FF (co=
uld be safe) */</blockquote><blockquote class=3D"gmail_quote" style=3D"marg=
in-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left=
-width:1px;border-left-color:rgb(204, 204, 204);border-left-style:solid;pad=
ding-left:1ex">


=A0=A0 =A0 =A0 =A0if ((mac[0] =3D=3D 0xff) &amp;&amp; (mac[1] =3D=3D 0xff) =
&amp;&amp; (mac[2] =3D=3D 0xff) &amp;&amp;</blockquote><blockquote class=3D=
"gmail_quote" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;ma=
rgin-left:0.8ex;border-left-width:1px;border-left-color:rgb(204, 204, 204);=
border-left-style:solid;padding-left:1ex">


<span style=3D"white-space:pre-wrap">	</span> =A0 =A0(mac[3] =3D=3D 0xff) &=
amp;&amp; (mac[4] =3D=3D 0xff) &amp;&amp; (mac[5] =3D=3D 0xff))</blockquote=
><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px=
;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-colo=
r:rgb(204, 204, 204);border-left-style:solid;padding-left:1ex">


<span style=3D"white-space:pre-wrap">	</span> =A0 =A0 =A0 =A0uninitialized =
=3D 1;</blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0p=
x;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1p=
x;border-left-color:rgb(204, 204, 204);border-left-style:solid;padding-left=
:1ex">


<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;=
margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;=
border-left-color:rgb(204, 204, 204);border-left-style:solid;padding-left:1=
ex">


<span style=3D"white-space:pre-wrap">	</span>return uninitialized;</blockqu=
ote><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:=
0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-c=
olor:rgb(204, 204, 204);border-left-style:solid;padding-left:1ex">


}</blockquote></div><div><br></div><div>Before this change it wasn&#39;t th=
e case, I had no mac adress in barebox start...</div><div>I also added a sp=
ecific reset :</div><div><br></div><div><div>void fec_reset()</div><div>


{</div><div>=A0=A0 =A0 =A0 =A0int i=3D0;</div><div>=A0=A0 =A0/* =A0FEC RESE=
T */</div><div>=A0=A0 =A0imx_gpio_mode(CFG_ETHPHY_RST | GPIO_OUT | GPIO_PUE=
N | GPIO_GPIO);</div><div>=A0=A0 =A0printf(&quot;Before PHY reset\n&quot;);=
</div><div>=A0=A0 =A0GPIO_CLEAR(CFG_ETHPHY_RST);</div>


<div>=A0=A0 =A0udelay(200);</div><div>=A0=A0 =A0GPIO_SET(CFG_ETHPHY_RST);</=
div><div>=A0=A0 =A0printf(&quot;After PHY reset\n&quot;);</div><div>=A0=A0 =
=A0</div><div>}</div></div><div><br></div><div>And then I call it in the fe=
c_probe() to ensure the fec is reset properly before settings.</div>


<div>I already tested the fec on u-boot and it works fine, so i tought it c=
an help me with barebox but it seems there are some differences between cod=
es.</div><div><br></div><div>For now Im trying to see if it can be a cpu fr=
equence problem because I have an errata on the pll that shifts all my freq=
uencies and so I have to adjust them in the lowlevelinit...</div>


<div><br></div><div>So I would like to know if the clock initialization is =
taking effect if I boot from RAM ? Do I have t boot from flash ?</div><div>=
<br></div><div>Thanks again.</div><div><br></div><div>Here is what<div>

<div></div><div class=3D"h5"><br><br>
<div class=3D"gmail_quote">2011/7/12 Sascha Hauer <span dir=3D"ltr">&lt;<a =
href=3D"mailto:s.hauer@pengutronix.de" target=3D"_blank">s.hauer@pengutroni=
x.de</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">


<div>On Tue, Jul 12, 2011 at 03:54:43PM +0200, Sascha Hauer wrote:<br>
&gt; On Mon, Jul 11, 2011 at 05:14:54PM +0200, Kamel BOUHARA wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; Im trying to port barebox to my Armadeus apf27 board (based on th=
e Freescale<br>
&gt; &gt; imx27 with a 512MiB NAND and 1GB of SDRAM).<br>
&gt; &gt; I&#39;ve first tried the phytec imx27 configuration and I got it =
worked until<br>
&gt; &gt; the Linux uncompressing task (the machine ID is bad so I didn&#39=
;t expect it<br>
&gt; &gt; will boot fine :)).<br>
&gt; &gt; So I just copied the phycard-imx27 board directory and I followed=
 the<br>
&gt; &gt; boards.dox in order to add support for my board.<br>
&gt; &gt; But when I&#39;ve tried to boot again it was not working anymore =
...<br>
&gt; &gt;<br>
&gt; &gt; There are somethings stranges with the FEC, here is the result of=
 a memory<br>
&gt; &gt; display with both phytec and my own board :<br>
&gt; &gt;<br>
&gt; &gt; &gt; barebox@Phytec phyCard-i.MX27:/ md -s /dev/phy0<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; 00000000: ffffffff ffffffff ffffffff ffffffff ..............=
..<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; 00000010: ffffffff ffffffff ffffffff ffffffff ..............=
..<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; 00000020: ffffffff ffffffff ffffffff ffffffff ..............=
..<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; 00000030: ffffffff ffffffff ffffffff ffffffff ..............=
..<br>
&gt;<br>
&gt; This means your phy is not configured correctly. Do you usse the corre=
ct<br>
&gt; address (can be passed in platform_data).<br>
<br>
</div>GPIO pins which hold the phy in reset are another thing which might g=
o<br>
wrong.<br>
<div><div></div><div><br>
Sascha<br>
<br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0 =
=A0|<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-20=
6917-5555 |<br>
</div></div></blockquote></div><br><br clear=3D"all"><br></div></div>-- <br=
><div class=3D"im">__________________________________<br><i><font face=3D"&=
#39;comic sans ms&#39;, sans-serif">Kamel BOUHARA</font></i><div>7 rue Jule=
s C=E9sar<div>

02100 SAINT-QUENTIN<br>
06.17.83.29.04<br><br></div></div><br>
</div></div>
</div><br><br clear=3D"all"><br>-- <br>__________________________________<b=
r><i><font face=3D"&#39;comic sans ms&#39;, sans-serif">Kamel BOUHARA</font=
></i><div>7 rue Jules C=E9sar<div>02100 SAINT-QUENTIN<br>06.17.83.29.04<br>=
<br>

</div></div><br>

--bcaec52162e50fb65604a818e71f--


--===============1107160917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1107160917==--
