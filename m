Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqVrP-0001m1-8r
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 20:23:56 +0000
Received: by lagr15 with SMTP id r15so749858lag.36
 for <barebox@lists.infradead.org>; Thu, 26 Jan 2012 12:23:52 -0800 (PST)
MIME-Version: 1.0
From: Igor <igt1972@gmail.com>
Date: Thu, 26 Jan 2012 21:23:32 +0100
Message-ID: <CALQ+5adUr7Sy2z-irN=1eeGGFPu=L9bqBMtmU7JtYJh_tK1NAg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5594758868327727163=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Booting linux on a custom iMX27 board
To: barebox@lists.infradead.org

--===============5594758868327727163==
Content-Type: multipart/alternative; boundary=f46d0407152f9beb6104b774283c

--f46d0407152f9beb6104b774283c
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I 'm trying to port Barebox (2012.01.0) and make it successfully booting
Linux
on a custom board based on iMX27.
I could successfully configure, compile and use Barebox on my MX27ADS board,
making it work both as a second stage bootloader (after Redboot)
and as the first stage bootloader (booting the system from flash).

I modified the sources to adapt the low level init functions to my HW
that has half the ram of the ev.board and a different flash
(a Spansion S29GLxxx, same size of the one in the eva board).
With my customized version of Barebox I can:
- boot Linux (zImage, 2.6.32.3) using Barebox as a second stage bootloader
(after Redboot)
- start from Flash as a first stage bootloader, correctly initializing the
system.

In the second case, indeed, the system seems to be fully working:
I can read and write the flash partitions, I can complete successfully
the ram test with "mtest", but... I cannot boot Linux!

I just get:
"uncompressing linux... done booting the kernel"
and then it's silence...

architecture_type is 846 (it's the one of the mx27ads).
It should be right  considering that I used both for the kernel and for the
bootloader
the configuration for imx27ads.

I also tryed to make it boot a more recent kernel version;
I compiled a 3.0.8 with early_printk anabled to get more info about
the initial crash/problem  but... Nothing!
I didn't get nothing after "... done booting the kernel" also with the 3.0.8
with low level debug and early_printk enabled.

What's the reason for the boot failure?
I'm desperately looking for new ideas and suggestions!

Thanks in advance for every possible hint,
Igor.


-- 
"Don't find fault, find a remedy."
(Henry Ford)

--f46d0407152f9beb6104b774283c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I &#39;m trying to port Barebox (2012.01.0) and make it successf=
ully booting Linux <br>on a custom board based on iMX27.<br>I could success=
fully configure, compile and use Barebox on my MX27ADS board,<br>making it =
work both as a second stage bootloader (after Redboot) <br>

and as the first stage bootloader (booting the system from flash).<br><br>I=
 modified the sources to adapt the low level init functions to my HW<br>tha=
t has half the ram of the ev.board and a different flash <br>(a Spansion S2=
9GLxxx, same size of the one in the eva board).<br>

With my customized version of Barebox I can:<br>- boot Linux (zImage, 2.6.3=
2.3) using Barebox as a second stage bootloader (after Redboot)<br>- start =
from Flash as a first stage bootloader, correctly initializing the system.<=
br>

<br>In the second case, indeed, the system seems to be fully working:<br>I =
can read and write the flash partitions, I can complete successfully<br>the=
 ram test with &quot;mtest&quot;, but... I cannot boot Linux!<br><br>I just=
 get:<br>

&quot;uncompressing linux... done booting the kernel&quot;<br>and then it&#=
39;s silence...<br><br>architecture_type is 846 (it&#39;s the one of the mx=
27ads).<br>It should be right=A0 considering that I used both for the kerne=
l and for the bootloader<br>

the configuration for imx27ads.<br><br>I also tryed to make it boot a more =
recent kernel version;<br>I compiled a 3.0.8 with early_printk anabled to g=
et more info about<br>the initial crash/problem=A0 but... Nothing!<br>I did=
n&#39;t get nothing after &quot;... done booting the kernel&quot; also with=
 the 3.0.8<br>

with low level debug and early_printk enabled. <br><br>What&#39;s the reaso=
n for the boot failure?<br>I&#39;m desperately looking for new ideas and su=
ggestions!<br><br>Thanks in advance for every possible hint,<br>Igor. =A0=
=A0=A0=A0=A0 <br>

<br clear=3D"all"><br>-- <br>&quot;Don&#39;t find fault, find a remedy.&quo=
t; <br>(Henry Ford)<br>

--f46d0407152f9beb6104b774283c--


--===============5594758868327727163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5594758868327727163==--
