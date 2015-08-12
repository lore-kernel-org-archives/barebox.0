Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZPRgg-00041R-SL
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 08:47:08 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZPRgL-0000x6-AD
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 10:46:45 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 12 Aug 2015 10:46:42 +0200
Message-Id: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/4] gpmc: depend on MTD
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Fixes:
drivers/built-in.o: In function `gpmc_probe':
:(.text.gpmc_probe+0x164): undefined reference to `of_get_nand_bus_width'

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/bus/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 202df59762e8..61f9064f5d3a 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -4,6 +4,7 @@ config BUS_OMAP_GPMC
 	depends on ARCH_OMAP
 	depends on OFDEVICE
 	depends on OMAP_GPMC
+	depends on MTD
 	bool "TI OMAP/AM33xx GPMC support"
 
 config IMX_WEIM
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
