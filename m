Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StgHP-0004ZR-Ly
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 14:40:20 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 343D5BF0EC
 for <barebox@lists.infradead.org>; Tue, 24 Jul 2012 16:39:57 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 24 Jul 2012 16:39:55 +0200
Message-Id: <1343140796-21934-3-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1343140796-21934-1-git-send-email-j.weitzel@phytec.de>
References: <1343140796-21934-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 2/3] OMAP GPMC NAND: add set_buswidth callback
To: barebox@lists.infradead.org

If buswidth is not configured in platformdata (=0) set NAND_BUSWIDTH_UNKNOWN
flag to allow nand_base to autodetect the setting.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/mach-omap/devices-gpmc-nand.c |    8 ++---
 arch/arm/mach-omap/gpmc.c              |   19 ++++++++++++++
 arch/arm/mach-omap/include/mach/gpmc.h |    8 ++++++
 drivers/mtd/nand/nand_omap_gpmc.c      |   43 ++++++++++++++++++++++++++++---
 4 files changed, 68 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index 54625ca..8a867f6 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -36,9 +36,6 @@
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
 
-#define GPMC_CONF1_VALx8	0x00000800
-#define GPMC_CONF1_VALx16	0x00001800
-
 /** NAND platform specific settings settings */
 static struct gpmc_nand_platform_data nand_plat = {
 	.cs = 0,
@@ -57,9 +54,10 @@ int gpmc_generic_nand_devices_init(int cs, int width,
 	nand_plat.cs = cs;
 
 	if (width == 16)
-		nand_cfg->cfg[0] = GPMC_CONF1_VALx16;
+		nand_cfg->cfg[0] = GPMC_CONFIG1_DEVICETYPE_NAND |
+					GPMC_CONFIG1_DEVICESIZE_16;
 	else
-		nand_cfg->cfg[0] = GPMC_CONF1_VALx8;
+		nand_cfg->cfg[0] = GPMC_CONFIG1_DEVICETYPE_NAND;
 
 	nand_plat.device_width = width;
 	nand_plat.ecc_mode = eccmode;
diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index 92a8ae0..b3fa56c 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -125,3 +125,22 @@ void gpmc_cs_config(char cs, struct gpmc_config *config)
 	mdelay(1);		/* Settling time */
 }
 EXPORT_SYMBOL(gpmc_cs_config);
+
+void gpmc_get_config(char cs, struct gpmc_config *config)
+{
+	unsigned int reg = GPMC_REG(CONFIG1_0) + (cs * GPMC_CONFIG_CS_SIZE);
+	unsigned int cfg7;
+	unsigned char i;
+
+	/* Read the CFG1-6 regs */
+	for (i = 0; i < 6; i++) {
+		config->cfg[i] = readl(reg);
+		reg += GPMC_CONFIG_REG_OFF;
+	}
+
+	cfg7 = readl(reg);
+
+	config->size = (cfg7 >> 8) & 0xf;
+	config->base = (cfg7 & 0x3F) << 24;
+}
+EXPORT_SYMBOL(gpmc_get_config);
diff --git a/arch/arm/mach-omap/include/mach/gpmc.h b/arch/arm/mach-omap/include/mach/gpmc.h
index 3ddc5f5..84260fc 100644
--- a/arch/arm/mach-omap/include/mach/gpmc.h
+++ b/arch/arm/mach-omap/include/mach/gpmc.h
@@ -140,6 +140,11 @@
 
 #define NAND_WP_BIT		0x00000010
 
+#define GPMC_CONFIG1_DEVICESIZE(val)	((val & 3) << 12)
+#define GPMC_CONFIG1_DEVICESIZE_16	GPMC_CONFIG1_DEVICESIZE(1)
+#define GPMC_CONFIG1_DEVICETYPE(val)	((val & 3) << 10)
+#define GPMC_CONFIG1_DEVICETYPE_NAND	GPMC_CONFIG1_DEVICETYPE(2)
+
 #ifndef __ASSEMBLY__
 
 /** Generic GPMC configuration structure to be used to configure a
@@ -157,6 +162,9 @@ void gpmc_generic_init(unsigned int cfg);
 /** Configuration for a specific chip select */
 void gpmc_cs_config(char cs, struct gpmc_config *config);
 
+/** Get Configuration for a specific chip select */
+void gpmc_get_config(char cs, struct gpmc_config *config);
+
 #endif
 
 #endif /* __ASM_ARCH_OMAP_GPMC_H */
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d55dcaa..63aae81 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -803,6 +803,28 @@ static int omap_gpmc_eccmode_set(struct device_d *dev, struct param_d *param, co
 	return omap_gpmc_eccmode(oinfo, i);
 }
 
+static int gpmc_set_buswidth(struct mtd_info *mtd, struct nand_chip *nand)
+{
+	struct gpmc_nand_info *oinfo = nand->priv;
+	struct gpmc_nand_platform_data *pdata = oinfo->pdata;
+	struct gpmc_config cfg;
+
+	gpmc_get_config(oinfo->gpmc_cs, &cfg);
+
+	if (nand->options & NAND_BUSWIDTH_16)
+		cfg.cfg[0] = GPMC_CONFIG1_DEVICETYPE_NAND |
+				GPMC_CONFIG1_DEVICESIZE_16;
+	else
+		cfg.cfg[0] = GPMC_CONFIG1_DEVICETYPE_NAND;
+
+	pdata->device_width = (nand->options & NAND_BUSWIDTH_16) ? 16 : 8;
+	dev_dbg(oinfo->pdev, "set buswidth to %d bit\n", pdata->device_width);
+
+	gpmc_cs_config(oinfo->gpmc_cs, &cfg);
+
+	return 0;
+}
+
 /**
  * @brief nand device probe.
  *
@@ -836,6 +858,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 
 	nand = &oinfo->nand;
 	nand->priv = (void *)oinfo;
+	nand->set_buswidth = gpmc_set_buswidth;
 
 	minfo = &oinfo->minfo;
 	minfo->priv = (void *)nand;
@@ -854,14 +877,23 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	oinfo->gpmc_address = (void *)(cs_base + GPMC_CS_NAND_ADDRESS);
 	oinfo->gpmc_data = (void *)(cs_base + GPMC_CS_NAND_DATA);
 	oinfo->timeout = pdata->max_timeout;
-	dev_dbg(pdev, "GPMC base=0x%p cmd=0x%p address=0x%p data=0x%p cs_base=0x%p\n",
+	dev_dbg(pdev, "GPMC base=0x%p cmd=0x%p address=0x%p data=0x%p "
+		"cs_base=0x%p buswidth=%d\n",
 		oinfo->gpmc_base, oinfo->gpmc_command, oinfo->gpmc_address,
-		oinfo->gpmc_data, cs_base);
+		oinfo->gpmc_data, cs_base, pdata->device_width);
 
-	/* If we are 16 bit dev, our gpmc config tells us that */
-	if ((readl(cs_base) & 0x3000) == 0x1000) {
-		dev_dbg(pdev, "16 bit dev\n");
+	switch (pdata->device_width) {
+	case 0:
+		nand->options |= NAND_BUSWIDTH_UNKNOWN;
+		break;
+	case 8:
+		break;
+	case 16:
 		nand->options |= NAND_BUSWIDTH_16;
+		break;
+	default:
+		err = -EINVAL;
+		goto out_release_mem;
 	}
 
 	/* Same data register for in and out */
@@ -938,6 +970,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		llp = &ecc_lp_x16;
 		break;
 	default:
+		dev_dbg(pdev, "buswidth %d unknown\n", pdata->device_width);
 		err = -EINVAL;
 		goto out_release_mem;
 	}
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
