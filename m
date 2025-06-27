Delivery-date: Fri, 27 Jun 2025 16:20:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV9vw-00BeFc-0P
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 16:20:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV9vu-0004Ew-2Q
	for lore@pengutronix.de; Fri, 27 Jun 2025 16:20:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vmtJUACZovJ1aEPWJ5ON59ZNk0S46e2mMQLRnlu5hBI=; b=OOKw3JJJiE5sD6CdfWfPFPtc+M
	kujYJycrLs95vWFtVOtOVyKUzMsC89wNcwvHdfNCs+YqN6p37v+ffrKffp0xi06DT8ZXtvEPI8Q7W
	Jrw/la8DSed5kY/2atOZO/T5iPJl+vKdbSdQ/AhSa3oJH8ak12m5kUvUQhsl+spJB4x2fU1DZmFTo
	/kHW0mS6KB0/laRSEFGj3BDNpqdDkBZ4GVKkIJ5gma5H2hfc2uZ6Napjq1VbfL7t/X2swLr8xs0ps
	cnBW92PCvEkMg+Jt/HyMpBadHwdSwT+TxecfY2pIMJZeNRcRFXYnGfxRjYrLmlrpeNryekWIcqIj6
	pfTSxq7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9vS-0000000Et22-41rr;
	Fri, 27 Jun 2025 14:19:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9kJ-0000000ErWZ-3dRm
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:08:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kH-0004vR-AH; Fri, 27 Jun 2025 16:08:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-005dAa-2r;
	Fri, 27 Jun 2025 16:08:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-004uPv-2Q;
	Fri, 27 Jun 2025 16:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Jun 2025 16:07:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-arm-optee-early-helper-v1-7-4b098e8ac7cd@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
In-Reply-To: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751033280; l=4726;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nHNv04hrd+Jpo3NJGYxXNwBB0SOyTdsiiXpTHYyyY00=;
 b=jJFR2AKw2Lsul9nJaMASYVcTu/H/B6TOGQcC0MQ/Wlvpqvd/u9OY+n2LUmVf7QTeayN9wd8EC
 RMLysq7yY54CYe69PyDV1EKfjyVkujJfrWGGjtJPL/01ZqMeYybnX9B
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_070803_950860_0B7CA123 
X-CRM114-Status: GOOD (  16.47  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/14] ARM: mach-imx: tzasc: add
 imx6[q|ul]_tzc380_early_ns_region1()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Add a helper function which can be used by the board code to setup an
early non-secure TZASC region1 which covers the whole SDRAM size.

This eliminates the current workaround of configuring region0 as
non-secure/secure region.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile |  2 +-
 arch/arm/mach-imx/tzasc.c  | 53 ++++++++++++++++++++++++++++++++++++++++++++++
 include/mach/imx/tzasc.h   |  2 ++
 3 files changed, 56 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 23f51fc660197c2da923697e0c303eec8c85e2b4..07e14b392d6c6872aeed382c1e67899184304cf6 100644
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
index 2a48f841af49d3f14bc017950d2553f7f52b7416..169c4b9801e5fdd01edd3c5661418a945cf21c55 100644
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
@@ -250,6 +255,54 @@ tzc380_auto_configure(struct tzc380_instance *tzc380, unsigned int region,
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
+void imx6ul_tzc380_early_ns_region1(void)
+{
+	resource_size_t ram_sz = imx6_get_mmdc_sdram_size();
+
+	imx_tzc380_init_and_setup(IOMEM(MX6_TZASC1_BASE), 1,
+				  MX6_MMDC_PORT0_BASE_ADDR, ram_sz,
+				  TZC380_REGION_SP_NS_RW);
+}
+
 void imx8m_tzc380_init(void)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
index 51c86f168ee41db8659c0ad5f48ca1f102cb76d3..eb479ad55c9c101a5fb47fc4a7178b3669b9e44f 100644
--- a/include/mach/imx/tzasc.h
+++ b/include/mach/imx/tzasc.h
@@ -6,6 +6,8 @@
 #include <linux/types.h>
 #include <asm/system.h>
 
+void imx6q_tzc380_early_ns_region1(void);
+void imx6ul_tzc380_early_ns_region1(void);
 void imx8m_tzc380_init(void);
 bool imx8m_tzc380_is_enabled(void);
 

-- 
2.39.5



