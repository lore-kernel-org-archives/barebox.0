Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ia0-x236.google.com ([2607:f8b0:4001:c02::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFv62-0007Wj-PF
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 23:28:35 +0000
Received: by mail-ia0-f182.google.com with SMTP id b35so1502005iac.27
 for <barebox@lists.infradead.org>; Wed, 13 Mar 2013 16:28:33 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 13 Mar 2013 16:28:33 -0700
Message-ID: <CAM7q1LnK0K5btk7frN7ZC0=VtfX-jsvVjgEuftnDPQKi3ffbcA@mail.gmail.com>
From: Jeff Horn <jeff@everlook.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7211988486429723145=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Loading kernel from SPI NOR
To: barebox@lists.infradead.org

--===============7211988486429723145==
Content-Type: multipart/alternative; boundary=e89a8f2343ebbbf75404d7d6c3fd

--e89a8f2343ebbbf75404d7d6c3fd
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have a custom board based on the i.MX53.  We are using barebox 2012.05.0
and booting the Freescale 2.6.35.3 kernel.  Our board has SPI NOR (m25p32)
and I saw there is a driver in a more recent barebox.  I pulled 2013.01.0
and added our board files but I can't seem to get the kernel to load.  I
used the uimage tool and the -i option reported back that it can read the
kernel and the -v option reported ok.  When I try and boot I see
arch_number and then nothing.

I'm continuing to dig in to see what I can find.  Any pointers to where I
can look is much appreciated.

Thanks,
Jeff

--e89a8f2343ebbbf75404d7d6c3fd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:12.8=
00000190734863px">Hi,</span><div style=3D"font-family:arial,sans-serif;font=
-size:12.800000190734863px"><br></div><div style=3D"font-family:arial,sans-=
serif;font-size:12.800000190734863px">
I have a custom board based on the i.MX53. =A0We are using barebox 2012.05.=
0 and booting the Freescale 2.6.35.3 kernel. =A0Our board has SPI NOR (m25p=
32) and I saw there is a driver in a more recent barebox. =A0I pulled 2013.=
01.0 and added our board files but I can&#39;t seem to get the kernel to lo=
ad. =A0I used the uimage tool and the -i option reported back that it can r=
ead the kernel and the -v option reported ok. =A0When I try and boot I see =
arch_number and then nothing. =A0</div>
<div style=3D"font-family:arial,sans-serif;font-size:12.800000190734863px">=
<br></div><div style=3D"font-family:arial,sans-serif;font-size:12.800000190=
734863px">I&#39;m continuing to dig in to see what I can find. =A0Any point=
ers to where I can look is much appreciated.</div>
<div style=3D"font-family:arial,sans-serif;font-size:12.800000190734863px">=
<br></div><div style=3D"font-family:arial,sans-serif;font-size:12.800000190=
734863px">Thanks,</div><div style=3D"font-family:arial,sans-serif;font-size=
:12.800000190734863px">
Jeff</div></div>

--e89a8f2343ebbbf75404d7d6c3fd--


--===============7211988486429723145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7211988486429723145==--
