Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([185.138.26.202]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBl8c-0003ov-P4
 for barebox@lists.infradead.org; Thu, 26 Apr 2018 17:57:00 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu, 26 Apr 2018 17:56:44 +0000
Message-Id: <20180426175645.15105-1-akurz@blala.de>
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
Subject: [PATCH 1/2] ARM omap beagle xload_defconfig: do not load drivers from
 DT
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>

The first stage loader must run in SRAM and is limited in size.
Remove unused support to load drivers from DT at this stage and
save precious 9kB of code size.
Regenerating the defconfig removes CONFIG_TEXT_BASE.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/configs/omap3530_beagle_xload_defconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index d36aaf319..2105c0b9d 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -8,7 +8,6 @@ CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x0
 CONFIG_STACK_SIZE=0xc00
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_DUMMY=y
@@ -18,7 +17,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
-CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
@@ -36,7 +34,6 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 # CONFIG_MCI_WRITE is not set
 CONFIG_MCI_OMAP_HSMMC=y
-# CONFIG_PINCTRL is not set
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
