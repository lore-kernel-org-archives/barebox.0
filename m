Delivery-date: Mon, 21 Oct 2024 10:31:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2nod-00706Y-1T
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 10:31:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2noc-0006bR-4N
	for lore@pengutronix.de; Mon, 21 Oct 2024 10:31:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8LJpQo/p+xupO3N/oWC986tOp5qz23UDFo8Oe8K08xw=; b=3ryaq0Cgskl85NfNR3YRr9Lbw1
	Kkei5OXPLtgJjX5fDsYqdyHphsd2jyzN3f6rmYHYP3FBO4kWYO5hNkJG0ZHcc2/SR1aMfA9qQ9F85
	oKbtH4lus+asHkFAxSnNPOOQlEjGRbm8J7I83r80gXeBRmb1zAt4Mhi/D0A6J2xPDfv6fUwGyqb2N
	WJQLGjVVR4VjFJmy/Midc3dBpvqL17eB1uLFDzb7//QTcvmRu5BhrHiyiF5xOxsAsX6fPdqaScS2I
	jCPPEmtagStqjdPvVFsrVbmZngQ1gvwdTrcoI/Syzs2LZNAzv0SHyfRQeoCZvezkOHeXz0j5nHkJ8
	g/Mk1G+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2noP-00000006YNI-3yPo;
	Mon, 21 Oct 2024 08:30:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mjP-00000006Lrh-0gcW
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 07:21:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-0005nx-Vi; Mon, 21 Oct 2024 09:21:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-000ecT-1q;
	Mon, 21 Oct 2024 09:21:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-00FGWz-1Y;
	Mon, 21 Oct 2024 09:21:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Oct 2024 09:21:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-arm-layerscape-tfa-v1-6-0980697b6f66@pengutronix.de>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
In-Reply-To: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729495277; l=3107;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=t1QByi2pMr5bEXYtUMMMUG6Zgp0f7xZibu0JZHUKrfA=;
 b=rdIMguwA9TltZdGZbXSbxE3+Mcwxk0hvvvGeeUuM1YlPENlIAmKa/TIygFgbWl7VLEj3uyKi+
 fPlrt/T2HwAAZKMkZVBcocaB3dyaxQRI01UtzuHGLjX+RKP7VcZ5izY
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_002135_267524_51C1E82C 
X-CRM114-Status: GOOD (  15.82  )
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
Subject: [PATCH 6/9] ARM: Layerscape: LS1046a-rdb: Switch to TF-A support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we can start TF-A on LS1046a based boards switch the LS1046ardb
over to use this rather than deprecated PPA.

Unlike the PPA the TF-A needs information about the amount of SDRAM
installed on the board. The LS1046a-rdb has a DDR4 DIMM connector, so
the SDRAM configuration must be runtime detected. The board support has
8GiB hardcoded in other places, so hardcode 8GiB for TF-A as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1046ardb/board.c    |  6 ------
 arch/arm/boards/ls1046ardb/lowlevel.c | 16 +++++++++++++++-
 arch/arm/boards/ls1046ardb/start.S    | 14 +++++++++++++-
 3 files changed, 28 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
index ee70171ca3..507fb0bfe1 100644
--- a/arch/arm/boards/ls1046ardb/board.c
+++ b/arch/arm/boards/ls1046ardb/board.c
@@ -133,18 +133,12 @@ late_initcall(rdb_late_init);
 
 static int rdb_mem_init(void)
 {
-	int ret;
-
 	if (!of_machine_is_compatible("fsl,ls1046a-rdb"))
 		return 0;
 
 	arm_add_mem_device("ram0", 0x80000000, 0x80000000);
 	arm_add_mem_device("ram1", 0x880000000, 3ULL * SZ_2G);
 
-	ret = ls1046a_ppa_init(0x100000000 - SZ_64M, SZ_64M);
-	if (ret)
-		pr_err("Failed to initialize PPA firmware: %s\n", strerror(-ret));
-
 	return 0;
 }
 mem_initcall(rdb_mem_init);
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index bcc95cc59d..7965e84a34 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -184,6 +184,20 @@ static struct fsl_ddr_info ls1046a_info = {
 	.c = ddrc,
 };
 
+static struct dram_regions_info dram_info = {
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
 static noinline __noreturn void ls1046ardb_r_entry(void)
 {
 	unsigned long membase = LS1046A_DDR_SDRAM_BASE;
@@ -210,7 +224,7 @@ static noinline __noreturn void ls1046ardb_r_entry(void)
 
 	ls1046a_errata_post_ddr();
 
-	ls1046a_esdhc_start_image(NULL);
+	ls1046a_esdhc_start_image(&dram_info);
 
 err:
 	pr_err("Booting failed\n");
diff --git a/arch/arm/boards/ls1046ardb/start.S b/arch/arm/boards/ls1046ardb/start.S
index 466782b278..571fa78163 100644
--- a/arch/arm/boards/ls1046ardb/start.S
+++ b/arch/arm/boards/ls1046ardb/start.S
@@ -1,11 +1,23 @@
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
 
 ENTRY_PROC(start_ls1046ardb)
+	switch_el x3, 3f, 2f, 1f
+3:
 	mov x3, #STACK_TOP
 	mov sp, x3
 	b ls1046ardb_entry
+2:
+1:
+	mov x3, STACK_TOP_TMP_SDRAM
+	mov sp, x3
+	b ls1046ardb_entry
 ENTRY_PROC_END(start_ls1046ardb)

-- 
2.39.5



