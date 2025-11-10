Delivery-date: Mon, 10 Nov 2025 21:35:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcG-00HVUF-0E
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcD-0002R7-01
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FZOm+rbGXTz55VZrLrp9wxTOaKleINL8rzkcFc6tBts=; b=0nyDHHIf9F6oIilts4+gTBpK4V
	4yNRouHogm1GmmE1noRShCUNQyKmpM8iInosMeuUQOQuHA0t3ZVeLMMeeJjOZG6jC/Sl1GH3cPU0E
	UdP4Dge/aD5x4nv6KVJ6vryShjSiJKraKWoD1/ldoQRzY4rU4op722Mb5yBSM8Ks3zZKJe7ga1cuJ
	8zaFdxsKw6jJrWTAdyGeyiUd539EIu9ug9d+SR+kAAz82KGgS7+vt0iKTbQOpoee487phPVMZCWQF
	GsqKuGeAQ75OObrubb44aW6w5cMPOI1a2h5O8dY9rZSNk0Kr2R2/bqVhmMprotIiej343tyhcfkqm
	+ICwjf2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbI-000000065ae-2peK;
	Mon, 10 Nov 2025 20:34:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbE-000000065WW-2mKz
	for barebox@bombadil.infradead.org;
	Mon, 10 Nov 2025 20:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=FZOm+rbGXTz55VZrLrp9wxTOaKleINL8rzkcFc6tBts=; b=c60h/Q7IpOAtplVp6MV6JP2fu3
	96QE17NMt1+u9bufzm51NhYa96XDLhNLeOWUjhSfwgOsk8hb3JcqaUzEml1ZvzNRK1FzGhgCvGPaq
	1R7Eg3UUOt2QjNn4TWV/X6fOlaN8Pa8RDMizryvdQiGzOYkd9IFUm8Zci4QzqT8/Ak75qxCxh/iFc
	xsvFgBeuEkeh+e4EmBnu0cX0kDaohy+9xMZKeQjdM0rnlVY28vAN8DgU3iY8sVBhbDRO35eRO6Jma
	i5+vwkLXN2o4jW13IAWWd+IpcgWnEPzPjqK7uoJB0RJwc3RkGXz+KajAvcVvY3JNQ8XcVW1buKCjJ
	MBhOHGMw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXjV-0000000BgCy-3rO8
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 19:39:23 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-Pt; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-13-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_193922_090834_A8F0E3F7 
X-CRM114-Status: GOOD (  16.50  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 13/23] ARM: i.MX8M: add support to pass BL3x bl_params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support to handover the BL32 and BL33 entrypoints via the TF-A
struct::bl_params in arg0. This eliminates the requirement to share the
different load addresses between multiple binaries to lower the BSP
integration effort.

In addition to the entriespoints, this commit also adds the support to
pass the builtin barebox DTB to OP-TEE if enabled.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 13 +++++++++++
 arch/arm/mach-imx/atf.c   | 56 ++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 0d745ce2315834ec5d0c366d227b40f2adff5e83..4e2c82c4bdda712931371a7cb122470fe3441650 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -38,6 +38,19 @@ config ARCH_IMX_ATF
 	def_bool y
 	depends on ARCH_IMX8M || ARCH_IMX9
 
+config ARCH_IMX_ATF_PASS_BL_PARAMS
+	bool "Pass BL3x bl_params as arg0 to TF-A"
+	depends on ARCH_IMX_ATF
+	select ARM_ATF
+	select ARCH_HAS_EARLY_FDT_SUPPORT
+	help
+	  Enable this option if you are using an upstream TF-A that uses
+	  the struct::bl_params to handover all required BL32 and BL33
+	  information required to start the BL32 and BL33 image.
+
+	  Since upstream TF-A v2.12 all i.MX8M support this feature except for
+	  the i.MX8MQ.
+
 config ARCH_IMX_ROMAPI
 	def_bool y
 	depends on ARCH_IMX8M || ARCH_IMX9
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index f4d4774b9eec798dd69042560d83f7313c0cb74f..baaf0bcc843a72021f97591348e9d165a34d0640 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+#include <asm/atf_common.h>
 #include <asm/sections.h>
 #include <common.h>
 #include <firmware.h>
@@ -108,7 +109,60 @@ imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
 	asm volatile("msr sp_el2, %0" : :
 		     "r" (tfa_dest - 16) :
 		     "cc");
-	bl31();
+
+	/*
+	 * All upstream TF-A versions should be able to handle params passed via
+	 * x0-x3. However, if not explicit enabled don't pass any params to the
+	 * TF-A since downstream TF-A versions may have problems. Also don't
+	 * pass params for i.MX8MQ SoCs since this platform has no upstream
+	 * support yet.
+	 */
+	if (!IS_ENABLED(CONFIG_ARCH_IMX_ATF_PASS_BL_PARAMS) || cpu_is_mx8mq()) {
+		pr_debug("Jump to BL31 without bl-params\n");
+		bl31();
+	} else {
+		struct bl2_to_bl31_params_mem_v2 *params;
+		unsigned int bufsz = 0;
+		void *buf;
+
+		imx_scratch_get_fdt(&buf, &bufsz);
+		ret = pbl_load_fdt(fdt, buf, bufsz);
+		if (!ret) {
+			unsigned long mem_base = MX8M_DDR_CSD1_BASE_ADDR;
+			unsigned long mem_sz;
+
+			if (cpu_is_mx8mn())
+				mem_sz = imx8m_ddrc_sdram_size(16);
+			else
+				mem_sz = imx8m_ddrc_sdram_size(32);
+
+			fdt = buf;
+			ret = fdt_fixup_mem(fdt, &mem_base, &mem_sz, 1);
+			if (ret) {
+				pr_warn("Failed to fixup FDT memory node, continue without\n");
+				fdt = NULL;
+			}
+		} else {
+			if (ret == -ENOTSUPP)
+				pr_debug("PBL_EARLY_FDT_LOAD disabled, continue without\n");
+			else
+				pr_warn("Failed to load FDT, continue without\n");
+			fdt = NULL;
+		}
+
+		/* Prepare bl_params for BL32 */
+		params = bl2_plat_get_bl31_params_v2((uintptr_t)bl32,
+					       (uintptr_t)bl33, (uintptr_t)fdt);
+
+		/*
+		 * Start BL31 without passing the FDT via x1 since the mainline
+		 * TF-A doesn't support it yet.
+		 */
+		pr_debug("Jump to BL31 with bl-params (%s BL32-FDT)\n",
+			 fdt ? "including" : "excluding");
+		bl31_entry_v2((uintptr_t)bl31, &params->bl_params, NULL);
+	}
+
 	__builtin_unreachable();
 }
 

-- 
2.47.3



