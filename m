Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m020-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxK1X-00026M-0l
 for barebox@lists.infradead.org; Tue, 14 Feb 2012 15:10:31 +0000
Received: by lbon10 with SMTP id n10so3942852lbo.36
 for <barebox@lists.infradead.org>; Tue, 14 Feb 2012 07:10:28 -0800 (PST)
MIME-Version: 1.0
From: Igor Trevisan <igt1972@gmail.com>
Date: Tue, 14 Feb 2012 16:10:08 +0100
Message-ID: <CALQ+5adUP4qyf8+82s2NK6R3LbvjteuE-bkQ0iUdMG7X2LtxFQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: iMX27 clock settings
To: barebox@lists.infradead.org

Hi,

I'm working on a custom board based on iMX27L. Initially I worked with Redb=
oot
as Linux bootloader but now, I'm happily working with Barebox (2012.01.0)
having replaced Redboot with it.

Everithing is fine (thanks to the guys in the list for helping me!) but...
I noticed that my Linux apps run more slowly within my system if it's
started by Barebox
then if it's started by Redbbot.
I think it's a matter of internal clocks settings.

I see that Redboot, for example, set:
        CSR=3D0x33F38107
while Barebox does:
	writel(0x33F30307 | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART, CSCR)
That brings to CSR=3D0x33F30307 at the end of the PLLs restart procedure.

Reading the Manual I can see that the differences between the two settings
mean having an arm_clk that is 2/3 and an AHB_clk that's the half.

Is there a particular reason for having these "slower configuration"?

I tried to change the lowlevel_init.S to force 0x33F38107 into CSCR
at startup but, after that change, my board starts, has time to write
somenthing on the
serial console:

"barebox 2012.01.0-svn11070-dirty1 (Feb 14 2012 - 11:10:39)

Board: Freescale i=FF"

and then restarts... continuously.

Can anybody help me to understand this and to make (if possible) my
system faster?
Thanks in advance,
Igor


-- =

"Don't find fault, find a remedy."
(Henry Ford)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
