Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tky4S-0001iY-Sx
 for barebox@lists.infradead.org; Tue, 18 Dec 2012 14:23:12 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 18 Dec 2012 15:22:33 +0100
Message-Id: <1355840561-11552-12-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1355840561-11552-1-git-send-email-jlu@pengutronix.de>
References: <1355840561-11552-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 11/19] ARM omap: Add device register convenience functions
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile                     |    2 +-
 arch/arm/mach-omap/include/mach/devices.h       |   13 +++++
 arch/arm/mach-omap/include/mach/omap3-devices.h |   54 ++++++++++++++++-
 arch/arm/mach-omap/include/mach/omap4-devices.h |   71 +++++++++++++++++++++++
 arch/arm/mach-omap/omap_devices.c               |   27 +++++++++
 5 files changed, 165 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-omap/include/mach/devices.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-devices.h
 create mode 100644 arch/arm/mach-omap/omap_devices.c

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 2ac7fb2..b7a5e4a 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -15,7 +15,7 @@
 # GNU General Public License for more details.
 #
 #
-obj-$(CONFIG_ARCH_OMAP) += syslib.o
+obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o
 pbl-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o auxcr.o
diff --git a/arch/arm/mach-omap/include/mach/devices.h b/arch/arm/mach-omap/include/mach/devices.h
new file mode 100644
index 0000000..9881604
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/devices.h
@@ -0,0 +1,13 @@
+#ifndef __MACH_OMAP_DEVICES_H
+#define __MACH_OMAP_DEVICES_H
+
+#include <mach/omap_hsmmc.h>
+
+struct device_d *omap_add_uart(int id, unsigned long base);
+
+struct device_d *omap_add_mmc(int id, unsigned long base,
+		struct omap_hsmmc_platform_data *pdata);
+
+struct device_d *omap_add_i2c(int id, unsigned long base, void *pdata);
+
+#endif /* __MACH_OMAP_DEVICES_H */
diff --git a/arch/arm/mach-omap/include/mach/omap3-devices.h b/arch/arm/mach-omap/include/mach/omap3-devices.h
index 8a6b324..dd6826a 100644
--- a/arch/arm/mach-omap/include/mach/omap3-devices.h
+++ b/arch/arm/mach-omap/include/mach/omap3-devices.h
@@ -1,7 +1,12 @@
+#ifndef __MACH_OMAP3_DEVICES_H
+#define __MACH_OMAP3_DEVICES_H
+
 #include <driver.h>
 #include <sizes.h>
-
+#include <mach/omap3-silicon.h>
+#include <mach/devices.h>
 #include <mach/mcspi.h>
+#include <mach/omap_hsmmc.h>
 
 /* the device numbering is the same as in the device tree */
 
@@ -30,3 +35,50 @@ static inline struct device_d *omap3_add_spi4(void)
 {
 	return omap3_add_spi(4, OMAP3_MCSPI4_BASE);
 }
