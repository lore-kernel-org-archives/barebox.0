Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoI4-0006mU-Iy
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:18:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:30 +0100
Message-Id: <20181214141730.26181-24-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/23] ARM: omap: am33xx_defconfig: Enable more boards and
 rename
To: Barebox List <barebox@lists.infradead.org>

Enable more boards in am33xx_defconfig. Since this now also supports
omap3 and am35xx boards rename it to omap_defconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/{am335x_defconfig => omap_defconfig} | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)
 rename arch/arm/configs/{am335x_defconfig => omap_defconfig} (96%)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/omap_defconfig
similarity index 96%
rename from arch/arm/configs/am335x_defconfig
rename to arch/arm/configs/omap_defconfig
index 09dde908a3..e41757b919 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -4,14 +4,16 @@ CONFIG_BAREBOX_UPDATE_AM33XX_NAND=y
 CONFIG_BAREBOX_UPDATE_AM33XX_EMMC=y
 CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_AFI_GF=y
+CONFIG_MACH_BEAGLE=y
 CONFIG_MACH_BEAGLEBONE=y
 CONFIG_MACH_PHYTEC_SOM_AM335X=y
+CONFIG_MACH_VSCOM_BALTOS=y
+CONFIG_MACH_WAGO_PFC_AM35XX=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x0
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
@@ -98,6 +100,7 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_CPSW=y
+CONFIG_DRIVER_NET_DAVINCI_EMAC=y
 CONFIG_MICREL_PHY=y
 CONFIG_SMSC_PHY=y
 CONFIG_NET_USB=y
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
