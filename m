Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gx0-f177.google.com ([209.85.161.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ojw0q-0007Yb-Lc
	for barebox@lists.infradead.org; Fri, 13 Aug 2010 15:17:41 +0000
Received: by gxk27 with SMTP id 27so1215698gxk.36
	for <barebox@lists.infradead.org>; Fri, 13 Aug 2010 08:17:39 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 13 Aug 2010 20:47:38 +0530
Message-ID: <AANLkTin5C2PLPS26q5BjyBZC3Dt_aYCVWYifSNri8p+G@mail.gmail.com>
From: kuldeep ghan <ghankp@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0224621996=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: changes for reducing DDR size
To: barebox@lists.infradead.org

--===============0224621996==
Content-Type: multipart/alternative; boundary=000e0cd3429ab2d496048db5fb51

--000e0cd3429ab2d496048db5fb51
Content-Type: text/plain; charset=ISO-8859-1

Hi,
        I am using PCM038 based custom board with changes in Memory
configuration. I want to know what all changes i have to do in barebox
source if I am reducing the size of DDR to 64 MB.
I have two 32MB DDR chips interfaced on CSD0 and CSD1. I am able to boot the
board with changes in pcm038 and lowlevel_init.S. I see that both the DDRs
are initialized properly and able to write and read to DDR address space.
         Ping to command is failing with these changes.  And I am not sure
about the changes required for stack size and malloc size.

Thanks,
Ghan Kuldeep

--000e0cd3429ab2d496048db5fb51
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">Hi, <br>=A0=A0=A0=A0=A0=A0=A0 I am using PCM038 =
based custom board with changes in Memory configuration. I want to know wha=
t all changes i have to do in barebox source if I am reducing the size of D=
DR to 64 MB. <br>
I have two 32MB DDR chips interfaced on CSD0 and CSD1. I am able to boot th=
e board with changes in pcm038 and lowlevel_init.S. I see that both the DDR=
s are initialized properly and able to write and read to DDR address space.=
 <br>

=A0=A0=A0=A0=A0=A0=A0=A0 Ping to command is failing with these changes.=A0 =
And I am not sure about the changes required for stack size and malloc size=
.<br><br>Thanks,<br><font color=3D"#888888">Ghan Kuldeep<br><br>
</font></div><br>

--000e0cd3429ab2d496048db5fb51--


--===============0224621996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0224621996==--
