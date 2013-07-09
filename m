Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwUdV-0003i0-Dc
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:55:06 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UwUd9-0008NX-2C
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 11:54:43 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UwUd9-0004Lq-11
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 11:54:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jul 2013 11:54:36 +0200
Message-Id: <1373363682-24449-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] i.MX external nand boot
To: barebox@lists.infradead.org


The following gets rid of several ifdefs in the i.MX external
nand boot code. Also we have to revert the pcm038 conversion
to multiimage support for now as it turned out to be incompatible
with external nand boot mode. This is fixable, but for now to
get the master branch working revert it.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      Revert "ARM: i.MX27 pcm038: switch to multi image"
      ARM: i.MX: External Nand boot: make 2k support nonoptional
      ARM: i.MX: External Nand boot: move pagesize detection into SoC specific code
      ARM: i.MX: External Nand boot: remove debug command
      ARM: i.MX: External Nand boot: remove ifdefs
      ARM: i.MX: External Nand boot: remove ifdefs around SoC functions

 arch/arm/boards/pcm038/lowlevel.c      |   4 +-
 arch/arm/mach-imx/Kconfig              |  17 ----
 arch/arm/mach-imx/external-nand-boot.c | 171 ++++++++++++---------------------
 images/Makefile.imx                    |   5 -
 4 files changed, 61 insertions(+), 136 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
