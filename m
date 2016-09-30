Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpvBA-0002DF-3o
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 10:36:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bpvAm-0004az-86
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 12:36:08 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Sep 2016 12:36:00 +0200
Message-Id: <20160930103607.15791-3-l.stach@pengutronix.de>
In-Reply-To: <20160930103607.15791-1-l.stach@pengutronix.de>
References: <20160930103607.15791-1-l.stach@pengutronix.de>
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
Subject: [PATCH 03/10] video: tc358767: depend on EDID helpers
To: barebox@lists.infradead.org

The eDP part need to be able to read the panel EDID.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 2457bb9e45f9..8f31f5af745e 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -130,6 +130,7 @@ config DRIVER_VIDEO_MTL017
 config DRIVER_VIDEO_TC358767
 	bool "TC358767A Display Port encoder"
 	select VIDEO_VPL
+	depends on DRIVER_VIDEO_EDID
 	depends on I2C
 	depends on OFTREE
 	help
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
