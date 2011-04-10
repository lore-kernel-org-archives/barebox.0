Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8zGL-0001No-7O
	for barebox@lists.infradead.org; Sun, 10 Apr 2011 18:21:30 +0000
Received: by eyh6 with SMTP id 6so1638811eyh.36
	for <barebox@lists.infradead.org>; Sun, 10 Apr 2011 11:21:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110410105159.GA18343@game.jcrosoft.org>
References: <1302358087-9756-1-git-send-email-franck.jullien@gmail.com>
	<1302358087-9756-2-git-send-email-franck.jullien@gmail.com>
	<20110410040649.GA8392@game.jcrosoft.org>
	<BANLkTi=JnLBhDeYY_eXRtxb9b_3Z=2rS3A@mail.gmail.com>
	<20110410105159.GA18343@game.jcrosoft.org>
Date: Sun, 10 Apr 2011 20:21:26 +0200
Message-ID: <BANLkTi=D=yLy3iZ2ZQuVAwb3Q=UPnk0ZaA@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1036340106=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] [v2] Nios2: Add Altera TSE MAC driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

--===============1036340106==
Content-Type: multipart/alternative; boundary=001517447908f7fe6004a094861b

--001517447908f7fe6004a094861b
Content-Type: text/plain; charset=ISO-8859-1

2011/4/10 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

> >      > index 0000000..2687377
> >      > --- /dev/null
> >      > +
> >      > +static int tse_get_ethaddr(struct eth_device *edev, unsigned char
> *m)
> >      > +{
> >      > +     /* There is no eeprom */
> >      so return the content of the register no?
> >
> >    Well, the register is reseted to 0 when the MAC starts so there is no
> >    Ethernet address
> >    to get.
> >
> except this function is supposed to return the mac address of the device at
> any time so after a set of it it will not be true any more
>

If I implement the function I get a "eth@eth0: got MAC address from EEPROM:
00:00:00:00:00:00" at startup.
That why I returned -1 as what I could find int at91_ether.c......
Or, I could find something to return -1 as long as the MAC address hasn't
been set.



> >
> >      > +     return -1;
> >      > +}
> >      > +
> >      > +static int tse_eth_send(struct eth_device *edev, void *packet,
> int
> >      length)
> >      > +{
> >      > +
> >      > +     struct altera_tse_priv *priv = edev->priv;
> >      > +     struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
> >      > +     struct alt_sgdma_descriptor *tx_desc = (struct
> >      alt_sgdma_descriptor *)priv->tx_desc;
> >      > +
> >      > +     struct alt_sgdma_descriptor *tx_desc_cur = (struct
> >      alt_sgdma_descriptor *)&tx_desc[0];
> >      > +
> >      > +     flush_dcache_range((uint32_t)packet, (uint32_t)packet +
> length);
> >      > +     alt_sgdma_construct_descriptor_burst(
> >      > +             (struct alt_sgdma_descriptor *)&tx_desc[0],
> >      > +             (struct alt_sgdma_descriptor *)&tx_desc[1],
> >      > +             (uint32_t *)packet,  /* read addr */
> >      > +             (uint32_t *)0,       /*           */
> >      > +             length,              /* length or EOP ,will change
> for
> >      each tx */
> >      > +             0x1,                 /* gen eop */
> >      > +             0x0,                 /* read fixed */
> >      > +             0x1,                 /* write fixed or sop */
> >      > +             0x0,                 /* read burst */
> >      > +             0x0,                 /* write burst */
> >      > +             0x0                  /* channel */
> >      please use tab for indent I see other in the patch please check
> >
> >    I use tab for indent, spaces for alignment. I checked the patch with
> >    checkpatch and it
> >    didn't find errors.....
> try to use tab when u can even for alignment please
>

OK........


> >
> >
> >      > +
> >      why this?
> >
> >    Because sometimes (often ?), hardware doesn't run first time. So I
> like to
> >    have some information on MII bus running correctly....One day I had a
> PHY
> >    getting the address 1 and sometimes this f***ing PHY got 31 and this
> >    kind of auto scan helped me to immediately find the problem......
> >    I could remove those function if it is a problem....
> so it's no the right place as it's phy specific and not ehtern drivers
> specific
>

We could put this in the MII code ? Or should I simply remove it ?


>
> Best Regards,
> J.
>

--001517447908f7fe6004a094861b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2011/4/10 Jean-Christophe PLAGNIOL-VILLA=
RD <span dir=3D"ltr">&lt;<a href=3D"mailto:plagnioj@jcrosoft.com">plagnioj@=
jcrosoft.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im">&gt; =A0 =A0 =A0&gt; index 0000000..2687377<br>
&gt; =A0 =A0 =A0&gt; --- /dev/null<br>
&gt; =A0 =A0 =A0&gt; +<br>
&gt; =A0 =A0 =A0&gt; +static int tse_get_ethaddr(struct eth_device *edev, u=
nsigned char *m)<br>
&gt; =A0 =A0 =A0&gt; +{<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 /* There is no eeprom */<br>
&gt; =A0 =A0 =A0so return the content of the register no?<br>
&gt;<br>
&gt; =A0 =A0Well, the register is reseted to 0 when the MAC starts so there=
 is no<br>
&gt; =A0 =A0Ethernet address<br>
&gt; =A0 =A0to get.<br>
&gt;<br>
</div>except this function is supposed to return the mac address of the dev=
ice at<br>
any time so after a set of it it will not be true any more<br></blockquote>=
<div><br></div><div>If I implement the function I get a=A0&quot;eth@eth0: g=
ot MAC address from EEPROM: 00:00:00:00:00:00&quot;=A0at startup.</div><div=
>
That why I returned -1 as what I could find int at91_ether.c......</div><di=
v>Or, I could find something to return -1 as long as the MAC address hasn&#=
39;t been set.</div><div><br></div><div>=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex;">

<div><div></div><div class=3D"h5">&gt;<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 return -1;<br>
&gt; =A0 =A0 =A0&gt; +}<br>
&gt; =A0 =A0 =A0&gt; +<br>
&gt; =A0 =A0 =A0&gt; +static int tse_eth_send(struct eth_device *edev, void=
 *packet, int<br>
&gt; =A0 =A0 =A0length)<br>
&gt; =A0 =A0 =A0&gt; +{<br>
&gt; =A0 =A0 =A0&gt; +<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;pr=
iv;<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 struct alt_sgdma_registers *tx_sgdma =3D pri=
v-&gt;sgdma_tx;<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 struct alt_sgdma_descriptor *tx_desc =3D (st=
ruct<br>
&gt; =A0 =A0 =A0alt_sgdma_descriptor *)priv-&gt;tx_desc;<br>
&gt; =A0 =A0 =A0&gt; +<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 struct alt_sgdma_descriptor *tx_desc_cur =3D=
 (struct<br>
&gt; =A0 =A0 =A0alt_sgdma_descriptor *)&amp;tx_desc[0];<br>
&gt; =A0 =A0 =A0&gt; +<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 flush_dcache_range((uint32_t)packet, (uint32=
_t)packet + length);<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 alt_sgdma_construct_descriptor_burst(<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor=
 *)&amp;tx_desc[0],<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor=
 *)&amp;tx_desc[1],<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)packet, =A0/* re=
ad addr */<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)0, =A0 =A0 =A0 /=
* =A0 =A0 =A0 =A0 =A0 */<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 length, =A0 =A0 =A0 =A0 =A0 =
=A0 =A0/* length or EOP ,will change for<br>
&gt; =A0 =A0 =A0each tx */<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x1, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 /* gen eop */<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 /* read fixed */<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x1, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 /* write fixed or sop */<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 /* read burst */<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 /* write burst */<br>
&gt; =A0 =A0 =A0&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0/* channel */<br>
&gt; =A0 =A0 =A0please use tab for indent I see other in the patch please c=
heck<br>
&gt;<br>
&gt; =A0 =A0I use tab for indent, spaces for alignment. I checked the patch=
 with<br>
