Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZRc6a-00087e-2J
 for barebox@lists.infradead.org; Tue, 18 Aug 2015 08:18:49 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZRc6D-0005Cc-Nc
 for barebox@lists.infradead.org; Tue, 18 Aug 2015 10:18:25 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 18 Aug 2015 10:18:24 +0200
Message-Id: <1439885905-4214-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] video: vpl: depend on OFTREE
To: barebox@lists.infradead.org

VPL uses the of_graph bindings, which are only available if OFTREE
support is compiled in.

Also fix the drivers using VPL to depend on OFTREE.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index bb8bbb539481..5ecac4209696 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -13,6 +13,7 @@ config FRAMEBUFFER_CONSOLE
 	prompt "framebuffer console support"
 
 config VIDEO_VPL
+	depends on OFTREE
 	bool
 
 config DRIVER_VIDEO_ATMEL
@@ -122,6 +123,7 @@ config DRIVER_VIDEO_MTL017
 	select VIDEO_VPL
 	depends on I2C
 	depends on GPIOLIB
+	depends on OFTREE
 	help
 	  The MTL017 is a parallel to lvds video encoder chip found on the
 	  Efika MX Smartbook.
@@ -130,6 +132,7 @@ config DRIVER_VIDEO_SIMPLE_PANEL
 	bool "Simple panel support"
 	select VIDEO_VPL
 	depends on GPIOLIB
+	depends on OFTREE
 	help
 	  This enabled support for simple panels, i.e. panels which consist of
 	  a mode definition and enable gpios in the devicetree. Unlike the
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
