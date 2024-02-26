Delivery-date: Mon, 26 Feb 2024 15:41:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1recAi-0088kB-0H
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 15:41:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1recAa-0004i8-V0
	for lore@pengutronix.de; Mon, 26 Feb 2024 15:41:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aqwDSo084xl57dJ2ligm93fC9dCTtHyeHFLIibi7gnA=; b=qDyqeM1974Ql06L010Qatc8n+I
	RiikvzVMZ0C9Yex6ytAbdIAMaOqiSafosq56VMu5NW4iDYOGj/miBbY3nURO054+tC4wzYivr2pg8
	l/GRHPG5ppLIkbAAEZh56YLedc0mS8/KgCvCTeE5QQ9d+8el0U1q2m9QuLBrwM7wbup7Ui5CiEWq6
	LaMHXtORQjo5kzTkfmulCfbp9eJa7McdjDGqOScUyRDEibVxnwwPEEY6RQnIsJEhKMCL2pOulyMwv
	Unfk5dnWPE3LvlvQ6sXpHIXwkUkn+v1bwVaKcRMOUr5pJTBBJy7qdmZsIiceQNKOHCnS9qRovlzAx
	ps2eMcIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rec9w-00000001CiB-2bFf;
	Mon, 26 Feb 2024 14:40:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rec9t-00000001CgP-0OHY
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 14:40:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rec9j-0004Ob-Uj; Mon, 26 Feb 2024 15:40:35 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rec9j-0030wa-H3; Mon, 26 Feb 2024 15:40:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rec9i-002vPy-34;
	Mon, 26 Feb 2024 15:40:35 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 26 Feb 2024 15:40:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-3-2df2430da984@pengutronix.de>
References: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
In-Reply-To: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_064045_174995_5A86895A 
X-CRM114-Status: GOOD (  16.35  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] arm: mach-imx: tzasc: convert to cpu_is_mx8xyz macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of passing in configuration parameters at runtime we can utilize
the `cpu_is_mx8xyz` macro family to determine which bits should be set.

As the tzasc driver is imx specific, all functions are prefixed with
`imx8m_` as well.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/mach-imx/atf.c   |  8 ++++----
 arch/arm/mach-imx/imx8m.c |  2 +-
 arch/arm/mach-imx/tzasc.c | 25 +++++--------------------
 include/mach/imx/tzasc.h  |  8 ++------
 4 files changed, 12 insertions(+), 31 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index e8060ebd95..9cbc38ef11 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -158,7 +158,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
 		size_t bl32_size;
 		void *bl32_image;
 
-		imx8mm_tzc380_init();
+		imx8m_tzc380_init();
 		get_builtin_firmware_ext(imx8mm_bl32_bin,
 				bl33, &bl32_image,
 				&bl32_size);
@@ -229,7 +229,7 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *bl33)
 		size_t bl32_size;
 		void *bl32_image;
 
-		imx8mp_tzc380_init();
+		imx8m_tzc380_init();
 		get_builtin_firmware_ext(imx8mp_bl32_bin,
 				bl33, &bl32_image,
 				&bl32_size);
@@ -301,7 +301,7 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *bl33)
 		size_t bl32_size;
 		void *bl32_image;
 
-		imx8mn_tzc380_init();
+		imx8m_tzc380_init();
 		get_builtin_firmware_ext(imx8mn_bl32_bin,
 				bl33, &bl32_image,
 				&bl32_size);
@@ -366,7 +366,7 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *bl33)
 		size_t bl32_size;
 		void *bl32_image;
 
-		imx8mq_tzc380_init();
+		imx8m_tzc380_init();
 		get_builtin_firmware_ext(imx8mq_bl32_bin,
 				bl33, &bl32_image,
 				&bl32_size);
diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index ed0fe38a3b..ab9e8edb5b 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -68,7 +68,7 @@ static int imx8m_init(const char *cputypestr)
 	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
 	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
 
-	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled()) {
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && imx8m_tzc380_is_enabled()) {
 		static struct of_optee_fixup_data optee_fixup_data = {
 			.shm_size = OPTEE_SHM_SIZE,
 			.method = "smc",
diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
index 1f8d7426c1..4cb4d7c5cf 100644
--- a/arch/arm/mach-imx/tzasc.c
+++ b/arch/arm/mach-imx/tzasc.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+#include <mach/imx/generic.h>
 #include <mach/imx/tzasc.h>
 #include <linux/bitops.h>
 #include <mach/imx/imx8m-regs.h>
@@ -13,7 +14,7 @@
 #define MX8M_TZASC_REGION_ATTRIBUTES_0		(MX8M_TZASC_BASE_ADDR + 0x108)
 #define MX8M_TZASC_REGION_ATTRIBUTES_0_SP	GENMASK(31, 28)
 
-static void enable_tzc380(bool bypass_id_swap, bool bypass_id_swap_lock)
+void imx8m_tzc380_init(void)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
 
@@ -25,14 +26,14 @@ static void enable_tzc380(bool bypass_id_swap, bool bypass_id_swap_lock)
 	 * According to TRM, TZASC_ID_SWAP_BYPASS should be set in
 	 * order to avoid AXI Bus errors when GPU is in use
 	 */
-	if (bypass_id_swap)
+	if (cpu_is_mx8mm() || cpu_is_mx8mn() || cpu_is_mx8mp())
 		setbits_le32(&gpr[10], GPR_TZASC_ID_SWAP_BYPASS);
 
 	/*
 	 * imx8mn and imx8mp implements the lock bit for
 	 * TZASC_ID_SWAP_BYPASS, enable it to lock settings
 	 */
-	if (bypass_id_swap_lock)
+	if (cpu_is_mx8mn() || cpu_is_mx8mp())
 		setbits_le32(&gpr[10], GPR_TZASC_ID_SWAP_BYPASS_LOCK);
 
 	/*
@@ -44,23 +45,7 @@ static void enable_tzc380(bool bypass_id_swap, bool bypass_id_swap_lock)
 		   MX8M_TZASC_REGION_ATTRIBUTES_0);
 }
 
-void imx8mq_tzc380_init(void)
-{
-	enable_tzc380(false, false);
-}
-
-void imx8mm_tzc380_init(void)
-{
-	enable_tzc380(true, false);
-}
-
-void imx8mn_tzc380_init(void) __alias(imx8mp_tzc380_init);
-void imx8mp_tzc380_init(void)
-{
-	enable_tzc380(true, true);
-}
-
-bool tzc380_is_enabled(void)
+bool imx8m_tzc380_is_enabled(void)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
 
diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
index 724ba50ead..51c86f168e 100644
--- a/include/mach/imx/tzasc.h
+++ b/include/mach/imx/tzasc.h
@@ -6,11 +6,7 @@
 #include <linux/types.h>
 #include <asm/system.h>
 
-void imx8mq_tzc380_init(void);
-void imx8mm_tzc380_init(void);
-void imx8mn_tzc380_init(void);
-void imx8mp_tzc380_init(void);
-
-bool tzc380_is_enabled(void);
+void imx8m_tzc380_init(void);
+bool imx8m_tzc380_is_enabled(void);
 
 #endif

-- 
2.39.2



