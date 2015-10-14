Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmHoj-0005AN-3Y
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 08:53:50 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZmHoN-0005FH-Jn
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 10:53:27 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 14 Oct 2015 10:53:27 +0200
Message-Id: <1444812807-2331-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1444812807-2331-1-git-send-email-l.stach@pengutronix.de>
References: <1444812807-2331-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] video: simple-panel: depend on OFDEVICE
To: barebox@lists.infradead.org

Fixes:
In function `simple_panel_ioctl':
undefined reference to `of_get_display_timings'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index d31bdfe8f07a..eabd246d535a 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -130,7 +130,7 @@ config DRIVER_VIDEO_MTL017
 config DRIVER_VIDEO_SIMPLE_PANEL
 	bool "Simple panel support"
 	select VIDEO_VPL
-	depends on OFTREE
+	depends on OFTREE && OFDEVICE
 	help
 	  This enabled support for simple panels, i.e. panels which consist of
 	  a mode definition and enable gpios in the devicetree. Unlike the
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
