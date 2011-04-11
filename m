Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9BTb-0003Vn-5U
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 07:24:00 +0000
Received: by eyh6 with SMTP id 6so1749996eyh.36
	for <barebox@lists.infradead.org>; Mon, 11 Apr 2011 00:23:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110411023702.GA18925@game.jcrosoft.org>
References: <1302358087-9756-1-git-send-email-franck.jullien@gmail.com>
	<1302358087-9756-2-git-send-email-franck.jullien@gmail.com>
	<20110410040649.GA8392@game.jcrosoft.org>
	<BANLkTi=JnLBhDeYY_eXRtxb9b_3Z=2rS3A@mail.gmail.com>
	<20110410105159.GA18343@game.jcrosoft.org>
	<BANLkTi=D=yLy3iZ2ZQuVAwb3Q=UPnk0ZaA@mail.gmail.com>
	<20110411023702.GA18925@game.jcrosoft.org>
Date: Mon, 11 Apr 2011 09:23:56 +0200
Message-ID: <BANLkTikCKnn4uQfq6yqW1OdDEXt5b5BFCw@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0368644403=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] [v2] Nios2: Add Altera TSE MAC driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

--===============0368644403==
Content-Type: multipart/alternative; boundary=00504502ca1c5df64c04a09f757f

--00504502ca1c5df64c04a09f757f
Content-Type: text/plain; charset=ISO-8859-1

2011/4/11 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

> On 20:21 Sun 10 Apr     , Franck JULLIEN wrote:
> >    2011/4/10 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >
> >      >      > index 0000000..2687377
> >      >      > --- /dev/null
> >      >      > +
> >      >      > +static int tse_get_ethaddr(struct eth_device *edev,
> unsigned
> >      char *m)
> >      >      > +{
> >      >      > +     /* There is no eeprom */
> >      >      so return the content of the register no?
> >      >
> >      >    Well, the register is reseted to 0 when the MAC starts so there
> is
> >      no
> >      >    Ethernet address
> >      >    to get.
> >      >
> >      except this function is supposed to return the mac address of the
> device
> >      at
> >      any time so after a set of it it will not be true any more
> >
> >    If I implement the function I get a "eth@eth0: got MAC address from
> >    EEPROM: 00:00:00:00:00:00" at startup.
> >    That why I returned -1 as what I could find int at91_ether.c......
> >    Or, I could find something to return -1 as long as the MAC address
> hasn't
> >    been set.
> >
> I known this issue I re-write recently the at91_ether and the same on macb
> will post the patch soon
>
> It's fine the uperlayer will see that it's not a valid mac so this will
> generate a random one
> cf net/net.c IIRC
>
>
For me, it's a bit annoying  to get this message at startup.

Don't you really think I could have a flag in the private structure to check
if an address has been set and then return -1 or the address in the
tse_get_ethaddr function ?



> Best Regads,
> J.
>

--00504502ca1c5df64c04a09f757f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2011/4/11 Jean-Christophe PLAGNIOL-VILLA=
RD <span dir=3D"ltr">&lt;<a href=3D"mailto:plagnioj@jcrosoft.com">plagnioj@=
jcrosoft.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im">On 20:21 Sun 10 Apr =A0 =A0 , Franck JULLIEN wrote:<br>
&gt; =A0 =A02011/4/10 Jean-Christophe PLAGNIOL-VILLARD &lt;<a href=3D"mailt=
o:plagnioj@jcrosoft.com">plagnioj@jcrosoft.com</a>&gt;<br>
&gt;<br>
&gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; index 0000000..2687377<br>
&gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; --- /dev/null<br>
&gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; +<br>
&gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; +static int tse_get_ethaddr(struct eth=
_device *edev, unsigned<br>
&gt; =A0 =A0 =A0char *m)<br>
&gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; +{<br>
&gt; =A0 =A0 =A0&gt; =A0 =A0 =A0&gt; + =A0 =A0 /* There is no eeprom */<br>
&gt; =A0 =A0 =A0&gt; =A0 =A0 =A0so return the content of the register no?<b=
r>
&gt; =A0 =A0 =A0&gt;<br>
&gt; =A0 =A0 =A0&gt; =A0 =A0Well, the register is reseted to 0 when the MAC=
 starts so there is<br>
&gt; =A0 =A0 =A0no<br>
&gt; =A0 =A0 =A0&gt; =A0 =A0Ethernet address<br>
&gt; =A0 =A0 =A0&gt; =A0 =A0to get.<br>
&gt; =A0 =A0 =A0&gt;<br>
&gt; =A0 =A0 =A0except this function is supposed to return the mac address =
of the device<br>
&gt; =A0 =A0 =A0at<br>
&gt; =A0 =A0 =A0any time so after a set of it it will not be true any more<=
br>
&gt;<br>
&gt; =A0 =A0If I implement the function I get a &quot;eth@eth0: got MAC add=
ress from<br>
&gt; =A0 =A0EEPROM: 00:00:00:00:00:00&quot; at startup.<br>
&gt; =A0 =A0That why I returned -1 as what I could find int at91_ether.c...=
...<br>
&gt; =A0 =A0Or, I could find something to return -1 as long as the MAC addr=
ess hasn&#39;t<br>
&gt; =A0 =A0been set.<br>
&gt;<br>
</div>I known this issue I re-write recently the at91_ether and the same on=
 macb<br>
will post the patch soon<br>
<br>
It&#39;s fine the uperlayer will see that it&#39;s not a valid mac so this =
will<br>
generate a random one<br>
cf net/net.c IIRC<br>
<br></blockquote><div><br></div><div>For me, it&#39;s a bit annoying =A0to =
get this message at startup.</div><div><br></div><div>Don&#39;t you really =
think=A0I could have a flag in the private structure to check</div><div>if =
an address has been set=A0and then return -1 or the address in the=A0</div>
<div>tse_get_ethaddr function ?</div><div><br></div><div>=A0</div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex;">
Best Regads,<br>
<font color=3D"#888888">J.<br>
</font></blockquote></div><br>

--00504502ca1c5df64c04a09f757f--


--===============0368644403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0368644403==--
