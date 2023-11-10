Delivery-date: Fri, 10 Nov 2023 13:59:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6i-005rRs-1W
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6h-00039Q-AF
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yaCzAF0jDK04b7wFJe9eCp5905CaRw1kGg6lgOt65E0=; b=mV9g9045np1WdzouXYDJtjzT5Z
	ntEvALJECiYF8btRMlBRnDg+yCmpoqJteJ3Ig+XH9EHQ+aTdsqN7AHZzmeBYwWsf7E7g5u9Cn8Mz4
	LV0r/5bnsqTqrJ1v6wq2SPdtlv8RWmULb4H1aEGb+QpNJ6ijo3VaW97BfWPkT9h8QM2bwgScxTbrO
	EXLQzS5aqanNeEmMTMEnXZ0rQ4KHa8ucS+GOPtF2Slo42Qa6TCTaLhf+3eQemhs6QBlkluKADvWkK
	990Z6O+hFVGTzPyFdkA9tMj6ALE1BLFhM3PXgrk+N3Bxa7YwSG/bkPyXG+BuQFpOCC5s5N3Q0Tbgr
	e5zr/spA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5T-008jv1-27;
	Fri, 10 Nov 2023 12:58:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5J-008jo0-34
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026K-59; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081X3-Mi; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008ryZ-25;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:36 +0100
Message-Id: <20231110125800.1901232-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045806_166216_C3940E55 
X-CRM114-Status: GOOD (  21.00  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/25] ARM: initial i.MX9 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig            | 17 +++++++++++
 arch/arm/mach-imx/Makefile           |  5 ++--
 arch/arm/mach-imx/cpu_init.c         | 42 ++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx-bbu-internal.c |  5 ++++
 firmware/Kconfig                     |  3 ++
 firmware/Makefile                    |  1 +
 include/mach/imx/bbu.h               |  9 ++++++
 include/mach/imx/generic.h           |  1 +
 include/mach/imx/imx9-regs.h         | 24 ++++++++++++++++
 9 files changed, 105 insertions(+), 2 deletions(-)
 create mode 100644 include/mach/imx/imx9-regs.h

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6a7d90e2c8..358d1ef362 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -31,6 +31,14 @@ config RESET_IMX_SRC
 	def_bool y
 	depends on ARCH_IMX6 || ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53
 
+config ARCH_IMX_ATF
+	def_bool y
+	depends on ARCH_IMX8M || ARCH_IMX93
+
+config ARCH_IMX_ROMAPI
+	def_bool y
+	depends on ARCH_IMX8M || ARCH_IMX93
+
 #
 # PMIC configuration found on i.MX51 Babbadge board
 #
@@ -164,6 +172,15 @@ config ARCH_IMX8MQ
 	select ARCH_IMX8M
 	bool
 
+config ARCH_IMX93
+	bool
+	select CPU_V8
+	select PINCTRL_IMX_IOMUX_V3
+	select OFTREE
+	select COMMON_CLK_OF_PROVIDER
+	select ARM_USE_COMPRESSED_DTB
+	select ARCH_HAS_FEC_IMX
+
 config ARCH_VF610
 	bool
 	select ARCH_HAS_L2X0
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index f49bbea2b4..7b093ba7fd 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -18,8 +18,9 @@ lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
-lwl-$(CONFIG_ARCH_IMX8M) += atf.o
-obj-pbl-$(CONFIG_ARCH_IMX8M) += romapi.o tzasc.o
+lwl-$(CONFIG_ARCH_IMX_ATF) += atf.o
+obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
+obj-pbl-$(CONFIG_ARCH_IMX_ROMAPI) += romapi.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index 4e55d72857..b20172076e 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -10,6 +10,8 @@
 #include <mach/imx/imx7-regs.h>
 #include <mach/imx/imx8mq-regs.h>
 #include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/imx9-regs.h>
+#include <soc/imx9/trdc.h>
 #include <io.h>
 #include <asm/syscounter.h>
 #include <asm/system.h>
@@ -85,4 +87,44 @@ void imx8mq_cpu_lowlevel_init(void)
 {
 	imx8m_cpu_lowlevel_init();
 }
+
+#define CCM_AUTHEN_TZ_NS	BIT(9)
+
+#define OSCPLLa_AUTHEN(n)		(0x5030  + (n) * 0x40) /* 0..18 */
+#define CLOCK_ROOT_AUTHEN(n)		(0x30  + (n) * 0x80) /* 0..94 */
+#define LPCGa_AUTHEN(n)			(0x8030 + (n) * 0x40) /* 0..126 */
+#define GPR_SHARED0_AUTHEN(n)		(0x4810 + (n) * 0x10) /* 0..3 */
+#define SET 4
+
+#define SRC_SP_ISO_CTRL			0x10c
+
+void imx93_cpu_lowlevel_init(void)
+{
+	void __iomem *ccm = IOMEM(MX9_CCM_BASE_ADDR);
+	void __iomem *src = IOMEM(MX9_SRC_BASE_ADDR);
+	int i;
+
+	arm_cpu_lowlevel_init();
+
+	if (current_el() != 3)
+		return;
+
+	imx9_trdc_init();
+
+	imx_cpu_timer_init(IOMEM(MX9_SYSCNT_CTRL_BASE_ADDR));
+
+	for (i = 0; i <= 18; i++)
+		writel(CCM_AUTHEN_TZ_NS, ccm + OSCPLLa_AUTHEN(i) + SET);
+	for (i = 0; i <= 94; i++)
+		writel(CCM_AUTHEN_TZ_NS, ccm + CLOCK_ROOT_AUTHEN(i) + SET);
+	for (i = 0; i <= 126 ; i++)
+		writel(CCM_AUTHEN_TZ_NS, ccm + LPCGa_AUTHEN(i) + SET);
+	for (i = 0; i <= 3 ; i++)
+		writel(CCM_AUTHEN_TZ_NS, ccm + GPR_SHARED0_AUTHEN(i) + SET);
+
+	/* clear isolation for usbphy, dsi, csi*/
+	writel(0x0, src + SRC_SP_ISO_CTRL);
+
+}
+
 #endif
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 8cdaab5c16..e26317e8bf 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -617,6 +617,11 @@ int imx8m_bbu_internal_mmcboot_register_handler(const char *name,
 						 unsigned long flags)
 	__alias(imx_bbu_internal_mmcboot_register_handler);
 
