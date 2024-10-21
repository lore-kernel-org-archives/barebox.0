Delivery-date: Mon, 21 Oct 2024 10:30:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2noO-00704K-0F
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 10:30:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2noN-0006QF-6h
	for lore@pengutronix.de; Mon, 21 Oct 2024 10:30:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9p6oOLwMOHOSABSKhuzoO0/wLKC7YrhKhsM+7fh16yE=; b=UqPChV696suYk5S51nmxROzcP2
	6rV4tEzXDJcFVePolMFJM+G1xnqdsX2P/gMJnOxp3HEp3dEGmmzRo0TxMkjVhfU4JTzpDRSp0VICY
	zNU8pfUATZ+PycY8r29PmB0ZiMGIPbNrpxCaaXm3Rmb4slfN2akLRZtV810OUp2TmPUiPlRBF9nfh
	EY+EMb1ky+rpuNQ2i5cI7ACpmu+7qHeXnlm3ZOFl1LVtm7CdkoRKiIK3x5ZeJdEGJXCu7Durg/Avz
	4cC92Ph+t2DXhmqhx8mtYaana7UhgccmUlpEIp6Vathv0yTZsq0zwWBlMsU2TIl6xSfBUrDHogVCS
	TuklByPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2no6-00000006Y9Q-2z2C;
	Mon, 21 Oct 2024 08:30:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mj9-00000006Lmi-3AUV
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 07:21:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-0005nv-UT; Mon, 21 Oct 2024 09:21:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-000ecU-1r;
	Mon, 21 Oct 2024 09:21:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-00FGWz-1Z;
	Mon, 21 Oct 2024 09:21:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Oct 2024 09:21:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-arm-layerscape-tfa-v1-7-0980697b6f66@pengutronix.de>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
In-Reply-To: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729495277; l=4119;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=PuGfdyL+wH1LSwELK/MJePL6MtsRQgDl+Gtl24NWVm8=;
 b=PYF91G/6qeF5tJ9t/Q3FL1y87qsLpxxR2roo2yh8PhExPMb6tmVjGojIGLMA/tOSWPPYHS/ni
 B2lVQRv5bdyCikTT6EpsImyUexCxzsmiwlHNQ6A6EV7E1FoI+rZ6Ues
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_002119_901893_A6570FB8 
X-CRM114-Status: GOOD (  15.99  )
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
Subject: [PATCH 7/9] ARM: Layerscape: TQMLS1046a: Switch to TF-A support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we can start TF-A on LS1046a based boards switch the TQMLS1046a
over to use this rather than deprecated PPA.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/board.c    |  8 ++++----
 arch/arm/boards/tqmls1046a/lowlevel.c | 32 ++++++++++++++++++++++++++++++--
 arch/arm/boards/tqmls1046a/start.S    | 14 +++++++++++++-
 3 files changed, 47 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
index df49d0f780..99344e6e95 100644
--- a/arch/arm/boards/tqmls1046a/board.c
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -15,9 +15,9 @@
 
 static void ls1046a_add_memory(void)
 {
+	struct resource *res;
 	u32 cs0_bnds;
 	unsigned long long memsize, lower, upper;
-	int ret;
 
 	cs0_bnds = in_be32(LS1046A_DDRC_BASE);
 	switch (cs0_bnds) {
@@ -41,9 +41,9 @@ static void ls1046a_add_memory(void)
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



