Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kndaD-00086S-1j
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 08:15:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2020 09:15:17 +0100
Message-Id: <20201211081517.6050-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: am335x: Use xz compression for MLO
To: Barebox List <barebox@lists.infradead.org>

the binary built with am335x_mlo_defconfig has grown too big over time.
Use xz compression to fit the image into initial SRAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_mlo_defconfig | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index efe9911050..51d238db3e 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -8,6 +8,7 @@ CONFIG_MACH_BEAGLEBONE=y
 CONFIG_MACH_PHYTEC_SOM_AM335X=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_MEMINFO is not set
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
@@ -26,11 +27,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-# CONFIG_NAND_INFO is not set
-# CONFIG_NAND_BBT is not set
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MCI=y
 # CONFIG_MCI_WRITE is not set
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
