Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs8Y-0008F8-IM
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:41 +0100
Message-Id: <1385132083-7484-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/16] ARM: OMAP: centralize omap startup
To: barebox@lists.infradead.org

This introduces a single omap_init function which detects the
SoC and does all further SoC initialization. This is done to get
rid of initcalls without proper SoC protection. The same has been
done for i.MX already.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_generic.c              | 14 ++++++-
 arch/arm/mach-omap/gpmc.c                        | 17 +-------
 arch/arm/mach-omap/include/mach/am33xx-generic.h |  3 ++
 arch/arm/mach-omap/include/mach/omap3-generic.h  |  3 ++
 arch/arm/mach-omap/include/mach/omap4-generic.h  |  3 ++
 arch/arm/mach-omap/omap3_generic.c               | 14 ++++++-
 arch/arm/mach-omap/omap4_generic.c               | 17 +++++++-
 arch/arm/mach-omap/omap_generic.c                | 49 ++++++++++++++++++++++++
 8 files changed, 98 insertions(+), 22 deletions(-)

diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 4e81fcd..68dc933 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -147,7 +147,6 @@ static int am33xx_bootsource(void)
 	bootsource_set_instance(instance);
 	return 0;
 }
-postcore_initcall(am33xx_bootsource);
 
 int am33xx_register_ethaddr(int eth_id, int mac_id)
 {
@@ -199,7 +198,18 @@ static int am33xx_gpio_init(void)
 				0xf00, IORESOURCE_MEM, NULL);
 	return 0;
 }
-coredevice_initcall(am33xx_gpio_init);
+
+int am33xx_init(void)
+{
+	omap_gpmc_base = (void *)AM33XX_GPMC_BASE;
+
+	return am33xx_bootsource();
+}
+
+int am33xx_devices_init(void)
+{
+	return am33xx_gpio_init();
+}
 
 /* UART Defines */
 #define UART_SYSCFG_OFFSET	0x54
diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index bb84b38..630351b 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -30,25 +30,10 @@
 #include <mach/gpmc.h>
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
+#include <mach/generic.h>
 
 void __iomem *omap_gpmc_base;
 
-static int gpmc_init(void)
-{
-#if defined(CONFIG_ARCH_OMAP3)
-	omap_gpmc_base = (void *)OMAP3_GPMC_BASE;
-#elif defined(CONFIG_ARCH_OMAP4)
-	omap_gpmc_base = (void *)OMAP44XX_GPMC_BASE;
-#elif defined(CONFIG_ARCH_AM33XX)
-	omap_gpmc_base = (void *)AM33XX_GPMC_BASE;
-#else
-#error "Unknown ARCH"
-#endif
-
-	return 0;
-}
-pure_initcall(gpmc_init);
-
 /**
  * @brief Do a Generic initialization of GPMC. if you choose otherwise,
  * Use gpmc registers to modify the values. The defaults configured are:
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
index ed77b64..e74a666 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
@@ -28,4 +28,7 @@ u32 am33xx_running_in_sdram(void);
 
 void __noreturn am33xx_reset_cpu(unsigned long addr);
 
+int am33xx_init(void);
+int am33xx_devices_init(void);
+
 #endif /* __MACH_AM33XX_GENERIC_H */
diff --git a/arch/arm/mach-omap/include/mach/omap3-generic.h b/arch/arm/mach-omap/include/mach/omap3-generic.h
index c847bfa..2210d87 100644
--- a/arch/arm/mach-omap/include/mach/omap3-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap3-generic.h
@@ -25,4 +25,7 @@ u32 omap3_running_in_sdram(void);
 
 void __noreturn omap3_reset_cpu(unsigned long addr);
 
+int omap3_init(void);
+int omap3_devices_init(void);
+
 #endif /* __MACH_OMAP3_GENERIC_H */
