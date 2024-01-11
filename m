Delivery-date: Thu, 11 Jan 2024 12:52:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtc1-00CwDU-09
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:52:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtbz-0003d6-R2
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:52:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WgjnEbCxEUQeD4DcgtMwzEM4SwzTasnVJJhALcuWSC4=; b=xnGHvdFCyTKabL6pzbCsCVCziD
	5mL5ss1nyubwDWXBtgiG5I9ghGNC5QpLjIpC6tQAfwEUkVhEbVb36Z4uMUZYbmoXB5gvrxu7PP9mF
	G/SCB7Bzn9Pmh7NROXN7b1V6jA+pKiz6FTpL8qlkTgES1o8ijaVuD1dsqEFXdPpKa1eNB6dNhTDm3
	QrF3pBZTfieejgI0C9w12T9u2aZMFuh9H1mp//4m6BC+YANLHK5xQNMV0yPkVOgAobEE1DQChs51t
	gjzLM1b7dp1AKWcVrWxQ7Y8gIfVXgzT2Cnochd0H1w9BKXq/4eUrxRPLjimEh71fqqetbNjvuNEFm
	INU7bTLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtau-00HVPX-0w;
	Thu, 11 Jan 2024 11:51:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtaq-00HVNC-2T
	for barebox@bombadil.infradead.org;
	Thu, 11 Jan 2024 11:51:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=WgjnEbCxEUQeD4DcgtMwzEM4SwzTasnVJJhALcuWSC4=; b=naYYdxYas4RT66ls05h7enqDLu
	z4mgvPFp1LDzbd+EtSwV68sC0JiBerKBPTHs8L00wOj9IXMNiBrNmaOgkQfaK7V08BcgejA1OuQkL
	vPE3Z1dN9SCXFcf7wzGUrCmak4PAeSDxet0VLJj+qRWVO4DuyG/sLe3OmwubRT190HVFrjnS7oPIp
	BaitfMP0hfTb189vcq9nk4B66SyGUTynnnYEI6qEKdx1ewDfHXzTjpw4JqxJ0uFnmN8yvZavYFJhZ
	oo3wtLlGFf4P7KSBdefrOdtvrQNu70ac1L8v1T4AHsFk8guhLecKWpW/BC198RIdagVRVdFoZEhN5
	/xjiIHnQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtak-00AIev-10
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:51:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtaj-0003C1-SM
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:51:21 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:51:20 +0100
Message-Id: <20240111115120.2678876-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111115120.2678876-1-m.felsch@pengutronix.de>
References: <20240111115120.2678876-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_115124_091425_6DB71118 
X-CRM114-Status: GOOD (  29.52  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8M: convert the machine init to the soc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Convert the i.MX8M machine init code to the previously introduced soc
framework. The soc driver was mostly copied from Linux with slightly
adaptions for barebox. To the soc driver is called during the
postcore_initcall to keep the level aligned with the previous imx_init().

The ocotp clock must keept running else the ARM-SMCCC stuck for calls
where the TF-A tries to access the ocotp.

A sample output of the new introduced soc0 device:
|
|   barebox@FSL i.MX8MM EVKB:/ devinfo soc0
|   Bus: soc
|   Parameters:
|     family: Freescale i.MX (type: string)
|     machine: FSL i.MX8MM EVKB (type: string)
|     revision: 1.0 (type: string)
|     serial_number: 15182A09DAB5B3C9 (type: string)
|     soc_id: i.MX8MM (type: string)

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

this patch requires [1] to apply clean.

[1] https://lore.barebox.org/barebox/20240111114841.2676939-1-m.felsch@pengutronix.de/T/#m4671609237c48ccd3397d51245ea43f7c1fbba15

Regards,
  Marco

 arch/arm/mach-imx/Kconfig   |   1 +
 arch/arm/mach-imx/imx.c     |  12 +-
 arch/arm/mach-imx/imx8m.c   | 136 +----------------
 drivers/soc/imx/Makefile    |   1 +
 drivers/soc/imx/soc-imx8m.c | 297 ++++++++++++++++++++++++++++++++++++
 5 files changed, 308 insertions(+), 139 deletions(-)
 create mode 100644 drivers/soc/imx/soc-imx8m.c

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 60af3790549a..6dfd53bedccc 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -157,6 +157,7 @@ config ARCH_IMX8M
 	select IMX8M_DRAM
 	select PBL_VERIFY_PIGGY if HABV4
 	select ARM_USE_COMPRESSED_DTB
+	select SOC_BUS
 	imply FSL_CAAM_RNG_PBL_INIT if HAVE_OPTEE
 
 config ARCH_IMX8MM
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index c97e566e0c56..f3491c6df7fa 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -95,6 +95,10 @@ static int imx_init(void)
 			return 0;
 	}
 
