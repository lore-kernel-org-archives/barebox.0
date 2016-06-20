Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEvVV-0004Ff-Bj
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 09:28:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bEvV8-00086Z-MB
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 11:28:14 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Jun 2016 11:28:14 +0200
Message-Id: <1466414894-6643-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1466414894-6643-1-git-send-email-l.stach@pengutronix.de>
References: <1466414894-6643-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] aiodev: imx_thermal: depend on MACH_IMX6
To: barebox@lists.infradead.org

This driver uses private includes from the imx6 architecture.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/aiodev/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index 0ecf6f409232..1c5fabe01ad9 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -8,6 +8,7 @@ if AIODEV
 
 config IMX_THERMAL
        tristate "Temperature sensor driver for Freescale i.MX SoCs"
+       depends on ARCH_IMX6
        select MFD_SYSCON
        help
          Support for Temperature Monitor (TEMPMON) found on Freescale
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
