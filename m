Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9But-0003cM-QO
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 07:52:13 +0000
Received: by eyh6 with SMTP id 6so1755605eyh.36
	for <barebox@lists.infradead.org>; Mon, 11 Apr 2011 00:52:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110411074750.GF7285@pengutronix.de>
References: <1302358087-9756-1-git-send-email-franck.jullien@gmail.com>
	<1302358087-9756-2-git-send-email-franck.jullien@gmail.com>
	<20110410040649.GA8392@game.jcrosoft.org>
	<BANLkTi=JnLBhDeYY_eXRtxb9b_3Z=2rS3A@mail.gmail.com>
	<20110410105159.GA18343@game.jcrosoft.org>
	<BANLkTi=D=yLy3iZ2ZQuVAwb3Q=UPnk0ZaA@mail.gmail.com>
	<20110411023702.GA18925@game.jcrosoft.org>
	<BANLkTikCKnn4uQfq6yqW1OdDEXt5b5BFCw@mail.gmail.com>
	<20110411074750.GF7285@pengutronix.de>
Date: Mon, 11 Apr 2011 09:52:09 +0200
Message-ID: <BANLkTikG3ZfCNcNba=qbSBfpq9+1XfS7jQ@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0435953739=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] [v2] Nios2: Add Altera TSE MAC driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

--===============0435953739==
Content-Type: multipart/alternative; boundary=0015174c45a24ce78304a09fda5b

--0015174c45a24ce78304a09fda5b
Content-Type: text/plain; charset=ISO-8859-1

2011/4/11 Sascha Hauer <s.hauer@pengutronix.de>