+	/*
+	 * Don't add new SoCs to this list, instead use the new
+	 * soc framework (see soc-imx8m.c).
+	 */
 	if (cpu_is_mx1())
 		ret = imx1_init();
 	else if (cpu_is_mx21())
@@ -118,13 +122,13 @@ static int imx_init(void)
 	else if (cpu_is_mx7())
 		ret = imx7_init();
 	else if (cpu_is_mx8mm())
-		ret = imx8mm_init();
+		ret = 0;
 	else if (cpu_is_mx8mn())
-		ret = imx8mn_init();
+		ret = 0;
 	else if (cpu_is_mx8mp())
-		ret = imx8mp_init();
+		ret = 0;
 	else if (cpu_is_mx8mq())
-		ret = imx8mq_init();
+		ret = 0;
 	else if (cpu_is_mx93())
 		ret = imx93_init();
 	else if (cpu_is_vf610())
diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 03d6e7f64cde..52e42ee9ef63 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -2,27 +2,16 @@
 
 #include <init.h>
 #include <common.h>
-#include <asm/optee.h>
 #include <linux/sizes.h>
 #include <io.h>
-#include <pm_domain.h>
 #include <asm/syscounter.h>
 #include <asm/system.h>
 #include <mach/imx/generic.h>
-#include <mach/imx/revision.h>
-#include <mach/imx/imx8mq.h>
 #include <mach/imx/imx8m-ccm-regs.h>
-#include <mach/imx/reset-reason.h>
-#include <mach/imx/ocotp.h>
-#include <mach/imx/imx8mp-regs.h>
-#include <mach/imx/imx8mq-regs.h>
-#include <mach/imx/scratch.h>
-#include <mach/imx/tzasc.h>
 #include <soc/imx8m/clk-early.h>
-#include <tee/optee.h>
 
+#include <linux/bitfield.h>
 #include <linux/iopoll.h>
-#include <linux/arm-smccc.h>
 
 #define IMX_SIP_BUILDINFO			0xC2000003
 #define IMX_SIP_BUILDINFO_GET_COMMITHASH	0x00
@@ -50,129 +39,6 @@ void imx8m_ccgr_clock_disable(int index)
 	       ccm + IMX8M_CCM_CCGRn_CLR(index));
 }
 
