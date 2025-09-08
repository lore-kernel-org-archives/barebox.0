Delivery-date: Mon, 08 Sep 2025 11:30:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYCO-000asp-2U
	for lore@lore.pengutronix.de;
	Mon, 08 Sep 2025 11:30:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYCO-0006pQ-1t
	for lore@pengutronix.de; Mon, 08 Sep 2025 11:30:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x1of+Mnt63BN/hQJOAQRZk8FeIhMK227coXuqf/Gn9E=; b=WtsjwJjnzj30FPhjICljr7jMqc
	+aH1aLDKzbJk0/7heEPMAh178dRNxDoAk4eBdcp2DSMNR+JbxHqMvgoOfQso8hsadqNqaQcDoYEgB
	GjuvAIzG2QU8s2UBj/Ke8wakiiCvSG9BAkRYKYDYf17mvE58Q2Exwa2UylOhNdmIfRgkaDK7XhT9a
	78BZq4jyNhsDq+vkHw+n5pPhvZ9HOT1sqYVRo31LL0fyuML4vqiUUjBISbzZZWP4FCE8hwqQclz/D
	lV4oofUUaGg/d/kDOG67l1Okq610r5tyxzd1YXS15e+PDZq2GHHlmF2xXX2u1HN06O2WX4ro42QZG
	bqr+2yvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYBf-0000000G2AW-2ph9;
	Mon, 08 Sep 2025 09:29:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvXI9-0000000FjA0-2guo
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 08:32:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-0005N1-Tw; Mon, 08 Sep 2025 10:31:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-000DZ4-29;
	Mon, 08 Sep 2025 10:31:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-0000000269A-2NvS;
	Mon, 08 Sep 2025 10:31:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Sep 2025 10:31:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-imx8-snvs-v1-1-1049458a0286@pengutronix.de>
References: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
In-Reply-To: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757320317; l=5498;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3KSnG1uypacGabE7xF8sHNwxGpw/vPqPeKHP7JX3IBI=;
 b=txy1qobBDoLzI8KbOY7tvzCAc1wqN/2HDmsEDrUHUZX39rZwmeIBBH+3KSyaYgQppsUx/IvV1
 wEhVBFJTNLBDlX7H5zed5GJ8ekWO0fbW0ZuP8t31wbyaX5n76E3BJ3C
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_013201_711325_E442A525 
X-CRM114-Status: GOOD (  16.48  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] ARM: i.MX8M: initialize SNVS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Secure Non Volatile Storage (SNVS) needs some initialization on
i.MX8M. Add that into the startup path. The code is based on the
corresponding U-Boot code. This also adds the necessary code for i.MX7,
but this is untested and thus not enabled currently.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig     |  5 +++++
 arch/arm/mach-imx/Makefile    |  1 +
 arch/arm/mach-imx/atf.c       |  5 +++++
 arch/arm/mach-imx/snvs.c      | 44 +++++++++++++++++++++++++++++++++++++++++++
 include/mach/imx/imx8m-regs.h |  1 +
 include/mach/imx/snvs.h       |  9 +++++++++
 6 files changed, 65 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 0d745ce2315834ec5d0c366d227b40f2adff5e83..2c10b8ffdc4f8c67fc5a0ace9e5e0f385a676e1d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -52,6 +52,11 @@ config ARCH_IMX_TZASC
 	default y if PBL_OPTEE
 	select ARM_EXCEPTIONS_PBL
 
+config ARCH_IMX_SNVS
+	bool
+	depends on ARCH_IMX7 || ARCH_IMX8M
+	default y
+
 #
 # PMIC configuration found on i.MX51 Babbadge board
 #
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index f81fa18e9214d7c3b60d04454bfb73eda0a6b5f4..a7d60068b954d7845f6a702c20733eec63e2b658 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -40,3 +40,4 @@ pbl-y += xload-spi.o xload-common.o xload-imx-nand.o xload-gpmi-nand.o
 pbl-y += xload-qspi.o
 obj-pbl-$(CONFIG_ARCH_IMX9) += ele.o
 obj-pbl-$(CONFIG_ARCH_IMX9) += imx93-trdc.o
+lwl-$(CONFIG_ARCH_IMX_SNVS) += snvs.o
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 11fe0334059d104a003ee084c618ff6f0d66ea3c..94536d346d57e7926c1ab89a9a4c53439f7649f3 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -17,6 +17,7 @@
 #include <tee/optee.h>
 #include <mach/imx/ele.h>
 #include <mach/imx/xload.h>
