Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgaR2-0004kt-Jh
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:38:53 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <mgr@pengutronix.de>) id 1OgaQz-0007Q4-F4
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 11:38:49 +0200
Received: from mgr by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <mgr@pengutronix.de>) id 1OgaQz-0005De-EH
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 11:38:49 +0200
Date: Wed, 4 Aug 2010 11:38:49 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20100804093849.GA19882@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] beagle: add bootparams and architecture
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/omap/board-beagle.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index da59a93..5daad86 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -269,6 +269,8 @@ static int beagle_devices_init(void)
 	gpmc_generic_nand_devices_init(0, 16, 1);
 
 	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
 failed:
 	return ret;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
