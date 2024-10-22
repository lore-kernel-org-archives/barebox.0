Delivery-date: Tue, 22 Oct 2024 09:49:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dW-007Nf1-1Y
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 09:49:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dV-0006BW-KM
	for lore@pengutronix.de; Tue, 22 Oct 2024 09:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q0oU9q5SP4RJ4P9H8upJk2TfKejEg6aA/j0PlmBxrZM=; b=JZ5vBvbCd+IWsfMk5NpiqNONT0
	THk5oLTt5sUL3HY7XSmGMxzQYNV+7w2K9mhAEyTeQfQlXBZTuw3OzTziSmVvT1/sCAPJT6Ec4N078
	ws6rO/KywxTZ6gVyZ4o0+hKH9Kp7n0ywrJHh8naQ0B5B6DncxQ9g7bQHczoB7PNF/2h1/ZlJN+nhy
	ZBDKloI5hgQCmiD/do+lkAax0s6UgQpLUHu5wNNoqazyEZQsQqf7E8uiKiyEgkEMlXZR1VNEZBR0x
	OK9FcjVxRjnZ/H1YBdYdVhUbotnKND4cP8bUsFO5TgJ7aAFBUKeiqEepE5qPB+a2jtTEkF5Owsj8R
	pykMf8LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39cr-0000000A2VJ-1WtB;
	Tue, 22 Oct 2024 07:48:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39b2-0000000A2H4-3Jog
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 07:46:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39b0-0005hr-9Z; Tue, 22 Oct 2024 09:46:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-000pLR-3A;
	Tue, 22 Oct 2024 09:46:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-00BzDi-2w;
	Tue, 22 Oct 2024 09:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Oct 2024 09:46:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-arm-layerscape-tfa-v2-9-69ac70ceb0ff@pengutronix.de>
References: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
In-Reply-To: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729583185; l=4035;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rteEOf4Ta5oYaZ+0akZ3ByypFeZ5/qvHQisF8Bt7zjM=;
 b=laEVXMi7LsDiP0JqULJJ+N7XIx4d3UkMQJOCnkhG0R12m1NyFEKZo0wO6rKCHRNiy9F4BHQK4
 pfa+817yP49CFo9f+MnMIk9q1d+MfLBR3ZBBBYY9oJs6KuCpv7jyrRY
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_004629_233718_9085D01A 
X-CRM114-Status: GOOD (  16.19  )
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
Subject: [PATCH v2 09/12] ARM: Layerscape: TQMLS1046a: Switch to TF-A
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we can start TF-A on LS1046a based boards switch the TQMLS1046a
over to use this rather than deprecated PPA.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/board.c    |  7 ++++---
 arch/arm/boards/tqmls1046a/lowlevel.c | 32 ++++++++++++++++++++++++++++++--
 arch/arm/boards/tqmls1046a/start.S    | 14 +++++++++++++-
 3 files changed, 47 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
index d30cd37747..c8a7f06d76 100644
--- a/arch/arm/boards/tqmls1046a/board.c
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -15,6 +15,7 @@
 
 static void ls1046a_add_memory(void)
 {
+	struct resource *res;
 	u32 cs0_bnds;
 	u64 memsize, lower, upper;
 	int ret;
@@ -41,9 +42,9 @@ static void ls1046a_add_memory(void)
 		arm_add_mem_device("ram1", 0x880000000, upper);
 	}
 
-	ret = ls1046a_ppa_init(0x100000000 - SZ_64M, SZ_64M);
-	if (ret)
-		pr_err("Failed to initialize PPA firmware: %s\n", strerror(-ret));
+	res = reserve_sdram_region("tfa", 0xfbe00000, 0x4200000);
+
+	of_register_fixup(of_fixup_reserved_memory, res);
 }
 
 static int tqmls1046a_postcore_init(void)
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 5ccafb2d77..e139fe19a1 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -300,15 +300,41 @@ static int tqmls1046a_get_variant(void)
 	return variant;
 }
 
+static struct dram_regions_info dram_info_2g = {
+	.num_dram_regions = 1,
+	.total_dram_size = SZ_2G,
+	.region = {
+		{
+			.addr = SZ_2G,
+			.size = SZ_2G,
+		},
+	},
+};
+
+static struct dram_regions_info dram_info_8g = {
+	.num_dram_regions = 2,
+	.total_dram_size = SZ_8G,
+	.region = {
+		{
+			.addr = SZ_2G,
+			.size = SZ_2G,
+		}, {
+			.addr = SZ_32G + SZ_2G,
+			.size = SZ_4G + SZ_2G,
+		},
+	},
+};
+
 extern char __dtb_z_fsl_ls1046a_tqmls1046a_mbls10xxa_start[];
 
 static noinline __noreturn void tqmls1046a_r_entry(bool is_8g)
 {
 	unsigned long membase = LS1046A_DDR_SDRAM_BASE;
 	int board_variant = 0;
+	struct dram_regions_info *dram_info;
 
 	if (get_pc() >= membase)
-		barebox_arm_entry(membase, 0x80000000 - SZ_64M,
+		barebox_arm_entry(membase, 0x80000000 - SZ_128M,
 				  __dtb_z_fsl_ls1046a_tqmls1046a_mbls10xxa_start);
 
 	arm_cpu_lowlevel_init();
@@ -321,17 +347,19 @@ static noinline __noreturn void tqmls1046a_r_entry(bool is_8g)
 
 	if (is_8g) {
 		board_variant = tqmls1046a_get_variant();
+		dram_info = &dram_info_8g;
 		if (board_variant == TQ_VARIANT_TQMLS1046A_CA)
 			fsl_ddr_set_memctl_regs(&tqmls1046a_ddrc_8g_ca[0], 0, false);
 		else
 			fsl_ddr_set_memctl_regs(&tqmls1046a_ddrc_8g[0], 0, false);
 	} else {
+		dram_info = &dram_info_2g;
 		fsl_ddr_set_memctl_regs(&tqmls1046a_ddrc[0], 0, false);
 	}
 
 	ls1046a_errata_post_ddr();
 
-	ls1046a_xload_start_image(NULL);
+	ls1046a_xload_start_image(dram_info);
 
 	pr_err("Booting failed\n");
 
diff --git a/arch/arm/boards/tqmls1046a/start.S b/arch/arm/boards/tqmls1046a/start.S
index 84c4626880..c812a35768 100644
--- a/arch/arm/boards/tqmls1046a/start.S
+++ b/arch/arm/boards/tqmls1046a/start.S
@@ -1,8 +1,13 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
 #include <linux/linkage.h>
 #include <asm/barebox-arm64.h>
+#include <asm/assembler64.h>
 
-#define STACK_TOP 0x10020000
+/*
+ * OCRAM is occupied by TF-A, so in EL2 and EL1 use a temporary stack in SDRAM
+ */
+#define STACK_TOP		0x10020000
+#define STACK_TOP_TMP_SDRAM	0x90000000
 
 ENTRY_PROC(start_tqmls1046a)
 	mov x3, #STACK_TOP
@@ -11,7 +16,14 @@ ENTRY_PROC(start_tqmls1046a)
 ENTRY_PROC_END(start_tqmls1046a)
 
 ENTRY_PROC(start_tqmls1046a_8g)
+	switch_el x3, 3f, 2f, 1f
+3:
 	mov x3, #STACK_TOP
 	mov sp, x3
 	b tqmls1046a_8g_entry
+2:
+1:
+	mov x3, STACK_TOP_TMP_SDRAM
+	mov sp, x3
+	b tqmls1046a_8g_entry
 ENTRY_PROC_END(start_tqmls1046a_8g)

-- 
2.39.5



