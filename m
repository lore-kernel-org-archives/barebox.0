Delivery-date: Thu, 26 Jun 2025 16:46:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnrg-00BIlS-2j
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 16:46:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnrf-0007xC-Fk
	for lore@pengutronix.de; Thu, 26 Jun 2025 16:46:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6sk56zlcc3wDip2auBIXgZ/EZ1d7I/viD4hCKtr4h38=; b=WpSKhn8+cpJvYjHUlkwEfL9oHC
	ZIXgeHsQmIaN7iS8zsE5XKhzA96k9v/559cv0Hr2F0ZLw4VZ7TQomYTh6g/V9E8u1akQuOLy1G/Xe
	67fgZGvLJ1jLkMU/7ls7IympZs+yobS1dF1eUOL8r1NAh8yxUPOvkJvySsietVOPFlSME2WAE/DdP
	Ko1oiHlErNy5v07AqchgfJj61A8OE0ITquZsiCjkO6/foDHe+dgvu1a3q0oy3PSyTu8sYY8F4v1J4
	CKMjyfucH+/RcUluW3yjw6YbUw0MtGKh7wRbAL/1ewEg+R1ddMuirCzcNgvrFwDhjP2gyodBVKKX0
	93BE/CBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnrE-0000000ByUU-0vns;
	Thu, 26 Jun 2025 14:45:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnr8-0000000ByPu-0DUD
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 14:45:41 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uUnr4-0006pw-Vo; Thu, 26 Jun 2025 16:45:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 26 Jun 2025 16:45:25 +0200
Message-Id: <20250626144527.416697-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250626144527.416697-1-m.felsch@pengutronix.de>
References: <20250626144527.416697-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_074538_166297_C688566C 
X-CRM114-Status: GOOD (  15.46  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/6] ARM: mach-imx: tzasc: add imx6q_tzc380_early_ns_region1()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a helper function which can be used by the board code to setup an
early non-secure TZASC region1 which covers the whole SDRAM size.

This eliminates the current workaround of configuring region0 as
non-secure/secure region.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- Add Ahmad ack

 arch/arm/mach-imx/Makefile |  2 +-
 arch/arm/mach-imx/tzasc.c  | 44 ++++++++++++++++++++++++++++++++++++++
 include/mach/imx/tzasc.h   |  1 +
 3 files changed, 46 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 23f51fc66019..07e14b392d6c 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -21,7 +21,7 @@ obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
 obj-pbl-$(CONFIG_ARCH_IMX_SCRATCHMEM) += scratch.o
 obj-$(CONFIG_ARCH_IMX9) += imx9.o imx-v3-image.o
 lwl-$(CONFIG_ARCH_IMX_ATF) += atf.o
-obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
+obj-pbl-y += tzasc.o
 obj-pbl-$(CONFIG_ARCH_IMX_ROMAPI) += romapi.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
index 2a48f841af49..54f7d1d49715 100644
--- a/arch/arm/mach-imx/tzasc.c
+++ b/arch/arm/mach-imx/tzasc.c
@@ -3,8 +3,10 @@
 #define pr_fmt(fmt) "tzc380: " fmt
 
 #include <common.h>
+#include <mach/imx/esdctl.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/tzasc.h>
+#include <mach/imx/imx6-regs.h>
 #include <linux/bitfield.h>
 #include <linux/bitops.h>
 #include <linux/log2.h>
@@ -71,6 +73,9 @@
  *                         SoC specific defines
  ******************************************************************************/
 
+#define MX6_TZASC1_BASE			0x21d0000
+#define MX6_TZASC2_BASE			0x21d4000
+
 #define GPR_TZASC_EN					BIT(0)
 #define GPR_TZASC_ID_SWAP_BYPASS		BIT(1)
 #define GPR_TZASC_EN_LOCK				BIT(16)
@@ -250,6 +255,45 @@ tzc380_auto_configure(struct tzc380_instance *tzc380, unsigned int region,
  *                          SoC specific helpers
  ******************************************************************************/
 
+static void imx_tzc380_init_and_setup(void __iomem *base, unsigned int region,
+				      resource_size_t region_base,
+				      resource_size_t region_size,
+				      unsigned int region_attr)
+{
+	struct tzc380_instance *tzasc = tzc380_init(base);
+
+	tzc380_auto_configure(tzasc, region, region_base, region_size,
+			      region_attr);
+}
+
+/*
+ * imx6q_tzc380_early_ns_region1 - configure the whole DRAM as non-secure
+ *                                 region1
+ *
+ * Passing data between TEE and barebox need to follow some requirements:
+ *  - the location can be accessed by the normal and secure world
+ *  - the mapping in the normal and secure world must be the same to avoid
+ *    manual cache maintenance.
+ *
+ * Therefore this function reads the DRAM size out of the MMDC controller and
+ * configures the whole size as non-secure TZC380 region1. This allows the
+ * early TEE code to map the location as non-secure to while writing the data
+ * e.g. device-tee-overlays. Later on the TEE may reconfigure and lock the
+ * TZC380 regions. The reconfiguration needs to ensure that the exchange data
+ * location is still accessible by the normal world.
+ */
+void imx6q_tzc380_early_ns_region1(void)
+{
+	resource_size_t ram_sz = imx6_get_mmdc_sdram_size();
+
+	imx_tzc380_init_and_setup(IOMEM(MX6_TZASC1_BASE), 1,
+				  MX6_MMDC_PORT01_BASE_ADDR, ram_sz,
+				  TZC380_REGION_SP_NS_RW);
+	imx_tzc380_init_and_setup(IOMEM(MX6_TZASC2_BASE), 1,
+				  MX6_MMDC_PORT01_BASE_ADDR, ram_sz,
+				  TZC380_REGION_SP_NS_RW);
+}
+
 void imx8m_tzc380_init(void)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
index 51c86f168ee4..4d3f26fc82f1 100644
--- a/include/mach/imx/tzasc.h
+++ b/include/mach/imx/tzasc.h
@@ -6,6 +6,7 @@
 #include <linux/types.h>
 #include <asm/system.h>
 
+void imx6q_tzc380_early_ns_region1(void);
 void imx8m_tzc380_init(void);
 bool imx8m_tzc380_is_enabled(void);
 
-- 
2.39.5



