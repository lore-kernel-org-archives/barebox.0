Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e40Li-0008VF-Dv
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 08:02:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1e40LK-0006gf-W5
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 10:01:46 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1e40LK-0004B8-Oz
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 10:01:46 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 16 Oct 2017 10:01:46 +0200
Message-Id: <20171016080146.16022-1-jbe@pengutronix.de>
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
Subject: [PATCH] OMAP_GPMC: this driver depends on MTD
To: barebox@lists.infradead.org

Otherwise it fails with:

drivers/bus/omap-gpmc.c:498: undefined reference to `of_get_nand_bus_width'

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/bus/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 202df5976..61f9064f5 100644
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
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