+#include <mach/imx/snvs.h>
 
 /**
  * imx8m_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
@@ -155,6 +156,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
 	imx_set_cpu_type(IMX_CPU_IMX8MM);
 	imx8mm_init_scratch_space();
 	imx8m_save_bootrom_log();
+	imx8m_setup_snvs();
 	imx8mm_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE)) {
@@ -229,6 +231,7 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *bl33)
 	imx_set_cpu_type(IMX_CPU_IMX8MP);
 	imx8mp_init_scratch_space();
 	imx8m_save_bootrom_log();
+	imx8m_setup_snvs();
 	imx8mp_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE)) {
@@ -304,6 +307,7 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *bl33)
 	imx_set_cpu_type(IMX_CPU_IMX8MN);
 	imx8mn_init_scratch_space();
 	imx8m_save_bootrom_log();
+	imx8m_setup_snvs();
 	imx8mn_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE)) {
@@ -372,6 +376,7 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *bl33)
 	imx_set_cpu_type(IMX_CPU_IMX8MQ);
 	imx8mq_init_scratch_space();
 	imx8m_save_bootrom_log();
+	imx8m_setup_snvs();
 	imx8mq_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_OPTEE)) {
diff --git a/arch/arm/mach-imx/snvs.c b/arch/arm/mach-imx/snvs.c
new file mode 100644
index 0000000000000000000000000000000000000000..80df62ad966b7edd4843eb480df2a097db499d8f
--- /dev/null
+++ b/arch/arm/mach-imx/snvs.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <io.h>
+#include <linux/bits.h>
+#include <mach/imx/snvs.h>
+#include <mach/imx/imx7-regs.h>
+#include <mach/imx/imx8m-regs.h>
+
+#define SNVS_HPCOMR	0x04
+#define SNVS_HPCOMR_NPSWA_EN	BIT(31)
+
+#define SNVS_LPSR	0x4c
+
+#define SNVS_LPLVDR	0x64
+#define SNVS_LPPGDR_INIT	0x41736166
+
+static void snvs_init(void __iomem *snvs)
+{
+	u32 val;
+
+	/* Ensure SNVS HPCOMR sets NPSWA_EN to allow unpriv access to SNVS LP */
+	val = readl(snvs + SNVS_HPCOMR);
+	val |= SNVS_HPCOMR_NPSWA_EN;
+	writel(val, snvs + SNVS_HPCOMR);
+}
+
+void imx7_snvs_init(void)
+{
+	void __iomem *snvs = IOMEM(MX7_SNVS_BASE_ADDR);
+
+	snvs_init(snvs);
+}
+
+void imx8m_setup_snvs(void)
+{
+	void __iomem *snvs = IOMEM(MX8M_SNVS_BASE_ADDR);
+
+        /* Initialize glitch detect */
+        writel(SNVS_LPPGDR_INIT, snvs + SNVS_LPLVDR);
+        /* Clear interrupt status */
+        writel(0xffffffff, snvs + SNVS_LPSR);
+
+        snvs_init(snvs);
+}
diff --git a/include/mach/imx/imx8m-regs.h b/include/mach/imx/imx8m-regs.h
index d101b88cc4a67fed706dde157a86dc1bda217ca1..a69ca4c27e211224fffd1736dd9b76d7dbc163a1 100644
--- a/include/mach/imx/imx8m-regs.h
+++ b/include/mach/imx/imx8m-regs.h
@@ -25,6 +25,7 @@
 #define MX8M_IOMUXC_GPR_BASE_ADDR	0x30340000
 #define MX8M_OCOTP_BASE_ADDR		0x30350000
 #define MX8M_ANATOP_BASE_ADDR		0x30360000
+#define MX8M_SNVS_BASE_ADDR		0x30370000
 #define MX8M_CCM_BASE_ADDR		0x30380000
 #define MX8M_SRC_BASE_ADDR		0x30390000
 #define MX8M_SRC_DDRC_RCR_ADDR		0x30391000
diff --git a/include/mach/imx/snvs.h b/include/mach/imx/snvs.h
new file mode 100644
index 0000000000000000000000000000000000000000..01154d57d9bd8d6804f2b7f3d634fae1121b9fb7
--- /dev/null
+++ b/include/mach/imx/snvs.h
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#ifndef __MACH_IMX_SNVS_H
+#define __MACH_IMX_SNVS_H
+
+void imx7_snvs_init(void);
+void imx8m_setup_snvs(void);
+
+#endif /* __MACH_IMX_SNVS_H */

-- 
2.47.3



