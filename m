Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dY8Py-0008DS-OP
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 10:10:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dY8Pd-0005pZ-1c
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 12:10:29 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 20 Jul 2017 12:10:26 +0200
Message-Id: <20170720101028.4289-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: imx: kindle: select ARM_LINUX
To: barebox@lists.infradead.org

The already selected ARM_BOARD_APPEND_ATAG depends on it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e55d47c6112d..1c9e33ffe58a 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -221,6 +221,7 @@ config MACH_KINDLE_MX50
 	select I2C_IMX
 	select MFD_MC13XXX
 	select ARM_BOARD_APPEND_ATAG
+	select ARM_LINUX
 	help
 	  Say Y here if you are using the fourth or fifth generation Amazon
 	  Kindle Model No. D01100 (Kindle Wi-Fi), D01200 (Kindle Touch) or
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