> On Mon, Apr 11, 2011 at 09:23:56AM +0200, Franck JULLIEN wrote:
> > 2011/4/11 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >
> > > On 20:21 Sun 10 Apr     , Franck JULLIEN wrote:
> > > >    2011/4/10 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com
> >
> > > >
> > > >      >      > index 0000000..2687377
> > > >      >      > --- /dev/null
> > > >      >      > +
> > > >      >      > +static int tse_get_ethaddr(struct eth_device *edev,
> > > unsigned
> > > >      char *m)
> > > >      >      > +{
> > > >      >      > +     /* There is no eeprom */
> > > >      >      so return the content of the register no?
> > > >      >
> > > >      >    Well, the register is reseted to 0 when the MAC starts so
> there
> > > is
> > > >      no
> > > >      >    Ethernet address
> > > >      >    to get.
> > > >      >
> > > >      except this function is supposed to return the mac address of
> the
> > > device
> > > >      at
> > > >      any time so after a set of it it will not be true any more
> > > >
> > > >    If I implement the function I get a "eth@eth0: got MAC address
> from
> > > >    EEPROM: 00:00:00:00:00:00" at startup.
> > > >    That why I returned -1 as what I could find int at91_ether.c......
> > > >    Or, I could find something to return -1 as long as the MAC address
> > > hasn't
> > > >    been set.
> > > >
> > > I known this issue I re-write recently the at91_ether and the same on
> macb
> > > will post the patch soon
> > >
> > > It's fine the uperlayer will see that it's not a valid mac so this will
> > > generate a random one
> > > cf net/net.c IIRC
> > >
> > >
> > For me, it's a bit annoying  to get this message at startup.
> >
> > Don't you really think I could have a flag in the private structure to
> check
> > if an address has been set and then return -1 or the address in the
> > tse_get_ethaddr function ?
>
> How about the following:
>
>
> diff --git a/net/eth.c b/net/eth.c
> index 0251e59..c5b346c 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -167,8 +167,10 @@ int eth_register(struct eth_device *edev)
>
>        if (edev->get_ethaddr(edev, ethaddr) == 0) {
>                ethaddr_to_string(ethaddr, ethaddr_str);
> -               dev_info(dev, "got MAC address from EEPROM: %s\n",
> ethaddr_str);
> -               dev_set_param(dev, "ethaddr", ethaddr_str);
> +               if (is_valid_ether_addr(ethaddr)) {
> +                       dev_info(dev, "got MAC address from EEPROM: %s\n",
> ethaddr_str);
> +                       dev_set_param(dev, "ethaddr", ethaddr_str);
> +               }
>        }
>
>        if (!eth_current) {
>
> Sascha
>
>
Sounds good :)


> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--0015174c45a24ce78304a09fda5b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2011/4/11 Sascha Hauer <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengutronix.de</a>&g=
t;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex;">
<div><div></div><div class=3D"h5">On Mon, Apr 11, 2011 at 09:23:56AM +0200,=
 Franck JULLIEN wrote:<br>
&gt; 2011/4/11 Jean-Christophe PLAGNIOL-VILLARD &lt;<a href=3D"mailto:plagn=
ioj@jcrosoft.com">plagnioj@jcrosoft.com</a>&gt;<br>
&gt;<br>
&gt; &gt; On 20:21 Sun 10 Apr =A0 =A0 , Franck JULLIEN wrote:<br>
&gt; &gt; &gt; =A0 =A02011/4/10 Jean-Christophe PLAGNIOL-VILLARD &lt;<a hre=
f=3D"mailto:plagnioj@jcrosoft.com">plagnioj@jcrosoft.com</a>&gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; index 0000000..2687377<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; --- /dev/null<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; +<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; +static int tse_get_ethaddr(=
struct eth_device *edev,<br>
&gt; &gt; unsigned<br>
&gt; &gt; &gt; =A0 =A0 =A0char *m)<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; +{<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; + =A0 =A0 /* There is no eep=
rom */<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt; =A0 =A0 =A0so return the content of the regi=
ster no?<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt;<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt; =A0 =A0Well, the register is reseted to 0 wh=
en the MAC starts so there<br>
&gt; &gt; is<br>
&gt; &gt; &gt; =A0 =A0 =A0no<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt; =A0 =A0Ethernet address<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt; =A0 =A0to get.<br>
&gt; &gt; &gt; =A0 =A0 =A0&gt;<br>
&gt; &gt; &gt; =A0 =A0 =A0except this function is supposed to return the ma=
c address of the<br>
&gt; &gt; device<br>
&gt; &gt; &gt; =A0 =A0 =A0at<br>
&gt; &gt; &gt; =A0 =A0 =A0any time so after a set of it it will not be true=
 any more<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =A0 =A0If I implement the function I get a &quot;eth@eth0: g=
ot MAC address from<br>
&gt; &gt; &gt; =A0 =A0EEPROM: 00:00:00:00:00:00&quot; at startup.<br>
&gt; &gt; &gt; =A0 =A0That why I returned -1 as what I could find int at91_=
ether.c......<br>
&gt; &gt; &gt; =A0 =A0Or, I could find something to return -1 as long as th=
e MAC address<br>
&gt; &gt; hasn&#39;t<br>
&gt; &gt; &gt; =A0 =A0been set.<br>
&gt; &gt; &gt;<br>
&gt; &gt; I known this issue I re-write recently the at91_ether and the sam=
e on macb<br>
&gt; &gt; will post the patch soon<br>
&gt; &gt;<br>
&gt; &gt; It&#39;s fine the uperlayer will see that it&#39;s not a valid ma=
c so this will<br>
&gt; &gt; generate a random one<br>
&gt; &gt; cf net/net.c IIRC<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; For me, it&#39;s a bit annoying =A0to get this message at startup.<br>
&gt;<br>
&gt; Don&#39;t you really think I could have a flag in the private structur=
e to check<br>
&gt; if an address has been set and then return -1 or the address in the<br=
>
&gt; tse_get_ethaddr function ?<br>
<br>
</div></div>How about the following:<br>
<br>
<br>
diff --git a/net/eth.c b/net/eth.c<br>
index 0251e59..c5b346c 100644<br>
--- a/net/eth.c<br>
+++ b/net/eth.c<br>
@@ -167,8 +167,10 @@ int eth_register(struct eth_device *edev)<br>
<br>
 =A0 =A0 =A0 =A0if (edev-&gt;get_ethaddr(edev, ethaddr) =3D=3D 0) {<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ethaddr_to_string(ethaddr, ethaddr_str);<br=
>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_info(dev, &quot;got MAC address from EEPR=
OM: %s\n&quot;, ethaddr_str);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_set_param(dev, &quot;ethaddr&quot;, ethad=
dr_str);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (is_valid_ether_addr(ethaddr)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_info(dev, &quot;got MAC a=
ddress from EEPROM: %s\n&quot;, ethaddr_str);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_set_param(dev, &quot;etha=
ddr&quot;, ethaddr_str);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
 =A0 =A0 =A0 =A0}<br>
<br>
 =A0 =A0 =A0 =A0if (!eth_current) {<br>
<br>
Sascha<br>
<font color=3D"#888888"><br></font></blockquote><div><br></div><div>Sounds =
good :)</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;"><font color=3D"#=
888888">
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
</font></blockquote></div><br>

--0015174c45a24ce78304a09fda5b--


--===============0435953739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0435953739==--
