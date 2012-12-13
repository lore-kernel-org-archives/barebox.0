Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBgW-0004vw-NS
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:31:02 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 13 Dec 2012 17:30:40 +0100
Message-Id: <1355416249-22364-6-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
References: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 05/14] ARM omap: Make gpmc base runtime configurable
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/devices-gpmc-nand.c |    2 +-
 arch/arm/mach-omap/gpmc.c              |   14 ++++++++++++--
 arch/arm/mach-omap/include/mach/gpmc.h |    4 +++-
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index 42cb1b4..b2a2b0f 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -46,7 +46,7 @@ int omap_add_gpmc_nand_device(struct gpmc_nand_platform_data *pdata)
 	/* Configure GPMC CS before register */
 	gpmc_cs_config(pdata->cs, pdata->nand_cfg);
 
-	add_generic_device("gpmc_nand", DEVICE_ID_DYNAMIC, NULL, OMAP_GPMC_BASE,
+	add_generic_device("gpmc_nand", DEVICE_ID_DYNAMIC, NULL, (resource_size_t)omap_gpmc_base,
 			1024 * 4, IORESOURCE_MEM, pdata);
 
 	return 0;
diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index 4cfb7cf..d2b7024 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -29,6 +29,16 @@
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
 
+void __iomem *omap_gpmc_base;
+
+static int gpmc_init(void)
+{
+	omap_gpmc_base = (void *)OMAP_GPMC_BASE;
+
+	return 0;
+}
+pure_initcall(gpmc_init);
+
 /**
  * @brief Do a Generic initialization of GPMC. if you choose otherwise,
  * Use gpmc registers to modify the values. The defaults configured are:
@@ -43,7 +53,7 @@
 void gpmc_generic_init(unsigned int cfg)
 {
 	uint64_t start;
-	unsigned int reg = GPMC_REG(CONFIG7_0);
+	void __iomem *reg = GPMC_REG(CONFIG7_0);
 	char x = 0;
 
 	debug("gpmccfg=0x%x\n", cfg);
@@ -89,7 +99,7 @@ EXPORT_SYMBOL(gpmc_generic_init);
  */
 void gpmc_cs_config(char cs, struct gpmc_config *config)
 {
-	unsigned int reg = GPMC_REG(CONFIG1_0) + (cs * GPMC_CONFIG_CS_SIZE);
+	void __iomem *reg = GPMC_REG(CONFIG1_0) + (cs * GPMC_CONFIG_CS_SIZE);
 	unsigned char x = 0;
 	debug("gpmccs=0x%x cfg=0x%p\n", cs, config);
 
diff --git a/arch/arm/mach-omap/include/mach/gpmc.h b/arch/arm/mach-omap/include/mach/gpmc.h
index 957ff55..d4eac79 100644
--- a/arch/arm/mach-omap/include/mach/gpmc.h
+++ b/arch/arm/mach-omap/include/mach/gpmc.h
@@ -32,8 +32,10 @@
 #ifndef __ASM_ARCH_OMAP_GPMC_H
 #define __ASM_ARCH_OMAP_GPMC_H
 
+extern void __iomem *omap_gpmc_base;
+
 /** GPMC Reg Wrapper */
-#define GPMC_REG(REGNAME)	(OMAP_GPMC_BASE + GPMC_##REGNAME)
+#define GPMC_REG(REGNAME)	(omap_gpmc_base + GPMC_##REGNAME)
 
 #define GPMC_SYS_CONFIG		(0x10)
 #define GPMC_SYS_STATUS		(0x14)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