+int imx9_bbu_internal_mmcboot_register_handler(const char *name,
+						 const char *devicefile,
+						 unsigned long flags)
+	__alias(imx_bbu_internal_mmcboot_register_handler);
+
 /*
  * Register an i.MX53 internal boot update handler for i2c/spi
  * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
diff --git a/firmware/Kconfig b/firmware/Kconfig
index 3328dbc0b1..38fbf85555 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -38,6 +38,9 @@ config FIRMWARE_IMX8MP_ATF
 config FIRMWARE_IMX8MQ_ATF
 	bool
 
+config FIRMWARE_IMX93_ATF
+	bool
+
 config FIRMWARE_IMX8MM_OPTEE
 	bool "install OP-TEE on i.MX8MM boards"
 	depends on FIRMWARE_IMX8MM_ATF && PBL_OPTEE
diff --git a/firmware/Makefile b/firmware/Makefile
index 4fca83f808..51d98d54bf 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -16,6 +16,7 @@ pbl-firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin$(if $(CONFIG_FIRMW
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MN_OPTEE),-optee,)
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MP_OPTEE),-optee,)
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
+pbl-firmware-$(CONFIG_FIRMWARE_IMX93_ATF) += imx93-bl31.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MM_OPTEE) += imx8mm-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MN_OPTEE) += imx8mn-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MP_OPTEE) += imx8mp-bl32.bin
diff --git a/include/mach/imx/bbu.h b/include/mach/imx/bbu.h
index 50657d9895..f6397a9dd7 100644
--- a/include/mach/imx/bbu.h
+++ b/include/mach/imx/bbu.h
@@ -82,6 +82,8 @@ int imx8m_bbu_internal_mmc_register_handler(const char *name, const char *device
 					    unsigned long flags);
 int imx8m_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
 						unsigned long flags);
+int imx9_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
+					       unsigned long flags);
 
 int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
@@ -182,6 +184,13 @@ static inline int imx8m_bbu_internal_mmcboot_register_handler(const char *name,
 	return -ENOSYS;
 }
 
+static inline int imx9_bbu_internal_mmcboot_register_handler(const char *name,
+							      const char *devicefile,
+							      unsigned long flags)
+{
+	return -ENOSYS;
+}
+
 static inline int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
diff --git a/include/mach/imx/generic.h b/include/mach/imx/generic.h
index f674e28697..ce65e4d8ec 100644
--- a/include/mach/imx/generic.h
+++ b/include/mach/imx/generic.h
@@ -73,6 +73,7 @@ void imx8mq_cpu_lowlevel_init(void);
 void imx8mm_cpu_lowlevel_init(void);
 void imx8mn_cpu_lowlevel_init(void);
 void imx8mp_cpu_lowlevel_init(void);
+void imx93_cpu_lowlevel_init(void);
 
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
diff --git a/include/mach/imx/imx9-regs.h b/include/mach/imx/imx9-regs.h
new file mode 100644
index 0000000000..dd02abf52a
--- /dev/null
+++ b/include/mach/imx/imx9-regs.h
@@ -0,0 +1,24 @@
+#ifndef __MACH_IMX9_REGS_H
+#define __MACH_IMX9_REGS_H
+
+#define MX9_UART3_BASE_ADDR		0x42570000UL
+#define MX9_UART4_BASE_ADDR		0x42580000UL
+#define MX9_UART5_BASE_ADDR		0x42590000UL
+#define MX9_UART6_BASE_ADDR		0x425a0000UL
+#define MX9_UART7_BASE_ADDR		0x42690000UL
+#define MX9_UART8_BASE_ADDR		0x426a0000UL
+#define MX9_SYSCNT_CTRL_BASE_ADDR	0x44290000UL
+#define MX9_UART1_BASE_ADDR		0x44380000UL
+#define MX9_UART2_BASE_ADDR		0x44390000UL
+#define MX9_IOMUXC_BASE_ADDR		0x443c0000UL
+#define MX9_CCM_BASE_ADDR		0x44450000UL
+#define MX9_SRC_BASE_ADDR		0x44460000UL
+#define MX9_ANATOP_BASE_ADDR		0x44480000UL
+#define MX9_ANATOP_DRAM_PLL_BASE_ADDR	0x44481300UL
+#define MX9_TRDC_NICMIX_BASE_ADDR	0x49010000UL
+#define MX9_DDRMIX_BLK_CTRL_BASE	0x4E010000UL
+#define MX9_DDR_PHY_BASE		0x4E100000UL
+#define MX9_DDR_CTL_BASE		0x4E300000UL
+#define MX9_DDR_CSD1_BASE_ADDR		0x80000000UL
+
+#endif /* __MACH_IMX9_REGS_H */
-- 
2.39.2



