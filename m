Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Um7oh-0002RC-SL
 for barebox@lists.infradead.org; Mon, 10 Jun 2013 19:31:48 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 10 Jun 2013 21:31:20 +0200
Message-Id: <1370892680-13254-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] arm: omap: am33xx: set up SPI devices
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/am33xx-devices.h | 17 +++++++++++++++++
 arch/arm/mach-omap/include/mach/am33xx-silicon.h |  4 ++++
 drivers/spi/Kconfig                              |  2 +-
 3 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/include/mach/am33xx-devices.h b/arch/arm/mach-omap/include/mach/am33xx-devices.h
index fe9fba9..cea4504 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-devices.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-devices.h
@@ -7,6 +7,7 @@
 #include <mach/devices.h>
 #include <mach/omap_hsmmc.h>
 #include <mach/cpsw.h>
+#include <mach/omap_hsmmc.h>
 
 /* the device numbering is the same as in the TRM memory map (SPRUH73G) */
 
@@ -37,4 +38,20 @@ static inline struct device_d *am33xx_add_cpsw(struct cpsw_platform_data *cpsw_d
 			AM335X_CPSW_BASE, SZ_32K, IORESOURCE_MEM, cpsw_data);
 }
 
+static inline struct device_d *am33xx_add_spi(int id, resource_size_t start)
+{
+	return add_generic_device("omap3_spi", id, NULL, start + 0x100, SZ_4K - 0x100,
+				   IORESOURCE_MEM, NULL);
+}
+
+static inline struct device_d *am33xx_add_spi0(void)
+{
+	return am33xx_add_spi(0, AM33XX_MCSPI0_BASE);
+}
+
+static inline struct device_d *am33xx_add_spi1(void)
+{
+	return am33xx_add_spi(1, AM33XX_MCSPI1_BASE);
+}
+
 #endif /* __MACH_OMAP3_DEVICES_H */
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index 9edf4ca..59284af 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -49,6 +49,10 @@
 #define AM33XX_MMC1_BASE		(AM33XX_L4_PER_BASE + 0x1D8000)
 #define AM33XX_MMCHS2_BASE		0x47810000
 
+/* SPI */
+#define AM33XX_MCSPI0_BASE		(AM33XX_L4_PER_BASE + 0x30000)
+#define AM33XX_MCSPI1_BASE		(AM33XX_L4_PER_BASE + 0x1A0000)
+
 /* DTMTimer0 */
 #define AM33XX_DMTIMER0_BASE		(AM33XX_L4_WKUP_BASE + 0x205000)
 
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index f14e28f..c279c21 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -40,7 +40,7 @@ config DRIVER_SPI_MXS
 
 config DRIVER_SPI_OMAP3
 	bool "OMAP3 McSPI Master driver"
-	depends on ARCH_OMAP3
+	depends on ARCH_OMAP3 || ARCH_AM33XX
 
 endif
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
