Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OoZ4c-0005Cf-O4
	for barebox@lists.infradead.org; Thu, 26 Aug 2010 09:48:44 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <mkl@pengutronix.de>) id 1OoZ4b-0008NT-1E
	for barebox@lists.infradead.org; Thu, 26 Aug 2010 11:48:41 +0200
Resent-To: barebox mailing list <barebox@lists.infradead.org>
Resent-Message-Id: <4C76387B.2000209@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <4C761942.1020800@pengutronix.de>
References: <AANLkTimM6xAp48S98Ob1eRwks+AKa6OR++ufO30wZNFH@mail.gmail.com>
	<4C761942.1020800@pengutronix.de>
Date: Thu, 26 Aug 2010 14:39:54 +0530
Message-ID: <AANLkTi=A43fKt4=Rtv4cFGzJ3158EZZbXcU4ZJyaQfe_@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1228458808=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox and setenv
To: Marc Kleine-Budde <mkl@pengutronix.de>

--===============1228458808==
Content-Type: multipart/alternative; boundary=0016e659f49c872cc8048eb65c4a

--0016e659f49c872cc8048eb65c4a
Content-Type: text/plain; charset=ISO-8859-1

Hi Marc

My board is at91sam9263. I am fully on Nand flash. Before i fully embark
onto barebox, may i have a few hints from you?

1. Can i do away with initial at91bootstrap.bin?
2. Using file jffs2 on Nand which takes at least 10 sec to mount, do you
suggest any substitute that barebox supports?
3. How stable is barebox now?

warm regards

Nataraj

On Thu, Aug 26, 2010 at 1:05 PM, Marc Kleine-Budde <mkl@pengutronix.de>wrote:

> Nataraj S Narayan wrote:
> > Hi
> >
> > How do I  "setenv bootargs mem=64M console=ttyS0,115200
> root=/dev/mtdblock0
> > rw rootfstype=jffs2" in barebox?
> >
> > export seems not to work for me.
>
> the barebox shell is "sh" like, so use
>
> bootargs="mem=64M console=ttyS0,115200 root=/dev/mtdblock0 rw
> rootfstype=jffs2"
>
> BTW: barebox comes with a default environment for all board. Adopt it to
> your needs.
>
> cheers, Marc
>
> --
> Pengutronix e.K.                  | Marc Kleine-Budde           |
> Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |
>
>

--0016e659f49c872cc8048eb65c4a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Marc<div><br></div><div>My board is at91sam9263. I am fully on Nand flas=
h. Before i fully embark onto barebox, may i have a few hints from you?</di=
v><div><br></div><div>1. Can i do away with initial=A0at91bootstrap.bin?</d=
iv>
<div>2. Using file jffs2 on Nand which takes at least 10 sec to mount, do y=
ou suggest any substitute that barebox supports?</div><div>3. How stable is=
 barebox now?=A0</div><div><br></div><div>warm regards</div><div><br></div>
<div>Nataraj<br><br><div class=3D"gmail_quote">On Thu, Aug 26, 2010 at 1:05=
 PM, Marc Kleine-Budde <span dir=3D"ltr">&lt;<a href=3D"mailto:mkl@pengutro=
nix.de">mkl@pengutronix.de</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex;">
<div class=3D"im">Nataraj S Narayan wrote:<br>
&gt; Hi<br>
&gt;<br>
&gt; How do I =A0&quot;setenv bootargs mem=3D64M console=3DttyS0,115200 roo=
t=3D/dev/mtdblock0<br>
&gt; rw rootfstype=3Djffs2&quot; in barebox?<br>
&gt;<br>
&gt; export seems not to work for me.<br>
<br>
</div>the barebox shell is &quot;sh&quot; like, so use<br>
<div class=3D"im"><br>
bootargs=3D&quot;mem=3D64M console=3DttyS0,115200 root=3D/dev/mtdblock0 rw =
rootfstype=3Djffs2&quot;<br>
<br>
</div>BTW: barebox comes with a default environment for all board. Adopt it=
 to<br>
your needs.<br>
<br>
cheers, Marc<br>
<font color=3D"#888888"><br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| Marc Kleine-Budde =A0=
 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0| Phone: +49-231-2826-924 =A0 =A0=
 |<br>
Vertretung West/Dortmund =A0 =A0 =A0 =A0 =A0| Fax: =A0 +49-5121-206917-5555=
 |<br>
Amtsgericht Hildesheim, HRA 2686 =A0| <a href=3D"http://www.pengutronix.de"=
 target=3D"_blank">http://www.pengutronix.de</a> =A0 |<br>
<br>
</font></blockquote></div><br></div>

--0016e659f49c872cc8048eb65c4a--


--===============1228458808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1228458808==--
