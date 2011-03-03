Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yi0-f49.google.com ([209.85.218.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pv9bt-0007Y2-Fk
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 14:34:34 +0000
Received: by yic15 with SMTP id 15so411507yic.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 06:34:32 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FEC@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FC6@SRV-VS06.TELEVIC.COM>
	<20110303123324.GK29521@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FE1@SRV-VS06.TELEVIC.COM>
	<20110303141338.GR29521@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FEC@SRV-VS06.TELEVIC.COM>
Date: Thu, 3 Mar 2011 09:34:31 -0500
Message-ID: <AANLkTinJpMWv7kyH+smwJuJuR4OBG9ow1mZEWTTBUsDi@mail.gmail.com>
From: Jon Ringle <jon@ringle.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1451109943=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: bootargs
To: Vanalme Filip <F.Vanalme@televic.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============1451109943==
Content-Type: multipart/alternative; boundary=001485f779147d2b4e049d94edb6

--001485f779147d2b4e049d94edb6
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 3, 2011 at 9:23 AM, Vanalme Filip <F.Vanalme@televic.com> wrote:

> Kernel panic - not syncing: VFS: Unable to mount root fs on
> unknown-block(2,0)
>

Do you have CONFIG_MTD_BLOCK?

--001485f779147d2b4e049d94edb6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Thu, Mar 3, 2011 at 9:23 AM, Vanalme Filip <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:F.Vanalme@televic.com">F.Vanalme@tele=
vic.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im">Kernel panic - not syncing: VFS: Unable to mount root fs =
on unknown-block(2,0)</div></blockquote></div><div><br></div><div>Do you ha=
ve CONFIG_MTD_BLOCK?</div>

--001485f779147d2b4e049d94edb6--


--===============1451109943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1451109943==--
