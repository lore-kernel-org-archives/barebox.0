Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLX1k-0006Qg-RG
	for barebox@lists.infradead.org; Sun, 15 May 2011 08:50:17 +0000
Received: by gyh20 with SMTP id 20so1492298gyh.36
	for <barebox@lists.infradead.org>; Sun, 15 May 2011 01:50:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <874o4xj6k0.fsf@macbook.be.48ers.dk>
References: <04EB6ACBB90C8844892BE0B9828F13C8018734BA036D@SRVSBS.airtag.local>
	<20110513172252.GZ30963@pengutronix.de>
	<87d3jlkbb0.fsf@macbook.be.48ers.dk>
	<20110514171607.GA30963@pengutronix.de>
	<874o4xj6k0.fsf@macbook.be.48ers.dk>
Date: Sun, 15 May 2011 14:50:15 +0600
Message-ID: <BANLkTimrubBcnEFd1Yv88_ShDc93bLMT=A@mail.gmail.com>
From: Alexey Galakhov <agalakhov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1808558240=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: crc32 command
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============1808558240==
Content-Type: multipart/alternative; boundary=000e0cd6ab4caf6a4304a34ca066

--000e0cd6ab4caf6a4304a34ca066
Content-Type: text/plain; charset=ISO-8859-1

>  Sascha> md5sum would be very useful. Would it add much to the binary
> space?
>

Since there are already digest algorithms in lib/, the implementation will
be just couple of lines of the code. It will be as large as lib/ digests
are.

I'd like to write the code if nobody else do.

--
Alex

--000e0cd6ab4caf6a4304a34ca066
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">=A0Sascha&gt=
; md5sum would be very useful. Would it add much to the binary space?<br></=
blockquote>
<div><br>Since there are already digest algorithms in lib/, the implementat=
ion will be just couple of lines of the code. It will be as large as lib/ d=
igests are.<br><br>I&#39;d like to write the code if nobody else do.<br>
<br>--<br>Alex <br></div></div>

--000e0cd6ab4caf6a4304a34ca066--


--===============1808558240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1808558240==--
