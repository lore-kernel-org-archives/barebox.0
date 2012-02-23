Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S0fT2-0002O0-3V
 for barebox@lists.infradead.org; Thu, 23 Feb 2012 20:40:44 +0000
Received: by eaai1 with SMTP id i1so735907eaa.36
 for <barebox@lists.infradead.org>; Thu, 23 Feb 2012 12:40:41 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20120223201348.GR3852@pengutronix.de>
References: <CAACwSTKshGv05PfJWJkFTKzhof2q+hjupdh=U3VH2Fbdc-6VBQ@mail.gmail.com>
 <20120221210127.GG3852@pengutronix.de>
 <CAACwSTJxLsZxwfp4=7bunemR3SV8QqqVKz7Ox-Fo-Jt_zCnnVA@mail.gmail.com>
 <20120223201348.GR3852@pengutronix.de>
Date: Thu, 23 Feb 2012 22:40:41 +0200
Message-ID: <CAACwSTLb5OkU5R_dUH5MVNP+UhVwvYZo8LK5Xo0sya2CeTgzaA@mail.gmail.com>
From: George Stefan <stefan.george87@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5399448353397562505=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: mx53 loco boot procedure
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============5399448353397562505==
Content-Type: multipart/alternative; boundary=047d7b343b0e51286504b9a7a89a

--047d7b343b0e51286504b9a7a89a
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

=CEn data de 23 februarie 2012, 22:13, Sascha Hauer
<s.hauer@pengutronix.de>a scris:

> Hi,
>
> Please do not top post.
>
> On Wed, Feb 22, 2012 at 11:22:37AM +0200, George Stefan wrote:
> > Hello,
> > How could i link barebox and zImage together?
> > Could you please give an example?
>
> I'm afraid there is no easy example for this.
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

Hi,
What i have done so far is take vmlinux.o and vmlinux.lds  and try to
"integrate"
them into barebox.lds.s.
Do you thing that this is the correct aproach?

George

--047d7b343b0e51286504b9a7a89a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">=CEn data de 23 februarie 2012, 22:13, S=
ascha Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de"=
>s.hauer@pengutronix.de</a>&gt;</span> a scris:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">
Hi,<br>
<br>
Please do not top post.<br>
<div class=3D"im"><br>
On Wed, Feb 22, 2012 at 11:22:37AM +0200, George Stefan wrote:<br>
&gt; Hello,<br>
&gt; How could i link barebox and zImage together?<br>
&gt; Could you please give an example?<br>
<br>
</div>I&#39;m afraid there is no easy example for this.<br>
<div><div></div><div class=3D"h5"><br>
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
</div></div></blockquote></div><br><div>Hi,</div><div>What i have done so f=
ar is take vmlinux.o and vmlinux.lds =A0and try to &quot;integrate&quot;=A0=
</div><div>them into barebox.lds.s.=A0</div><div>Do you thing that this is =
the correct aproach?=A0</div>
<div><br></div><div>George</div>

--047d7b343b0e51286504b9a7a89a--


--===============5399448353397562505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5399448353397562505==--
