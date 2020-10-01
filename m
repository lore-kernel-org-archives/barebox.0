Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kO12M-000071-9f
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 16:02:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kO12J-0002jS-Bb
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 18:02:27 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kO12J-0001Ag-3I
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 18:02:27 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu,  1 Oct 2020 18:02:25 +0200
Message-Id: <20201001160225.4447-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] ARM: phytec-som-imx6: fix build dependency
To: barebox@lists.infradead.org

Enable i2c support since the board code configures the i2c connected
PMIC.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 2e8d2bd56c..a67e59fd4f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -339,6 +339,8 @@ config MACH_PHYTEC_SOM_IMX6
         bool "Phytec phyCARD-i.MX6 and phyFLEX-i.MX6"
         select ARCH_IMX6
 	select ARCH_IMX6UL
+	select I2C
+	select I2C_IMX
 
 config MACH_PROTONIC_IMX6
 	bool "Protonic-Holland i.MX6 based boards"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
