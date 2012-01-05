Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RijYR-0008BO-BB
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 09:24:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jan 2012 10:23:58 +0100
Message-Id: <1325755439-19534-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1325755439-19534-1-git-send-email-s.hauer@pengutronix.de>
References: <1325755439-19534-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] ARM omap beagle xload: update defconfig
To: barebox@lists.infradead.org

We don't need mtd write support for the xloader config

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/omap3530_beagle_xload_defconfig |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index 58a2309..1069670 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -20,14 +20,14 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
+# CONFIG_MTD_WRITE is not set
+# CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_WRITE is not set
 # CONFIG_NAND_ECC_SOFT is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 # CONFIG_NAND_INFO is not set
 # CONFIG_NAND_BBT is not set
-# CONFIG_NAND_READ_OOB is not set
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
