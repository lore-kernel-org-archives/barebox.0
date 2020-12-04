Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klF4b-0004ZE-S6
 for barebox@lists.infradead.org; Fri, 04 Dec 2020 17:40:50 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Dec 2020 18:40:45 +0100
Message-Id: <20201204174045.27340-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201204174045.27340-1-a.fatoum@pengutronix.de>
References: <20201204174045.27340-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX8M: bbu: rename imx8mq_bbu_* functions to
 imx8m_bbu_*
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

imx_bbu_internal_mmcboot_register_handler already supports the i.MX8MQ,
i.MX8MP and i.MX8MM, but the latter two do not have helpers with their
SoC as prefix. As it seems like that it will be possible to extend
imx_bbu_internal_mmcboot_register_handler for upcoming SoCs in the
i.MX8M family as well, rename the function to start with imx8m_.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/board.c    |  6 ++----
 arch/arm/boards/nxp-imx8mp-evk/board.c    |  6 ++----
 arch/arm/boards/nxp-imx8mq-evk/board.c    |  6 ++----
 arch/arm/boards/phytec-som-imx8mq/board.c |  6 ++----
 arch/arm/boards/zii-imx8mq-dev/board.c    |  6 +++---
 arch/arm/mach-imx/imx-bbu-internal.c      |  6 +++---
 arch/arm/mach-imx/include/mach/bbu.h      | 18 +++++++++---------
 7 files changed, 23 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
index 4350abd15793..2603a2ab0730 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
@@ -53,10 +53,8 @@ static int nxp_imx8mm_evk_init(void)
 		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
 	}
 
-	imx8mq_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox",
-						 emmc_sd_flag);
-	imx8mq_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2",
-						     emmc_bbu_flag);
+	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", emmc_sd_flag);
+	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
 				   ar8031_phy_fixup);
diff --git a/arch/arm/boards/nxp-imx8mp-evk/board.c b/arch/arm/boards/nxp-imx8mp-evk/board.c
index d75eb1c6971e..f64f466810c8 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/board.c
@@ -36,10 +36,8 @@ static int nxp_imx8mp_evk_init(void)
 		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
 	}
 
-	imx8mq_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox",
-						 emmc_sd_flag);
-	imx8mq_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc2",
-						     emmc_bbu_flag);
+	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", emmc_sd_flag);
+	imx8m_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
 
 	val = readl(MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
 	val |= MX8MP_IOMUXC_GPR1_ENET1_RGMII_EN;
diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
index 19e640397cc0..c28107cb1751 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
@@ -40,12 +40,10 @@ static int nxp_imx8mq_evk_init(void)
 	barebox_set_hostname("imx8mq-evk");
 
 	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	imx8mq_bbu_internal_mmc_register_handler("eMMC",
-						 "/dev/mmc0.barebox", flags);
+	imx8m_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0.barebox", flags);
 
 	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	imx8mq_bbu_internal_mmc_register_handler("SD",
-						 "/dev/mmc1.barebox", flags);
+	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", flags);
 
 	if (bootsource_get_instance() == 0)
 		of_device_enable_path("/chosen/environment-emmc");
diff --git a/arch/arm/boards/phytec-som-imx8mq/board.c b/arch/arm/boards/phytec-som-imx8mq/board.c
index 7df53a7cfb26..6d331281e6a2 100644
--- a/arch/arm/boards/phytec-som-imx8mq/board.c
+++ b/arch/arm/boards/phytec-som-imx8mq/board.c
@@ -73,10 +73,8 @@ static int physom_imx8mq_devices_init(void)
 		break;
 	}
 
-	imx8mq_bbu_internal_mmc_register_handler("eMMC",
-						 "/dev/mmc0.barebox", flag_emmc);
-	imx8mq_bbu_internal_mmc_register_handler("SD",
-						 "/dev/mmc1.barebox", flag_sd);
+	imx8m_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0.barebox", flag_emmc);
+	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", flag_sd);
 
 
 	return 0;
diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index cfe879c20162..4ad09663ac1c 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -31,9 +31,9 @@ static int zii_imx8mq_dev_init(void)
 	if (of_machine_is_compatible("zii,imx8mq-ultra-rmb3"))
 		barebox_set_hostname("rmb3");
 
-	imx8mq_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0",
-						     BBU_HANDLER_FLAG_DEFAULT);
-	imx8mq_bbu_internal_mmc_register_handler("SD", "/dev/mmc1", 0);
+	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0",
+						    BBU_HANDLER_FLAG_DEFAULT);
+	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1", 0);
 
 	if (bootsource_get_instance() == 0)
 		of_device_enable_path("/chosen/environment-emmc");
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 1b3cb70da811..c6d427a46c9e 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -593,9 +593,9 @@ int vf610_bbu_internal_mmc_register_handler(const char *name,
 	__alias(imx6_bbu_internal_mmc_register_handler);
 
 /*
- * Register an i.MX8MQ internal boot update handler for MMC/SD
+ * Register an i.MX8M* internal boot update handler for MMC/SD
  */
-int imx8mq_bbu_internal_mmc_register_handler(const char *name,
+int imx8m_bbu_internal_mmc_register_handler(const char *name,
 					     const char *devicefile,
 					     unsigned long flags)
 	__alias(imx6_bbu_internal_mmc_register_handler);
@@ -643,7 +643,7 @@ int imx7_bbu_internal_mmcboot_register_handler(const char *name,
 						unsigned long flags)
 	__alias(imx_bbu_internal_mmcboot_register_handler);
 
-int imx8mq_bbu_internal_mmcboot_register_handler(const char *name,
+int imx8m_bbu_internal_mmcboot_register_handler(const char *name,
 						 const char *devicefile,
 						 unsigned long flags)
 	__alias(imx_bbu_internal_mmcboot_register_handler);
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index 10638a7fc7a0..f2e326f475cd 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -74,10 +74,10 @@ int vf610_bbu_internal_spi_i2c_register_handler(const char *name, const char *de
 int imx7_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 					       unsigned long flags);
 
-int imx8mq_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
-					     unsigned long flags);
-int imx8mq_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
-						 unsigned long flags);
+int imx8m_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
+					    unsigned long flags);
+int imx8m_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
+						unsigned long flags);
 
 int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
@@ -161,15 +161,15 @@ static inline int vf610_bbu_internal_mmc_register_handler(const char *name, cons
 	return -ENOSYS;
 }
 
-static inline int imx8mq_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
-							   unsigned long flags)
+static inline int imx8m_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
+							  unsigned long flags)
 {
 	return -ENOSYS;
 }
 
-static inline int imx8mq_bbu_internal_mmcboot_register_handler(const char *name,
-							       const char *devicefile,
-							       unsigned long flags)
+static inline int imx8m_bbu_internal_mmcboot_register_handler(const char *name,
+							      const char *devicefile,
+							      unsigned long flags)
 {
 	return -ENOSYS;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