diff --git a/arch/arm/mach-omap/include/mach/omap4-generic.h b/arch/arm/mach-omap/include/mach/omap4-generic.h
index 06bc031..85c92e1 100644
--- a/arch/arm/mach-omap/include/mach/omap4-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap4-generic.h
@@ -20,4 +20,7 @@ static inline void omap4_save_bootinfo(uint32_t *info)
 
 void __noreturn omap4_reset_cpu(unsigned long addr);
 
+int omap4_init(void);
+int omap4_devices_init(void);
+
 #endif /* __MACH_OMAP4_GENERIC_H */
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index e53b363..d36d63b 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -489,7 +489,13 @@ static int omap3_bootsource(void)
 
 	return 0;
 }
-postcore_initcall(omap3_bootsource);
+
+int omap3_init(void)
+{
+	omap_gpmc_base = (void *)OMAP3_GPMC_BASE;
+
+	return omap3_bootsource();
+}
 
 /* GPMC timing for OMAP3 nand device */
 const struct gpmc_config omap3_nand_cfg = {
@@ -525,5 +531,9 @@ static int omap3_gpio_init(void)
 
 	return 0;
 }
-coredevice_initcall(omap3_gpio_init);
+
+int omap3_devices_init(void)
+{
+	return omap3_gpio_init();
+}
 #endif
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 58051a3..3acbcaa 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -470,6 +470,9 @@ static int watchdog_init(void)
 {
 	void __iomem *wd2_base = (void *)OMAP44XX_WDT2_BASE;
 
+	if (!cpu_is_omap4())
+		return 0;
+
 	writel(WD_UNLOCK1, wd2_base + WATCHDOG_WSPR);
 	wait_for_command_complete();
 	writel(WD_UNLOCK2, wd2_base + WATCHDOG_WSPR);
@@ -526,7 +529,13 @@ static int omap4_bootsource(void)
 
 	return 0;
 }
-core_initcall(omap4_bootsource);
+
+int omap4_init(void)
+{
+	omap_gpmc_base = (void *)OMAP44XX_GPMC_BASE;
+
+	return omap4_bootsource();
+}
 
 #define GPIO_MASK 0x1f
 
@@ -670,4 +679,8 @@ static int omap4_gpio_init(void)
 
 	return 0;
 }
-coredevice_initcall(omap4_gpio_init);
+
+int omap4_devices_init(void)
+{
+	return omap4_gpio_init();
+}
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index b999ea4..581e710 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -147,3 +147,52 @@ void __noreturn reset_cpu(unsigned long addr)
 		am33xx_reset_cpu(addr);
 	while (1);
 }
+
+static int omap_soc_from_dt(void)
+{
+        if (of_machine_is_compatible("ti,am33xx"))
+		return OMAP_CPU_AM33XX;
+        if (of_machine_is_compatible("ti,omap4"))
+		return OMAP_CPU_OMAP4;
+        if (of_machine_is_compatible("ti,omap3"))
+		return OMAP_CPU_OMAP3;
+
+	return 0;
+}
+
+static int omap_init(void)
+{
+	int ret;
+	struct device_node *root;
+
+	root = of_get_root_node();
+	if (root) {
+		__omap_cpu_type = omap_soc_from_dt();
+		if (!__omap_cpu_type)
+			hang();
+	}
+
+	if (cpu_is_omap3())
+		ret = omap3_init();
+	else if (cpu_is_omap4())
+		ret = omap4_init();
+	else if (cpu_is_am33xx())
+		ret = am33xx_init();
+	else
+		return -EINVAL;
+
+	if (root)
+		return ret;
+
+	if (cpu_is_omap3())
+		ret = omap3_devices_init();
+	else if (cpu_is_omap4())
+		ret = omap4_devices_init();
+	else if (cpu_is_am33xx())
+		ret = am33xx_devices_init();
+	else
+		return -EINVAL;
+
+	return ret;
+}
+postcore_initcall(omap_init);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
