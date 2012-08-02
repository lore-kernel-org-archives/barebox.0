Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwsMq-0002Og-Eo
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 10:10:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SwsMn-0002wX-Tj
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 12:10:53 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1SwsMn-0003cc-Sm
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 12:10:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Aug 2012 12:10:11 +0200
Message-Id: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] OMAP nand
To: barebox@lists.infradead.org

The following series has some general OMAP nand cleanups and greatly
improves the nand performance. Also we add a possibility to autodetect
the NAND buswidth.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      mtd OMAP NAND: Fix dev_ready handling
      ARM OMAP gpmc nand: specify platform data in boards
      mtd OMAP NAND: Use prefetch engine
      mtd nand: implement buswidth detection
      mtd OMAP NAND: implement buswidth autodetection support

 arch/arm/boards/beagle/board.c              |    9 +-
 arch/arm/boards/pcm049/board.c              |   10 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c   |    9 +-
 arch/arm/mach-omap/devices-gpmc-nand.c      |   26 +---
 arch/arm/mach-omap/gpmc.c                   |   61 +++++++++
 arch/arm/mach-omap/include/mach/gpmc.h      |   16 ++-
 arch/arm/mach-omap/include/mach/gpmc_nand.h |   20 +--
 drivers/mtd/nand/nand_base.c                |   20 ++-
 drivers/mtd/nand/nand_omap_gpmc.c           |  177 +++++++++++++++++++++------
 include/linux/mtd/nand.h                    |    3 +
 10 files changed, 261 insertions(+), 90 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
