Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQC2t-0002as-Bu
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 10:17:08 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZQC2X-0005zX-Pu
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 12:16:45 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 14 Aug 2015 12:16:41 +0200
Message-Id: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/5] video: simple-panel: depend on GPIOLIB
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
index 812c540d71a2..2f5069fb2640 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -127,6 +127,7 @@ config DRIVER_VIDEO_MTL017
 config DRIVER_VIDEO_SIMPLE_PANEL
 	bool "Simple panel support"
 	select VIDEO_VPL
+	depends on GPIOLIB
 	help
 	  This enabled support for simple panels, i.e. panels which consist of
 	  a mode definition and enable gpios in the devicetree. Unlike the
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
