Delivery-date: Tue, 04 Apr 2023 12:18:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjdkU-009bbR-25
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 12:18:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjdkT-00007t-EQ
	for lore@pengutronix.de; Tue, 04 Apr 2023 12:18:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lRueHv6A1GnCA/dfK0a+sVBhA9tDodgzsK5nGQrA03c=; b=teuP+4iEtfZUnh9t+cMV0lsckM
	eCJx/4ZNnYV342/STx+U2zbspx7ODAyvpGmXM74jvURDh2k9fYkzGWuph3VewB6ciGLf9sWA7zJau
	QkDXfvoDXr9A5mCQeYDvfpLtyWdgJvXtWC84/4Q9qD7RxsksNfynb4kQl5d/6SOYrgUcdX/WgJYLh
	4jHirRAQJPA3tGyy78MZ7M0fCo/GhMQyJ9E1IzC21G2gxwX2LQVYdC3ZOQFnO58avMtNvi5mqnm4O
	LRWefOBPd81eiidOkja3jQlGpuRix+xZodLx9mWr72gjo4YFCfJKhsLFkXJww6rXPL/QscvT40WN8
	47sDmLDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjdjA-000qQB-1r;
	Tue, 04 Apr 2023 10:17:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjdj5-000qNj-0I
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 10:17:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pjdiv-000802-Kg; Tue, 04 Apr 2023 12:17:09 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pjdiu-008tRM-Vw; Tue, 04 Apr 2023 12:17:09 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pjdiu-009O4X-12; Tue, 04 Apr 2023 12:17:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Apr 2023 12:17:06 +0200
Message-Id: <20230404101706.2237453-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230404101706.2237453-1-a.fatoum@pengutronix.de>
References: <20230404101706.2237453-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_031719_296493_7C669B9D 
X-CRM114-Status: GOOD (  14.97  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] treewide: remove no-longer needed IMD_USED_OF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that a __dtb* reference automatically pulls in the IMD tag if
support is compiled in, we can drop all IMD_USED_OF and turn the macro
into a no-op until we remove it completely.

Theoretically, an out-of-tree board could reference a DT via IMD_USED_OF
and not actually reference it via __dtb_*_start. So instead of makign
IMD_USED_OF a no-top, let's print a warning for a few releases until
we remove it completely.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - drop <image-metadata.h> header where applicable (Marco)
  - add depreciation warning for macro
---
 arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c  |  3 ---
 arch/arm/boards/ls1046ardb/lowlevel.c            |  2 --
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c        |  3 ---
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c        |  3 ---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c        |  3 ---
 arch/arm/boards/phytec-som-imx6/lowlevel.c       |  1 -
 arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c |  3 ---
 arch/arm/boards/tqmls1046a/lowlevel.c            |  3 ---
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c        |  4 ----
 include/image-metadata.h                         | 10 ++++++----
 10 files changed, 6 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
index f7753bd32671..30cb7d9cae1a 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
@@ -13,7 +13,6 @@
 #include <mfd/bd71837.h>
 #include <mach/xload.h>
 #include <soc/imx8m/ddr.h>
-#include <image-metadata.h>
 
 #include "lowlevel.h"
 