-u64 imx8m_uid(void)
-{
-	return imx_ocotp_read_uid(IOMEM(MX8M_OCOTP_BASE_ADDR));
-}
-
-static int imx8m_init(const char *cputypestr)
-{
-	void __iomem *src = IOMEM(MX8M_SRC_BASE_ADDR);
-
-	genpd_activate();
-
-	/*
-	 * Reset reasons seem to be identical to that of i.MX7
-	 */
-	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
-	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
-
-	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled()) {
-		static struct of_optee_fixup_data optee_fixup_data = {
-			.shm_size = CONFIG_OPTEE_SHM_SIZE,
-			.method = "smc",
-		};
-
-		optee_set_membase(imx8m_scratch_get_optee_hdr());
-		of_optee_fixup(of_get_root_node(), &optee_fixup_data);
-		of_register_fixup(of_optee_fixup, &optee_fixup_data);
-	}
-
-	return 0;
-}
-
-int imx8mm_init(void)
-{
-	void __iomem *anatop = IOMEM(MX8M_ANATOP_BASE_ADDR);
-	uint32_t type = FIELD_GET(DIGPROG_MAJOR,
-				  readl(anatop + MX8MM_ANATOP_DIGPROG));
-	const char *cputypestr;
-
-	imx8mm_boot_save_loc();
-
-	switch (type) {
-	case IMX8M_CPUTYPE_IMX8MM:
-		cputypestr = "i.MX8MM";
-		break;
-	default:
-		cputypestr = "unknown i.MX8M";
-		break;
-	};
-
-	imx_set_silicon_revision(cputypestr, imx8mm_cpu_revision());
-
-	return imx8m_init(cputypestr);
-}
-
-int imx8mn_init(void)
-{
-	void __iomem *anatop = IOMEM(MX8M_ANATOP_BASE_ADDR);
-	uint32_t type = FIELD_GET(DIGPROG_MAJOR,
-				  readl(anatop + MX8MN_ANATOP_DIGPROG));
-	const char *cputypestr;
-
-	imx8mn_boot_save_loc();
-
-	switch (type) {
-	case IMX8M_CPUTYPE_IMX8MN:
-		cputypestr = "i.MX8MN";
-		break;
-	default:
-		cputypestr = "unknown i.MX8M";
-		break;
-	};
-
-	imx_set_silicon_revision(cputypestr, imx8mn_cpu_revision());
-
-	return imx8m_init(cputypestr);
-}
-
-int imx8mp_init(void)
-{
-	void __iomem *anatop = IOMEM(MX8MP_ANATOP_BASE_ADDR);
-	uint32_t type = FIELD_GET(DIGPROG_MAJOR,
-				  readl(anatop + MX8MP_ANATOP_DIGPROG));
-	const char *cputypestr;
-
-	imx8mp_boot_save_loc();
-
-	switch (type) {
-	case IMX8M_CPUTYPE_IMX8MP:
-		cputypestr = "i.MX8MP";
-		break;
-	default:
-		cputypestr = "unknown i.MX8M";
-		break;
-	};
-
-	imx_set_silicon_revision(cputypestr, imx8mp_cpu_revision());
-
-	return imx8m_init(cputypestr);
-}
-
-int imx8mq_init(void)
-{
-	void __iomem *anatop = IOMEM(MX8M_ANATOP_BASE_ADDR);
-	uint32_t type = FIELD_GET(DIGPROG_MAJOR,
-				  readl(anatop + MX8MQ_ANATOP_DIGPROG));
-	const char *cputypestr;
-
-	imx8mq_boot_save_loc();
-
-	switch (type) {
-	case IMX8M_CPUTYPE_IMX8MQ:
-		cputypestr = "i.MX8MQ";
-		break;
-	default:
-		cputypestr = "unknown i.MX8M";
-		break;
-	};
-
-	imx_set_silicon_revision(cputypestr, imx8mq_cpu_revision());
-
-	return imx8m_init(cputypestr);
-}
-
 #define INTPLL_DIV20_CLKE_MASK                  BIT(27)
 #define INTPLL_DIV10_CLKE_MASK                  BIT(25)
 #define INTPLL_DIV8_CLKE_MASK                   BIT(23)
diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index bd1717b03883..9d9c2e88798c 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
 obj-$(CONFIG_IMX8M_FEATCTRL) += imx8m-featctrl.o
