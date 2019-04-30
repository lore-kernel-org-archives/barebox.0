Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLU43-0007Cg-7J
 for barebox@lists.infradead.org; Tue, 30 Apr 2019 14:49:00 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1hLU41-00087I-6d
 for barebox@lists.infradead.org; Tue, 30 Apr 2019 16:48:57 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 30 Apr 2019 16:48:57 +0200
Message-Id: <20190430144857.15151-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: zii-imx8mq-dev: select ZII_COMMON
To: barebox@lists.infradead.org

The RDU3 shares some of the board fixups with the other Zii boards.
For those to work ZII_COMMON needs to be enabled.

Fixes: d76ba38a1605 (ARM: zii-common: reuse i210 config check for RDU3)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c4e7500e8fda..71d37cee9069 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -454,6 +454,7 @@ config MACH_ZII_IMX8MQ_DEV
 	select FIRMWARE_IMX8MQ_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
+	select MACH_ZII_COMMON
 
 config MACH_ZII_VF610_DEV
 	bool "ZII VF610 Dev Family"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
