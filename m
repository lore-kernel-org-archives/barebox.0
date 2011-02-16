Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplsz-0001nI-8n
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:13:59 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1Pplsp-0007HF-TA
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 19:13:47 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1Pplsp-0001xS-Rk
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 19:13:47 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:25 +0100
Message-Id: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] Booting from NAND for the mini2440 platform
To: barebox@lists.infradead.org

This patch series brings in NAND boot support for the mini2440 platform and
also does some cleanups (and also fixes some typos).

Testers are welcome, as I only have a mini2440 board with HY57V561620 SDRAM
devices. I added some documentation (thanks to Marek for info how it works
with DFU) about the board itself and how to bring in barebox. Hope it helps
others to enjoy barebox on mini2440.

This is revision 2 of my patch series as the first one misses some important
changes. For example: Did someone noticed that the NAND controller support
for S3C2440 is currently broken? The NAND controller seems mostly the same than
the one found on S3C2410. But it isn't. At least the ECC handlings needs some
adaptions. Be warned: Don't use the NAND support from older barebox for any
S3C2440 based card. It clobbers your OOB.
So, maybe at least the "MACH-S3C2440: Fix NAND controller for this CPU" patch
is also a candidate for master as it fixes an ugly bug.

While barebox with this patch set applied comes up on my HY57V561620 SDRAM based
mini2440, Marek reports it cannot boot his MT48LC16M16 SDRAM based mini2440.
Anybody here with an idea why? Both SDRAM devices seems similar. Also in their
timing.

Comments are welcome.

Regards,
Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