&gt; =A0 =A0checkpatch and it<br>
&gt; =A0 =A0didn&#39;t find errors.....<br>
</div></div>try to use tab when u can even for alignment please<br></blockq=
uote><div><br></div><div>OK........</div><div>=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex;">

<div class=3D"im">&gt;<br>
&gt;<br>
&gt; =A0 =A0 =A0&gt; +<br>
&gt; =A0 =A0 =A0why this?<br>
&gt;<br>
&gt; =A0 =A0Because sometimes (often ?), hardware doesn&#39;t run first tim=
e. So I like to<br>
&gt; =A0 =A0have some information on MII bus running correctly....One day I=
 had a PHY<br>
&gt; =A0 =A0getting the address 1 and sometimes this f***ing PHY got 31 and=
 this<br>
&gt; =A0 =A0kind of auto scan helped me to immediately find the problem....=
..<br>
&gt; =A0 =A0I could remove those function if it is a problem....<br>
</div>so it&#39;s no the right place as it&#39;s phy specific and not ehter=
n drivers<br>
specific<br></blockquote><div><br></div><div>We could put this in the MII c=
ode ? Or should I simply remove it ?</div><div>=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex;">

<br>
Best Regards,<br>
<font color=3D"#888888">J.<br>
</font></blockquote></div><br>

--001517447908f7fe6004a094861b--


--===============1036340106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1036340106==--
