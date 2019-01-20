Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp48.i.mail.ru ([94.100.177.108])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glAS7-0002U2-GJ
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 10:35:45 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 13:35:26 +0300
Message-Id: <20190120103533.7146-3-shc_work@mail.ru>
In-Reply-To: <20190120103533.7146-1-shc_work@mail.ru>
References: <20190120103533.7146-1-shc_work@mail.ru>
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
Subject: [PATCH 03/10] ARM: omap: delete unused mach/am33xx-devices.h
To: barebox@lists.infradead.org

This removes the stale mach/am33xx-devices.h include as there is no user of it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-omap/include/mach/am33xx-devices.h | 80 ------------------------
 1 file changed, 80 deletions(-)
 delete mode 100644 arch/arm/mach-omap/include/mach/am33xx-devices.h

diff --git a/arch/arm/mach-omap/include/mach/am33xx-devices.h b/arch/arm/mach-omap/include/mach/am33xx-devices.h
deleted file mode 100644
index 4790071..0000000
--- a/arch/arm/mach-omap/include/mach/am33xx-devices.h
+++ /dev/null
@@ -1,80 +0,0 @@
-#ifndef __MACH_OMAP3_DEVICES_H
-#define __MACH_OMAP3_DEVICES_H
-
-#include <driver.h>
-#include <linux/sizes.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/devices.h>
-#include <mach/omap_hsmmc.h>
-#include <mach/cpsw.h>
-
-/* the device numbering is the same as in the TRM memory map (SPRUH73G) */
-
-static inline struct device_d *am33xx_add_uart0(void)
-{
-	return omap_add_uart(0, AM33XX_UART0_BASE);
-}
-
-static inline struct device_d *am33xx_add_uart1(void)
-{
-	return omap_add_uart(1, AM33XX_UART1_BASE);
-}
-
-static inline struct device_d *am33xx_add_uart2(void)
-{
-	return omap_add_uart(2, AM33XX_UART2_BASE);
-}
-
-static inline struct device_d *am33xx_add_mmc0(struct omap_hsmmc_platform_data *pdata)
-{
-	return add_generic_device("omap4-hsmmc", 0, NULL,
-			AM33XX_MMCHS0_BASE, SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device_d *am33xx_add_mmc1(struct omap_hsmmc_platform_data *pdata)
-{
-	return add_generic_device("omap4-hsmmc", 1, NULL,
-			AM33XX_MMC1_BASE, SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device_d *am33xx_add_cpsw(struct cpsw_platform_data *cpsw_data)
-{
-	return add_generic_device("cpsw", 0, NULL,
-			AM335X_CPSW_BASE, SZ_32K, IORESOURCE_MEM, cpsw_data);
-}
-
-static inline struct device_d *am33xx_add_spi(int id, resource_size_t start)
-{
-	return add_generic_device("omap4-spi", id, NULL, start, SZ_4K,
-				   IORESOURCE_MEM, NULL);
-}
-
-static inline struct device_d *am33xx_add_spi0(void)
-{
-	return am33xx_add_spi(0, AM33XX_MCSPI0_BASE);
-}
-
-static inline struct device_d *am33xx_add_spi1(void)
-{
-	return am33xx_add_spi(1, AM33XX_MCSPI1_BASE);
-}
-
-static inline struct device_d *am33xx_add_i2c0(void *pdata)
-{
-	return add_generic_device("i2c-am33xx", 0, NULL, AM33XX_I2C0_BASE,
-			SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device_d *am33xx_add_i2c1(void *pdata)
-{
-	return add_generic_device("i2c-am33xx", 1, NULL, AM33XX_I2C1_BASE,
-			SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-static inline struct device_d *am33xx_add_i2c2(void *pdata)
-{
-	return add_generic_device("i2c-am33xx", 2, NULL, AM33XX_I2C2_BASE,
-			SZ_4K, IORESOURCE_MEM, pdata);
-}
-
-#endif /* __MACH_OMAP3_DEVICES_H */
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