+obj-$(CONFIG_ARCH_IMX8M) += soc-imx8m.o
diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
new file mode 100644
index 000000000000..79d649b65f27
--- /dev/null
+++ b/drivers/soc/imx/soc-imx8m.c
@@ -0,0 +1,297 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-FileCopyrightText: 2024 Marco Felsch, Pengutronix
+/*
+ * Based on Linux drivers/soc/imx/soc-imx8m.c:
+ * Copyright 2019 NXP.
+ */
+
+#include <init.h>
+#include <of.h>
+#include <of_address.h>
+#include <pm_domain.h>
+
+#include <asm/optee.h>
+
+#include <linux/io.h>
+#include <linux/slab.h>
+#include <linux/sys_soc.h>
+#include <linux/arm-smccc.h>
+#include <linux/clk.h>
+
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8m-regs.h>
+#include <mach/imx/reset-reason.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/scratch.h>
+#include <mach/imx/tzasc.h>
+
+#include <tee/optee.h>
+
+#define REV_B1				0x21
+
+#define IMX8MQ_SW_INFO_B1		0x40
+#define IMX8MQ_SW_MAGIC_B1		0xff0055aa
+
+#define IMX_SIP_GET_SOC_INFO		0xc2000006
+
+#define OCOTP_UID_LOW			0x410
+#define OCOTP_UID_HIGH			0x420
+
+#define IMX8MP_OCOTP_UID_OFFSET		0x10
+
+/* Same as ANADIG_DIGPROG_IMX7D */
+#define ANADIG_DIGPROG_IMX8MM	0x800
+
+struct imx8_soc_data {
+	char *name;
+	u32 (*soc_revision)(void);
+	void (*save_boot_loc)(void);
+};
+
+static u64 soc_uid;
+
+#ifdef CONFIG_HAVE_ARM_SMCCC
+static u32 imx8mq_soc_revision_from_atf(void)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(IMX_SIP_GET_SOC_INFO, 0, 0, 0, 0, 0, 0, 0, &res);
+
+	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
+		return 0;
+	else
+		return res.a0 & 0xff;
+}
+#else
+static inline u32 imx8mq_soc_revision_from_atf(void) { return 0; };
+#endif
+
+static u32 __init imx8mq_soc_revision(void)
+{
+	struct device_node *np;
+	void __iomem *ocotp_base;
+	u32 magic;
+	u32 rev;
+	struct clk *clk;
+
+	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mq-ocotp");
+	if (!np)
+		return 0;
+
+	ocotp_base = of_iomap(np, 0);
+	WARN_ON(!ocotp_base);
+	clk = of_clk_get_by_name(np, NULL);
+	if (IS_ERR(clk)) {
+		WARN_ON(IS_ERR(clk));
+		return 0;
+	}
+
+	clk_prepare_enable(clk);
+
+	/*
+	 * SOC revision on older imx8mq is not available in fuses so query
+	 * the value from ATF instead.
+	 */
+	rev = imx8mq_soc_revision_from_atf();
+	if (!rev) {
+		magic = readl_relaxed(ocotp_base + IMX8MQ_SW_INFO_B1);
+		if (magic == IMX8MQ_SW_MAGIC_B1)
+			rev = REV_B1;
+	}
+
+	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
+	soc_uid <<= 32;
+	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
+
+	/* Keep the OCOTP clk on for the TF-A else the CPU stuck */
+	of_node_put(np);
+
+	return rev;
+}
+
+static void __init imx8mm_soc_uid(void)
+{
+	void __iomem *ocotp_base;
+	struct device_node *np;
+	struct clk *clk;
+	u32 offset = of_machine_is_compatible("fsl,imx8mp") ?
+		     IMX8MP_OCOTP_UID_OFFSET : 0;
+
+	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-ocotp");
+	if (!np)
+		return;
+
+	ocotp_base = of_iomap(np, 0);
+	WARN_ON(!ocotp_base);
+	clk = of_clk_get_by_name(np, NULL);
+	if (IS_ERR(clk)) {
+		WARN_ON(IS_ERR(clk));
+		return;
+	}
+
+	clk_prepare_enable(clk);
+
+	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH + offset);
+	soc_uid <<= 32;
+	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW + offset);
+
+	/* Keep the OCOTP clk on for the TF-A else the CPU stuck */
+	of_node_put(np);
+}
+
+static u32 __init imx8mm_soc_revision(void)
+{
+	struct device_node *np;
+	void __iomem *anatop_base;
+	u32 rev;
+
+	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
+	if (!np)
+		return 0;
+
+	anatop_base = of_iomap(np, 0);
+	WARN_ON(!anatop_base);
+
+	rev = readl_relaxed(anatop_base + ANADIG_DIGPROG_IMX8MM);
+
+	of_node_put(np);
+
+	imx8mm_soc_uid();
+
+	return rev;
+}
+
+static const struct imx8_soc_data imx8mq_soc_data = {
+	.name = "i.MX8MQ",
+	.soc_revision = imx8mq_soc_revision,
+	.save_boot_loc = imx8mq_boot_save_loc,
+};
+
+static const struct imx8_soc_data imx8mm_soc_data = {
+	.name = "i.MX8MM",
+	.soc_revision = imx8mm_soc_revision,
+	.save_boot_loc = imx8mm_boot_save_loc,
+};
+
+static const struct imx8_soc_data imx8mn_soc_data = {
+	.name = "i.MX8MN",
+	.soc_revision = imx8mm_soc_revision,
+	.save_boot_loc = imx8mn_boot_save_loc,
+};
+
+static const struct imx8_soc_data imx8mp_soc_data = {
+	.name = "i.MX8MP",
+	.soc_revision = imx8mm_soc_revision,
+	.save_boot_loc = imx8mp_boot_save_loc,
+};
+
+static __maybe_unused const struct of_device_id imx8_soc_match[] = {
+	{ .compatible = "fsl,imx8mq", .data = &imx8mq_soc_data, },
+	{ .compatible = "fsl,imx8mm", .data = &imx8mm_soc_data, },
+	{ .compatible = "fsl,imx8mn", .data = &imx8mn_soc_data, },
+	{ .compatible = "fsl,imx8mp", .data = &imx8mp_soc_data, },
+	{ }
+};
+
+static int imx8_soc_imx8m_init(struct soc_device_attribute *soc_dev_attr)
+{
+	void __iomem *src = IOMEM(MX8M_SRC_BASE_ADDR);
+	const char *uid = soc_dev_attr->serial_number;
+	const char *cputypestr = soc_dev_attr->soc_id;
+
+	genpd_activate();
+
+	/*
+	 * Reset reasons seem to be identical to that of i.MX7
+	 */
+	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
+	pr_info("%s unique ID: %s\n", cputypestr, uid);
+
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled()) {
+		static struct of_optee_fixup_data optee_fixup_data = {
+			.shm_size = CONFIG_OPTEE_SHM_SIZE,
+			.method = "smc",
+		};
+
+		optee_set_membase(imx8m_scratch_get_optee_hdr());
+		of_optee_fixup(of_get_root_node(), &optee_fixup_data);
+		of_register_fixup(of_optee_fixup, &optee_fixup_data);
+	}
+
+	return 0;
+}
+
+#define imx8_revision(soc_rev) \
+	soc_rev ? \
+	basprintf("%d.%d", (soc_rev >> 4) & 0xf,  soc_rev & 0xf) : \
+	"unknown"
+
+static int __init imx8_soc_init(void)
+{
+	struct device_node *of_root = of_get_root_node();
+	struct soc_device_attribute *soc_dev_attr;
+	struct soc_device *soc_dev;
+	const struct of_device_id *id;
+	u32 soc_rev = 0;
+	const struct imx8_soc_data *data;
+	int ret;
+
+	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
+	if (!soc_dev_attr)
+		return -ENOMEM;
+
+	soc_dev_attr->family = "Freescale i.MX";
+
+	ret = of_property_read_string(of_root, "model", &soc_dev_attr->machine);
+	if (ret)
+		goto free_soc;
+
+	id = of_match_node(imx8_soc_match, of_root);
+	if (!id) {
+		ret = -ENODEV;
+		goto free_soc;
+	}
+
+	data = id->data;
+	if (data) {
+		soc_dev_attr->soc_id = data->name;
+		if (data->soc_revision)
+			soc_rev = data->soc_revision();
+		if (data->save_boot_loc)
+			data->save_boot_loc();
+	}
+
+	soc_dev_attr->revision = imx8_revision(soc_rev);
+	if (!soc_dev_attr->revision) {
+		ret = -ENOMEM;
+		goto free_soc;
+	}
+
+	soc_dev_attr->serial_number = basprintf("%016llX", soc_uid);
+	if (!soc_dev_attr->serial_number) {
+		ret = -ENOMEM;
+		goto free_rev;
+	}
+
+	soc_dev = soc_device_register(soc_dev_attr);
+	if (IS_ERR(soc_dev)) {
+		ret = PTR_ERR(soc_dev);
+		goto free_serial_number;
+	}
+
+	imx_set_silicon_revision(soc_dev_attr->soc_id, soc_rev);
+
+	return imx8_soc_imx8m_init(soc_dev_attr);
+
+free_serial_number:
+	kfree(soc_dev_attr->serial_number);
+free_rev:
+	if (strcmp(soc_dev_attr->revision, "unknown"))
+		kfree(soc_dev_attr->revision);
+free_soc:
+	kfree(soc_dev_attr);
+	return ret;
+}
+/* Aligned with imx_init() to not cause regressions */
+postcore_initcall(imx8_soc_init);
+MODULE_LICENSE("GPL");
-- 
2.39.2



