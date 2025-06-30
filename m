Delivery-date: Mon, 30 Jun 2025 09:47:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9EE-00CYDK-33
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 09:47:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9ED-0005mQ-TC
	for lore@pengutronix.de; Mon, 30 Jun 2025 09:47:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SAwwg9u7vqsj8dPUttIMqNH30X0h1c8Aa9DcjZ4o6Vw=; b=q0Ux4DcaHuT2pzXl2PwLViIYOW
	mmBejRCD6dWKfoLHVfcbE3RHBnA6vmQfGM+1Dt7gaLM8iHWOQvlwexiqin1O6Gx9V/kqBJQft/8YB
	7PRfKw4vCOam/+YmDwuuXKXXpU1+WRPBCDQ07FF0GqVVhw53uDd01c0cD6n0eWNAtG/LrU8hHrHja
	7kAAOtyuxcFK34p01i658O+jcZ8gSvCg1yngCorsp37WqKyzIEssVzDuuOQvQdMqtl7d/iOskH/GO
	+uz27nJwKMLVEAJkxEo7COIS/+bEcqe0WeG5Ls3eHLTZfJVPu3nbrFMcOaBaSq+PAtgG0wjCwLyYw
	dRDo7LcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9Dk-00000001UhX-07vg;
	Mon, 30 Jun 2025 07:46:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9DB-00000001UUk-3tO0
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 07:46:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-0004OE-MG; Mon, 30 Jun 2025 09:45:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-00648P-12;
	Mon, 30 Jun 2025 09:45:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0W;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-8-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269547; l=4600;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=00HUhszVxeZL8SM+gVFxdEmiwO47QrVpSLCgKblk668=;
 b=UcFQQ8MdyHqWW4D0rleZiky2bcBjPZzm38Hz0OqLFu92mUYTlZUTmGnAra/SP2IvuPYsMik9Y
 B4MyAQk30JnBrT4slJTTqpK2hoXW6g29YS9kLMkFgmT5ffccCEiFeiO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_004557_999265_2985A9C6 
X-CRM114-Status: GOOD (  18.16  )
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
Subject: [PATCH v2 08/14] ARM: mach-imx: tzasc: add
 imx6[q|ul]_tzc380_early_ns_region1()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a helper function which can be used by the board code to setup an
early non-secure TZASC region1 which covers the whole SDRAM size.

This eliminates the current workaround of configuring region0 as
non-secure/secure region.

tzasc.c can now be used for i.MX6 as well, so expand ARCH_IMX_TZASC
accordingly.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |  2 +-
 arch/arm/mach-imx/tzasc.c | 53 +++++++++++++++++++++++++++++++++++++++++++++++
 include/mach/imx/tzasc.h  |  2 ++
 3 files changed, 56 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 34c8a077d32d0b87d0b804fd36c6a1693f0071a9..bb6bad169831b03879527ef9f676ff99b955a6fd 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -48,7 +48,7 @@ config ARCH_IMX_SCRATCHMEM
 
 config ARCH_IMX_TZASC
 	bool
-	depends on ARCH_IMX8M
+	depends on ARCH_IMX6 || ARCH_IMX8M
 	default y if PBL_OPTEE
 
 #
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



