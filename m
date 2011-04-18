Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QBt1B-0006PV-Hx
	for barebox@lists.infradead.org; Mon, 18 Apr 2011 18:17:50 +0000
Received: by ewy3 with SMTP id 3so1685152ewy.36
	for <barebox@lists.infradead.org>; Mon, 18 Apr 2011 11:17:47 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 18 Apr 2011 12:17:47 -0600
Message-ID: <BANLkTi=FxqCsR1vY_p_i-XVB8g-niciODA@mail.gmail.com>
From: Marko Milutinovic <markomilutin@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1519746776=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: New MACH Addition
To: barebox@lists.infradead.org

--===============1519746776==
Content-Type: multipart/alternative; boundary=0016e65aef329bc6d604a13568f5

--0016e65aef329bc6d604a13568f5
Content-Type: text/plain; charset=UTF-8

Hello,

I recently ported barebox to a platform using an old AT91 chip (at91m55800a,
ARM7TDMI core). There is already a MACH_AT91 folder but this chip is
sufficiently different that I just made a new folder MACH_AT91_legacy. This
was just a test project for me to get familiar with using barebox.

I'm just wondering if there is any value in me merging in the code for this?
I realize it's a pretty old chipset, but I'm finding barebox very useful and
would like to contribute to it.

Thanks,
Marko

--0016e65aef329bc6d604a13568f5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,<div><br>I recently ported barebox to a platform using an old AT91 ch=
ip (at91m55800a, ARM7TDMI core). There is already a MACH_AT91 folder but th=
is chip is sufficiently different that I just made a new folder MACH_AT91_l=
egacy. This was just a test project for me to get familiar with using bareb=
ox.=C2=A0</div>
<div><br></div><div>I&#39;m just wondering if there is any value in me merg=
ing in the code for this? I realize it&#39;s a pretty old chipset, but I&#3=
9;m finding barebox very useful and would like to contribute to it.=C2=A0</=
div>
<div><br></div><div>Thanks,</div><div>Marko</div>

--0016e65aef329bc6d604a13568f5--


--===============1519746776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1519746776==--
