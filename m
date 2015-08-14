Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQC2t-0002at-Bv
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 10:17:08 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZQC2X-0005zX-SA
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 12:16:45 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 14 Aug 2015 12:16:42 +0200
Message-Id: <1439547405-12578-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
References: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/5] video: mtl017: depend on GPIOLIB
To: barebox@lists.infradead.org

Fixes:
In file included from include/gpio.h:4:0,
                 from drivers/video/simple-panel.c:26:
fatal error: mach/gpio.h: No such file or directory

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 2f5069fb2640..9a520c586971 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -120,6 +120,7 @@ config DRIVER_VIDEO_MTL017
 	bool "MTL017 LVDS encoder"
 	select VIDEO_VPL
 	depends on I2C
+	depends on GPIOLIB
 	help
 	  The MTL017 is a parallel to lvds video encoder chip found on the
 	  Efika MX Smartbook.
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