@@ -74,8 +73,6 @@ void innocomm_wb15_power_init_board(void)
 
 ENTRY_FUNCTION(start_innocomm_wb15_evk, r0, r1, r2)
 {
-	IMD_USED_OF(imx8mm_innocomm_wb15_evk);
-
 	imx8mm_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 055e5f4c9995..b5265cd986b2 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -202,8 +202,6 @@ static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 	debug_ll_init();
 	ls1046a_init_lowlevel();
 
-	IMD_USED_OF(fsl_ls1046a_rdb);
-
 	i2c = ls1046_i2c_init(IOMEM(LSCH2_I2C1_BASE_ADDR));
 	ret = spd_read_eeprom(i2c, 0x51, &spd_eeprom);
 	if (ret) {
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 6132df53ec75..5dbb4962cf57 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -18,7 +18,6 @@
 #include <mfd/bd71837.h>
 #include <mach/xload.h>
 #include <soc/imx8m/ddr.h>
-#include <image-metadata.h>
 
 extern char __dtb_z_imx8mm_evk_start[];
 
@@ -119,7 +118,5 @@ ENTRY_FUNCTION(start_nxp_imx8mm_evk, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mm_evk);
-
 	nxp_imx8mm_evk_start();
 }
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 3cb24df1ca3f..a62e2ba27efd 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -4,7 +4,6 @@
 #include <common.h>
 #include <debug_ll.h>
 #include <firmware.h>
-#include <image-metadata.h>
 #include <asm/mmu.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
@@ -134,7 +133,5 @@ ENTRY_FUNCTION(start_nxp_imx8mp_evk, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mp_evk);
-
 	nxp_imx8mp_evk_start();
 }
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 0c9f6345ff30..8d57fecff36e 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -2,7 +2,6 @@
 
 #include <common.h>
 #include <firmware.h>
-#include <image-metadata.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
@@ -107,7 +106,5 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mq_evk);
-
 	nxp_imx8mq_evk_start();
 }
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 62a1c8de7309..31c1e056aa1f 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -75,7 +75,6 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 		extern char __dtb_##fdt_name##_start[];			\
 									\
 		IMD_USED(physom_mx6_memsize_##memory_size);		\
-		IMD_USED_OF(fdt_name);					\
 									\
 		start_imx6_phytec_common(memory_size, do_early_uart_config, \
 					 __dtb_##fdt_name##_start);	\
diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
index bfae39ea522e..80a1e44b3263 100644
--- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
@@ -2,7 +2,6 @@
 
 #include <asm/barebox-arm.h>
 #include <common.h>
-#include <image-metadata.h>
 #include <debug_ll.h>
 #include <firmware.h>
 #include <mach/atf.h>
@@ -87,7 +86,5 @@ ENTRY_FUNCTION(start_prt_prt8mm, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mm_prt8mm);
-
 	prt_prt8mm_start();
 }
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 99dcf1eff7ab..072be0599342 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
 #include <debug_ll.h>
-#include <image-metadata.h>
 #include <platform_data/mmc-esdhc-imx.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
 #include <soc/fsl/immap_lsch2.h>
@@ -109,8 +108,6 @@ static noinline __noreturn void tqmls1046a_r_entry(void)
 	udelay(500);
 	putc_ll('>');
 
-	IMD_USED_OF(fsl_tqmls1046a_mbls10xxa);
-
 	fsl_ddr_set_memctl_regs(&ddrc[0], 0);
 
 	ls1046a_errata_post_ddr();
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index cf53fb2defd6..311e61fb1da4 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -6,7 +6,6 @@
 
 #include <common.h>
 #include <firmware.h>
-#include <image-metadata.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
@@ -201,8 +200,5 @@ ENTRY_FUNCTION(start_zii_imx8mq_dev, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mq_zii_ultra_rmb3);
-	IMD_USED_OF(imx8mq_zii_ultra_zest);
-
 	zii_imx8mq_dev_start();
 }
diff --git a/include/image-metadata.h b/include/image-metadata.h
index bf4e08d98a47..615632f9ce81 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -156,10 +156,12 @@ static inline void imd_used(const void *unused)
 
 #define IMD_USED(_name) \
 	imd_used(&__barebox_imd_##_name)
-#define IMD_USED_OF(_name) ({ \
-	extern char __barebox_imd_OF_ ## _name[]; \
-	imd_used(&__barebox_imd_OF_ ## _name); \
-	})
+
+__attribute__((deprecated("IMD entries are now always referenced if DT itself is")))
+static inline void IMD_USED_OF(void)
+{}
+
+#define IMD_USED_OF(_name) IMD_USED_OF()
 
 #endif /* __BAREBOX__ */
 
-- 
2.39.2



