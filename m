Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1deiUw-00014n-5p
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 13:55:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1deiUZ-0001PZ-Iz
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 15:54:47 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  7 Aug 2017 15:54:47 +0200
Message-Id: <20170807135447.11161-3-l.stach@pengutronix.de>
In-Reply-To: <20170807135447.11161-1-l.stach@pengutronix.de>
References: <20170807135447.11161-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: imx: ccmx53: select I2C
To: barebox@lists.infradead.org

The board file needs i2c support to enable a regulator.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 0d1b09034baa..06a6aeee43a4 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -253,6 +253,7 @@ config MACH_FREESCALE_MX51_PDK
 config MACH_CCMX53
 	bool "Digi ConnectCore i.MX53"
 	select ARCH_IMX53
+	select I2C
 	help
 	  Say Y here if you are using the Digi ConnectCore ccxmx53
 	  series SoM
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
