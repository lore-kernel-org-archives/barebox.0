Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZPRgg-00041U-SJ
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 08:47:07 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZPRgL-0000x6-C6
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 10:46:45 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 12 Aug 2015 10:46:43 +0200
Message-Id: <1439369205-26787-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
References: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] video: MTL017: depend on I2C
To: barebox@lists.infradead.org

This driver uses I2C functions and isn't useful without them.

Fixes:
In function `mtl017_init':
drivers/video/mtl017.c:278: undefined reference to `i2c_bus'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index d7f5b0763705..812c540d71a2 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -119,6 +119,7 @@ comment "Video encoder chips"
 config DRIVER_VIDEO_MTL017
 	bool "MTL017 LVDS encoder"
 	select VIDEO_VPL
+	depends on I2C
 	help
 	  The MTL017 is a parallel to lvds video encoder chip found on the
 	  Efika MX Smartbook.
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
