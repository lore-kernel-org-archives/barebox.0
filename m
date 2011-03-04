Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvQw6-0007RZ-Cf
	for barebox@lists.infradead.org; Fri, 04 Mar 2011 09:04:35 +0000
Received: by ewy23 with SMTP id 23so633166ewy.36
	for <barebox@lists.infradead.org>; Fri, 04 Mar 2011 01:04:32 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <AANLkTi=a2V+v6rOJXLmw6_6yysQBVobnqfR03VVn4P=g@mail.gmail.com>
References: <4d701d2f.9009d80a.2cd3.5e70@mx.google.com>
	<20110304084533.GD29521@pengutronix.de>
	<AANLkTi=a2V+v6rOJXLmw6_6yysQBVobnqfR03VVn4P=g@mail.gmail.com>
Date: Fri, 4 Mar 2011 10:04:31 +0100
Message-ID: <AANLkTi=w76oYk-avf+zVCW61tddnZ0L-GwjJtLbAg4we@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0230984092=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Fwd: [PATCH 00/54] New arch (NIOS2)
To: barebox <barebox@lists.infradead.org>

--===============0230984092==
Content-Type: multipart/alternative; boundary=0015174bf06c277c3c049da46f1b

--0015174bf06c277c3c049da46f1b
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: Franck JULLIEN <franck.jullien@gmail.com>
Date: 2011/3/4
Subject: Re: [PATCH 00/54] New arch (NIOS2)
To: Sascha Hauer <s.hauer@pengutronix.de>


2011/3/4 Sascha Hauer <s.hauer@pengutronix.de>

> Hi Franck,
>
> On Thu, Mar 03, 2011 at 11:58:14PM +0100, franck.jullien@gmail.com wrote:
> > From: Franck JULLIEN <franck.jullien@gmail.com>
> >
> > This is the base files of the Nios2 port. Almost everything is comming
> from u-boot.
> > When those files are acked, I'll post drivers and utility commands.
>
> Soo many patches ;). You can safely combine all these into two
> patches, one for the nios2 support and one for the generic board.
> The patches are only useful as a whole anyway, so no need to split
> them up that fine. You will hit the list limit, so give me some time
> to go to the moderator interface and and it through.
>
> I'm not through all patches, but some remarks here:
>
> There is some whitespace damage all around like spaces which should be
> tabs.


Is that a "Linux rule" ? Is there other ones ? (I always convert tabs to
whitespaces....).


> Also, please do not use direct pointer derefs to access registers.
> You should use readl/writel accessors for them.
>
>
Okay I will.


> Thanks for doing this work. Although I don't have a nios baord, I really
> appreciate extending barebox to more architectures.
>

Barebox is so much better than Uboot, you guys did a really good job.
Barebox
even helped my to understand some Linux concepts.


>
> Sascha
>
>
Hi Sasha,

I didn't how to split the patches so I splitted everything :) I'll fight
with git to revert my commits and do it again...

This port is working but it's going to be a long process including it in
barebox git because I don't have a lot of time
(my baby boy needs my time) and I'm not a git master at all, I'm just an
hardware guy playing with the kernel (why the
hell it is so complicated ? I think it is kind of a filter/test for
patchers. If you can't use git you can't send patches ;)).

Souldn't be less complicated if I had a separate branch to work on it ?


> --
>
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--0015174bf06c277c3c049da46f1b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">---------- Forwarded message ----------<=
br>From: <b class=3D"gmail_sendername">Franck JULLIEN</b> <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:franck.jullien@gmail.com">franck.jullien@gmail.com</=
a>&gt;</span><br>
Date: 2011/3/4<br>Subject: Re: [PATCH 00/54] New arch (NIOS2)<br>To: Sascha=
 Hauer &lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengutronix.de=
</a>&gt;<br><br><br><div>2011/3/4 Sascha Hauer <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:s.hauer@pengutronix.de" target=3D"_blank">s.hauer@pengutronix.d=
e</a>&gt;</span></div>
<div><div class=3D"gmail_quote"><div class=3D"im"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
Hi Franck,<br>
<div><br>
On Thu, Mar 03, 2011 at 11:58:14PM +0100, <a href=3D"mailto:franck.jullien@=
gmail.com" target=3D"_blank">franck.jullien@gmail.com</a> wrote:<br>
&gt; From: Franck JULLIEN &lt;<a href=3D"mailto:franck.jullien@gmail.com" t=
arget=3D"_blank">franck.jullien@gmail.com</a>&gt;<br>
&gt;<br>
&gt; This is the base files of the Nios2 port. Almost everything is comming=
 from u-boot.<br>
&gt; When those files are acked, I&#39;ll post drivers and utility commands=
.<br>
<br>
</div>Soo many patches ;). You can safely combine all these into two<br>
patches, one for the nios2 support and one for the generic board.<br>
The patches are only useful as a whole anyway, so no need to split<br>
them up that fine. You will hit the list limit, so give me some time<br>
to go to the moderator interface and and it through.<br>
<br>
I&#39;m not through all patches, but some remarks here:<br>
<br>
There is some whitespace damage all around like spaces which should be<br>
tabs.</blockquote><div><br></div></div><div>Is that a &quot;Linux rule&quot=
; ? Is there other ones ? (I always convert tabs to whitespaces....).</div>=
<div class=3D"im"><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

 Also, please do not use direct pointer derefs to access registers.<br>
You should use readl/writel accessors for them.<br>
<br></blockquote><div><br></div></div><div>Okay I will.</div><div class=3D"=
im"><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
Thanks for doing this work. Although I don&#39;t have a nios baord, I reall=
y<br>
appreciate extending barebox to more architectures.<br></blockquote><div><b=
r></div></div><div>Barebox is so much better than Uboot, you guys did a rea=
lly good job. Barebox</div><div>even helped my to understand some Linux con=
cepts.=A0</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
<br>
Sascha<br>
<font color=3D"#888888"><br></font></blockquote><div><br></div><div>Hi Sash=
a,<div><br></div><div>I didn&#39;t how to split the patches so I splitted e=
verything :) I&#39;ll fight with git to revert my commits and do it again..=
.</div>

<div><br></div><div>This port is working but it&#39;s going to be a long pr=
ocess including it in barebox git because I don&#39;t have a lot of time</d=
iv><div>(my baby boy needs my time) and I&#39;m not a git master at all, I&=
#39;m just an hardware guy playing with the kernel (why the=A0</div>

<div>hell it is so complicated ? I think it is kind=A0of a filter/test for =
patchers. If you can&#39;t use git you can&#39;t send patches ;)).</div><di=
v><br></div><div>Souldn&#39;t be less complicated if I had a separate branc=
h to work on it ?</div>

</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><font color=3D"#888888">
--<div class=3D"im"><br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0 =
=A0|<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-20=
6917-5555 |<br>
</div></font></blockquote></div><br></div>
</div><br>

--0015174bf06c277c3c049da46f1b--


--===============0230984092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0230984092==--
