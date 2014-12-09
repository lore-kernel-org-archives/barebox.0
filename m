Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyIcK-0003ZW-VC
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 11:06:11 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XyIby-0008IO-Ud
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 12:05:46 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  9 Dec 2014 12:05:46 +0100
Message-Id: <1418123146-13235-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
References: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 5/5] Revert "ARM: i.MX: Make NAND related Kconfig options
 depend on MTD"
To: barebox@lists.infradead.org

This reverts commit 4b17d73c7da2, as it is incomplete and partially
broken. ARCH_IMX_EXTERNAL_BOOT_NAND does not depend on MTD, it just uses
some defines from the mtd/nand header, but does not actually depend on MTD
being compiled in.

For the other two cases there is a more complete fix merged with commit
57b584d748d4 that also enables the needed MTD write support.

Fixes:
(MACH_TX25 && MACH_PCA100 && MACH_PCM038) selects ARCH_IMX_EXTERNAL_BOOT_NAND
which has unmet direct dependencies (ARCH_IMX && MTD)

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a931de921eef..9ac36e145349 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -102,13 +102,11 @@ endchoice
 
 config ARCH_IMX_EXTERNAL_BOOT_NAND
 	bool
-	depends on MTD
 	depends on ARCH_IMX25 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35
 	prompt "Support Starting barebox from NAND in external bootmode"
 
 config BAREBOX_UPDATE_IMX_EXTERNAL_NAND
 	bool
-	depends on MTD
 	depends on ARCH_IMX_EXTERNAL_BOOT_NAND
 	depends on BAREBOX_UPDATE
 	depends on MTD
@@ -117,7 +115,6 @@ config BAREBOX_UPDATE_IMX_EXTERNAL_NAND
 
 config BAREBOX_UPDATE_IMX6_NAND
 	bool
-	depends on MTD
 	depends on ARCH_IMX6
 	depends on BAREBOX_UPDATE
 	depends on MTD
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