+
+static inline struct device_d *omap3_add_uart1(void)
+{
+	return omap_add_uart(0, OMAP_UART1_BASE);
+}
+
+static inline struct device_d *omap3_add_uart2(void)
+{
+	return omap_add_uart(1, OMAP_UART2_BASE);
+}
+
+static inline struct device_d *omap3_add_uart3(void)
+{
+	return omap_add_uart(2, OMAP_UART3_BASE);
+}
+
+static inline struct device_d *omap3_add_mmc1(struct omap_hsmmc_platform_data *pdata)
+{
+	return omap_add_mmc(0, OMAP_MMC1_BASE + 0x100, pdata);
+}
+
+static inline struct device_d *omap3_add_mmc2(struct omap_hsmmc_platform_data *pdata)
+{
+	return omap_add_mmc(1, OMAP_MMC2_BASE + 0x100, pdata);
+}
+
+static inline struct device_d *omap3_add_mmc3(struct omap_hsmmc_platform_data *pdata)
+{
+	return omap_add_mmc(2, OMAP_MMC3_BASE + 0x100, pdata);
+}
+
+static inline struct device_d *omap3_add_i2c1(void *pdata)
+{
+	return omap_add_i2c(0, OMAP_I2C1_BASE, pdata);
+}
+
+static inline struct device_d *omap3_add_i2c2(void *pdata)
+{
+	return omap_add_i2c(1, OMAP_I2C2_BASE, pdata);
+}
+
+static inline struct device_d *omap3_add_i2c3(void *pdata)
+{
+	return omap_add_i2c(2, OMAP_I2C3_BASE, pdata);
+}
+
+#endif /* __MACH_OMAP3_DEVICES_H */
diff --git a/arch/arm/mach-omap/include/mach/omap4-devices.h b/arch/arm/mach-omap/include/mach/omap4-devices.h
new file mode 100644
index 0000000..448de68
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap4-devices.h
@@ -0,0 +1,71 @@
+#ifndef __MACH_OMAP4_DEVICES_H
+#define __MACH_OMAP4_DEVICES_H
+
+#include <driver.h>
+#include <sizes.h>
+#include <mach/devices.h>
+#include <mach/omap4-silicon.h>
+#include <mach/mcspi.h>
+#include <mach/omap_hsmmc.h>
+
+static inline struct device_d *omap44xx_add_uart1(void)
+{
+	return omap_add_uart(0, OMAP44XX_UART1_BASE);
+}
+
+static inline struct device_d *omap44xx_add_uart2(void)
+{
+	return omap_add_uart(1, OMAP44XX_UART2_BASE);
+}
+
+static inline struct device_d *omap44xx_add_uart3(void)
+{
+	return omap_add_uart(2, OMAP44XX_UART3_BASE);
+}
+
+static inline struct device_d *omap44xx_add_mmc1(struct omap_hsmmc_platform_data *pdata)
+{
+	return omap_add_mmc(0, OMAP44XX_MMC1_BASE, pdata);
+}
+
+static inline struct device_d *omap44xx_add_mmc2(struct omap_hsmmc_platform_data *pdata)
+{
+	return omap_add_mmc(1, OMAP44XX_MMC2_BASE, pdata);
+}
+
+static inline struct device_d *omap44xx_add_mmc3(struct omap_hsmmc_platform_data *pdata)
+{
+	return omap_add_mmc(2, OMAP44XX_MMC3_BASE, pdata);
+}
+
+static inline struct device_d *omap44xx_add_mmc4(struct omap_hsmmc_platform_data *pdata)
+{
+	return omap_add_mmc(3, OMAP44XX_MMC4_BASE, pdata);
+}
+
+static inline struct device_d *omap44xx_add_mmc5(struct omap_hsmmc_platform_data *pdata)
+{
+	return omap_add_mmc(4, OMAP44XX_MMC5_BASE, pdata);
+}
+
+static inline struct device_d *omap44xx_add_i2c1(void *pdata)
+{
+	return omap_add_i2c(0, OMAP44XX_I2C1_BASE, pdata);
+}
+
+static inline struct device_d *omap44xx_add_i2c2(void *pdata)
+{
+	return omap_add_i2c(1, OMAP44XX_I2C2_BASE, pdata);
+}
+
+static inline struct device_d *omap44xx_add_i2c3(void *pdata)
+{
+	return omap_add_i2c(2, OMAP44XX_I2C3_BASE, pdata);
+}
+
+static inline struct device_d *omap44xx_add_i2c4(void *pdata)
+{
+	return omap_add_i2c(3, OMAP44XX_I2C4_BASE, pdata);
+}
+
+#endif /* __MACH_OMAP4_DEVICES_H */
diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
new file mode 100644
index 0000000..acf029d
--- /dev/null
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -0,0 +1,27 @@
+#include <driver.h>
+#include <ns16550.h>
+#include <mach/omap3-devices.h>
+
+static struct NS16550_plat serial_plat = {
+	.clock = 48000000,      /* 48MHz (APLL96/2) */
+	.shift = 2,
+};
+
+struct device_d *omap_add_uart(int id, unsigned long base)
+{
+	return add_ns16550_device(id, base, 1024,
+			IORESOURCE_MEM_8BIT, &serial_plat);
+}
+
+struct device_d *omap_add_mmc(int id, unsigned long base,
+		struct omap_hsmmc_platform_data *pdata)
+{
+	return add_generic_device("omap-hsmmc", id, NULL,
+			base, SZ_4K, IORESOURCE_MEM, pdata);
+}
+
+struct device_d *omap_add_i2c(int id, unsigned long base, void *pdata)
+{
+	return add_generic_device("i2c-omap", id, NULL, base, SZ_4K,
+			   IORESOURCE_MEM, pdata);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
