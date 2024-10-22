Delivery-date: Tue, 22 Oct 2024 10:05:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39tE-007Ntq-0H
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:05:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39tD-0008LH-0b
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:05:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6r4cgcBSt7i3c8KuquaZiDOSblsatXr5nvndTofHesQ=; b=dmZQHKnHHlw7a1ImC3XEOVSGnW
	McPt529QcbyGqyd81HUxZ6lPAA8cSWvT+0ZwYvggtqo3a/BabsZssk0HC9qBgiiyGwNujRNf05gtZ
	hnv7tWsJPjKzQNl7onclGfvmOqMWPCuGgBLAowKdRAq3RGxyMnB/ScTRgqfh1eGNLAQLLO8lbjr81
	UI/iY4ZjexhoYLPcAFgGGx5oL1yFFrtfThVibRlbYUZoiMwcwuUGD4L8qQFKaskgK6D1DPRwOPmrm
	SSCW4BXZX2Kd2r8E9Z6FPMWt2k4As0+IiUyUFckPvGS9EkRnX45UA9725ADrOVGDSXyhOzu1HPhZY
	60+iFrFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39sc-0000000A65W-42Ts;
	Tue, 22 Oct 2024 08:04:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39sa-0000000A65M-3b88
	for barebox@bombadil.infradead.org;
	Tue, 22 Oct 2024 08:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=6r4cgcBSt7i3c8KuquaZiDOSblsatXr5nvndTofHesQ=; b=R0sYfdMRXTZmsCXu3Tq0DKHIhm
	R60vSlWj1UYzNUdfkyYMkbMUD3/eqEqNzY4VUEVruVdVer1Yh6u1LVKMyw+wsqeAoNRkULGOYUoi0
	TQHuH5dont86TKi9qz0CyQtKDh89+//KYt4eI0Ggt9WhtvXRzWV5xmwGNmGc2iWpEDMeU92RS2Ihn
	YU9yreemsGRbB5ZLravW0UAkfnOBwPLmPMtn9pEZMKdT+mDYQ460mBrXSzO22qwYs/DB14X+CdJE/
	y8CL11a1wEwJjtKL1qaq1bRdO4FzvKLJMXWygGxCMzeHNQNEDiDNHVhP+CZ+jMMJ1x05eVVSeK4Rb
	NLiWhAQg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39sV-000000089js-1c7j
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:04:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39sQ-0008Hr-MH; Tue, 22 Oct 2024 10:04:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39sQ-000pR9-1Y;
	Tue, 22 Oct 2024 10:04:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-00BzDi-2x;
	Tue, 22 Oct 2024 09:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Oct 2024 09:46:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-arm-layerscape-tfa-v2-10-69ac70ceb0ff@pengutronix.de>
References: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
In-Reply-To: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729583185; l=8224;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BvTrpsoiEKgzBTyrDmzacexwX5s0saHD2+Z1EOPLIpU=;
 b=BftAe9sfP2YjpM+hT6+kRyN5MQawKD8kV0OAYE7QrhMCU3OZZLsfmP0lOVX13nvsZ2prMsrvS
 44/hXwqUAiEDbFUIGjGVGfJLmUorr6zerexNrtbCpyE4vsN14YRpDg5
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_090432_026660_6225C241 
X-CRM114-Status: GOOD (  17.78  )
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
Subject: [PATCH v2 10/12] ARM: Layerscape: LS1046a: remove PPA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both LS1046a boards supported by barebox have been switched to TF-A, so
drop no longer used PPA support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/Kconfig     |  12 ---
 arch/arm/mach-layerscape/Makefile    |   1 -
 arch/arm/mach-layerscape/ppa-entry.S |  32 --------
 arch/arm/mach-layerscape/ppa.c       | 147 -----------------------------------
 firmware/Makefile                    |   1 -
 include/mach/layerscape/layerscape.h |  10 ---
 test/generate-dummy-fw.sh            |   1 -
 7 files changed, 204 deletions(-)

diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index 9d15ba0173..415ee93b99 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -2,18 +2,6 @@
 
 if ARCH_LAYERSCAPE
 
-config ARCH_LAYERSCAPE_PPA
-	bool "Include PPA firmware"
-	select ARM_PSCI_OF
-	select ARM_SMCCC
-	select FITIMAGE
-	help
-	  The "Primary Protected Application" (PPA) is a PSCI compliant firmware
-	  distributed by NXP. It is needed to start the secondary cores on
-	  Layerscape SoCs. Without it Linux will be started in EL3 and doesn't
-	  work properly. The precompiled firmware images can be found here:
-	  https://github.com/NXP/qoriq-ppa-binary
-
 config ARCH_LS1028
 	bool
 	select CPU_V8
diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index ee7df5ea19..10e1c031b9 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -7,7 +7,6 @@ obj-$(CONFIG_ARCH_LS1046) += icid.o
 obj-pbl-y += boot.o soc.o
 pbl-y += xload-qspi.o xload.o
 pbl-$(CONFIG_ARCH_LS1028) += tzc400.o
-obj-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa.o ppa-entry.o
 obj-$(CONFIG_BOOTM) += pblimage.o
 
 lwl-$(CONFIG_ARCH_LS1021) += lowlevel-ls102xa.o
diff --git a/arch/arm/mach-layerscape/ppa-entry.S b/arch/arm/mach-layerscape/ppa-entry.S
deleted file mode 100644
index f5f30b6719..0000000000
--- a/arch/arm/mach-layerscape/ppa-entry.S
+++ /dev/null
@@ -1,32 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <linux/linkage.h>
-
-.section .text.ppa_entry
-ENTRY(ppa_entry)
-	/*
-	 * x0: Secure Firmware entry point
-	 * x1: Exception return address Low
-	 * x2: Exception return address High
-	 */
-
-	/* Save stack pointer for EL2 */
-	mov	x3, sp
-	msr	sp_el2, x3
-
-	/* Set exception return address hold pointer */
-	adr	x4, 1f
-	mov	x3, x4
-	rev	w3, w3
-	str	w3, [x1]
-	lsr	x3, x4, #32
-	rev	w3, w3
-	str	w3, [x2]
-
-	/* Call SEC monitor */
-	br	x0
-
-1:
-	mov	x0, #0
-	ret
-ENDPROC(ppa_entry)
diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
deleted file mode 100644
index 99b76b4c30..0000000000
--- a/arch/arm/mach-layerscape/ppa.c
+++ /dev/null
@@ -1,147 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-
-#define pr_fmt(fmt) "ppa: " fmt
-
-#include <common.h>
-#include <init.h>
-#include <mmu.h>
-#include <firmware.h>
-#include <memory.h>
-#include <linux/sizes.h>
-#include <linux/arm-smccc.h>
-#include <asm/mmu.h>
-#include <soc/fsl/immap_lsch2.h>
-#include <asm/system.h>
-#include <image-fit.h>
-#include <asm/psci.h>
-#include <mach/layerscape/layerscape.h>
-#include <asm/cache.h>
-
-int ppa_entry(const void *, u32 *, u32 *);
-
-#define SEC_JR3_OFFSET                     0x40000
-
-static int of_psci_do_fixup(struct device_node *root, void *unused)
-{
-	unsigned long psci_version;
-	struct device_node *np;
-	struct arm_smccc_res res = {};
-
-	arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, 0, 0, 0, 0, &res);
-	psci_version = res.a0;
-
-	for_each_compatible_node_from(np, root, NULL, "fsl,sec-v4.0-job-ring") {
-		const void *reg;
-		int na = of_n_addr_cells(np);
-		u64 offset;
-
-		reg = of_get_property(np, "reg", NULL);
-		if (!reg)
-			continue;
-
-		offset = of_read_number(reg, na);
-		if (offset != SEC_JR3_OFFSET)
-			continue;
-
-		of_delete_node(np);
-		break;
-	}
-
-	return of_psci_fixup(root, psci_version, "smc");
-}
-
-static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
-{
-	int ret;
-	u32 *boot_loc_ptr_l, *boot_loc_ptr_h;
-	struct ccsr_scfg __iomem *scfg = (void *)(LSCH2_SCFG_ADDR);
-	struct fit_handle *fit;
-	void *conf;
-	const void *buf;
-	unsigned long firmware_size;
-
-	boot_loc_ptr_l = &scfg->scratchrw[1];
-	boot_loc_ptr_h = &scfg->scratchrw[0];
-
-	fit = fit_open_buf(ppa, ppa_size, false, BOOTM_VERIFY_AVAILABLE);
-	if (IS_ERR(fit)) {
-		pr_err("Cannot open ppa FIT image: %pe\n", fit);
-		return PTR_ERR(fit);
-	}
-
-	conf = fit_open_configuration(fit, NULL);
-	if (IS_ERR(conf)) {
-		pr_err("Cannot open default config in ppa FIT image: %pe\n", conf);
-		ret = PTR_ERR(conf);
-		goto err;
-	}
-
-
-	ret = fit_open_image(fit, conf, "firmware", &buf, &firmware_size);
-	if (ret) {
-		pr_err("Cannot open firmware image in ppa FIT image: %s\n",
-		       strerror(-ret));
-		goto err;
-	}
-
-	/* Copy the secure firmware to secure memory */
-	memcpy(sec_firmware_addr, buf, firmware_size);
-	sync_caches_for_execution();
-
-	ret = ppa_entry(sec_firmware_addr, boot_loc_ptr_l, boot_loc_ptr_h);
-	if (ret) {
-		pr_err("Couldn't install PPA firmware: %s\n", strerror(-ret));
-		goto err;
-	}
-
-	pr_info("PPA firmware installed at 0x%p, now in EL%d\n",
-		sec_firmware_addr, current_el());
-
-	of_register_fixup(of_psci_do_fixup, NULL);
-err:
-	fit_close(fit);
-
-	return ret;
-}
-
-int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
-{
-	resource_size_t ppa_end = ppa_start + ppa_size - 1;
-	struct resource *res;
-	void *ppa_fw;
-	size_t ppa_fw_size;
-	int el = current_el();
-	int ret;
-
-	res = reserve_sdram_region("ppa", ppa_start, ppa_size);
-	if (!res) {
-		pr_err("Cannot request SDRAM region %pa - %pa\n",
-		       &ppa_start, &ppa_end);
-		return -EINVAL;
-	}
-
-	get_builtin_firmware(ppa_ls1046a_bin, &ppa_fw, &ppa_fw_size);
-	if (!ppa_fw_size) {
-		pr_err("PPA Firmware was not included in build\n");
-		return -ENOSYS;
-	}
-
-	if (el == 3) {
-		unsigned long cr;
-
-		asm volatile("mrs %0, sctlr_el3" : "=r" (cr) : : "cc");
-		remap_range((void *)ppa_start, ppa_size, MAP_CACHED);
-
-		ret = ppa_init(ppa_fw, ppa_fw_size, (void *)ppa_start);
-
-		asm volatile("msr sctlr_el2, %0" : : "r" (cr) : "cc");
-		remap_range((void *)ppa_start, ppa_size, MAP_UNCACHED);
-
-		if (ret)
-			return ret;
-	}
-
-	of_register_fixup(of_fixup_reserved_memory, res);
-
-	return 0;
-}
diff --git a/firmware/Makefile b/firmware/Makefile
index 9351e24e86..fd63de1c55 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -31,7 +31,6 @@ pbl-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl31.bin
 pbl-firmware-$(CONFIG_ARCH_RK3399_OPTEE) += rk3399-op-tee.bin
 firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
 
-firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
 fw-external-$(CONFIG_FIRMWARE_LS1028A_ATF) += ls1028a-bl31.bin
 fw-external-$(CONFIG_FIRMWARE_LS1046A_ATF) += ls1046a-bl31.bin
 
diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
index 7f9dc7d8a1..ab8304ede0 100644
--- a/include/mach/layerscape/layerscape.h
+++ b/include/mach/layerscape/layerscape.h
@@ -32,16 +32,6 @@ enum bootsource ls1021a_bootsource_get(void);
 #define LAYERSCAPE_SOC_LS1028A		1028
 #define LAYERSCAPE_SOC_LS1046A		1046
 
-#ifdef CONFIG_ARCH_LAYERSCAPE_PPA
-int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size);
-#else
-static inline int ls1046a_ppa_init(resource_size_t ppa_start,
-				   resource_size_t ppa_size)
-{
-	return -ENOSYS;
-}
-#endif
-
 struct dram_region_info {
         uint64_t addr;
         uint64_t size;
diff --git a/test/generate-dummy-fw.sh b/test/generate-dummy-fw.sh
index 77d557da21..67c2cb0eee 100755
--- a/test/generate-dummy-fw.sh
+++ b/test/generate-dummy-fw.sh
@@ -49,7 +49,6 @@ FW_MVEBU_BINARY0="
 FW_NXP_LAYERSCAPE="
 	firmware/fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
 	firmware/ls1046a-bl31.bin
-	firmware/ppa-ls1046a.bin
 "
 
 FW="

-- 
2.39.5



