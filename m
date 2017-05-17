Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAw1B-0002pm-MN
 for barebox@lists.infradead.org; Wed, 17 May 2017 10:17:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dAw0n-0004oV-MP
 for barebox@lists.infradead.org; Wed, 17 May 2017 12:16:57 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 17 May 2017 12:16:56 +0200
Message-Id: <20170517101656.31717-2-l.stach@pengutronix.de>
In-Reply-To: <20170517101656.31717-1-l.stach@pengutronix.de>
References: <20170517101656.31717-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] video: select OFTREE from DRIVER_VIDEO_IMX_IPUV3
To: barebox@lists.infradead.org

DRIVER_VIDEO_IMX_IPUV3 selects VIDEO_VPL, which has a hard dependency
on OFTREE, so it is required to select this one, too.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/imx-ipu-v3/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/imx-ipu-v3/Kconfig b/drivers/video/imx-ipu-v3/Kconfig
index d04123731434..55aeac941550 100644
--- a/drivers/video/imx-ipu-v3/Kconfig
+++ b/drivers/video/imx-ipu-v3/Kconfig
@@ -2,6 +2,7 @@ config DRIVER_VIDEO_IMX_IPUV3
 	bool "i.MX IPUv3 driver"
 	depends on ARCH_IMX
 	select VIDEO_VPL
+	select OFTREE
 	help
 	  Support the IPUv3 found on Freescale i.MX51/53/6 SoCs
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
