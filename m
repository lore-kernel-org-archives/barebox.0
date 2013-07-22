Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1CrQ-0003X2-Cu
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 09:56:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V1Cr1-0004pC-7m
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 11:56:31 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1V1Cr1-0002Km-6N
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 11:56:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 11:56:19 +0200
Message-Id: <1374486983-5263-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] some minor image size decrease
To: barebox@lists.infradead.org


The following decreases the image size a bit, mainly to make the pcm049 xload
image fit into SRAM when the mtd updates I'm about to post are merged.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      mtd: nand: omap: do not set write callback if mtd write is disabled
      block: shortcut writebuffer_flush if writing is disabled
      ARM: omap4: Use writel where appropriate
      ARM: omap4: pcm049: register devices only when support is enabled

 arch/arm/boards/pcm049/board.c    |   6 +-
 arch/arm/mach-omap/omap4_clock.c  | 176 +++++++++++++++++++-------------------
 common/block.c                    |   3 +
 drivers/mtd/nand/nand_omap_gpmc.c |   3 +-
 include/printk.h                  |   4 +-
 5 files changed, 99 insertions(+), 93 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
