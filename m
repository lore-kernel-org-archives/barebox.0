Delivery-date: Thu, 16 Apr 2026 11:48:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLH-00Cm4U-2K
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 11:48:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLG-0001Jc-VI
	for lore@pengutronix.de; Thu, 16 Apr 2026 11:48:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iV9d5zBRu2K31Dwp23yy1SfCs//4+cRwmTnDsQtrk8o=; b=rZsyIV4OdehpKObzGSaz9MVwnM
	BsRcRKY/5UvPvdkqzFdTIWOCwDcakBvAv9KeYHE1gOvYHHBw9KJr3L2olopDx959w2U/HQloboNwg
	xBDHYetoP2pH/WgSwPWT4JcUEh1BcBBdFjOiBMu5wx6r1URL9+B5wOFKnz8P+pdbBjOktsJp+9b9j
	PbHGz+clX6fmFNqRJUnm19yjDy+ldMv99ymjHqlXiKariJXBV/BCtQA7Uykes3lqWKkkCqMJPVNFC
	D+8wmou0TcbAPWApDwnKpVg1nRtaGe9R/NpuOBhLnlqh6gGz2OV7uliE1tfUXU+Qn7ufW5Rgvbp4m
	8sgo7YGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKi-00000002GTr-04U3;
	Thu, 16 Apr 2026 09:48:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKa-00000002GOE-3ckC
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 09:48:20 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDJKX-0000o5-A0; Thu, 16 Apr 2026 11:48:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 11:48:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-sdram-v1-8-07556aa7219f@pengutronix.de>
References: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_024816_991954_9F01050A 
X-CRM114-Status: GOOD (  12.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] arm: socfpga: agilex5: add agilex5_barebox_entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extract the SoC-specific lowlevel entry code from the board-specific
lowlevel entry code to make it reusable with other boards.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 40 +----------------------------
 arch/arm/mach-socfpga/atf.c                 | 40 ++++++++++++++++++++++++++++-
 include/mach/socfpga/generic.h              |  2 +-
 3 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
index 4817b3ec2d86..fae542e11e89 100644
--- a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
+++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
@@ -8,11 +8,6 @@
 #include <mach/socfpga/debug_ll.h>
 #include <mach/socfpga/init.h>
 #include <mach/socfpga/generic.h>
-#include <mach/socfpga/mailbox_s10.h>
-#include <mach/socfpga/soc64-firewall.h>
-#include <mach/socfpga/soc64-regs.h>
-#include <mach/socfpga/soc64-sdram.h>
-#include <mach/socfpga/soc64-system-manager.h>
 
 extern char __dtb_z_socfpga_agilex5_axe5_eagle_start[];
 
@@ -20,10 +15,6 @@ extern char __dtb_z_socfpga_agilex5_axe5_eagle_start[];
 
 static noinline void axe5_eagle_continue(void)
 {
-	void *fdt;
-	phys_addr_t membase;
-	phys_size_t memsize;
-
 	agilex5_clk_init();
 
 	socfpga_uart_setup_ll();
@@ -49,36 +40,7 @@ static noinline void axe5_eagle_continue(void)
 	mdelay(1000);
 	writel(0x410, 0x10c03300);
 
-	if (current_el() == 3) {
-		agilex5_initialize_security_policies();
-		pr_debug("Security policies initialized\n");
-
-		/*
-		 * need to set the bank select enable before the
-		 * agilex5_ddr_init_full() otherwise the serial doesn't show
-		 * anything.
-		 */
-		if (!IS_ENABLED(CONFIG_DEBUG_LL))
-			writel(LCR_BKSE, SOCFPGA_UART0_ADDRESS + LCR);
-		agilex5_ddr_init_full();
-
-		socfpga_mailbox_s10_init();
-		socfpga_mailbox_s10_qspi_open();
-
-		agilex5_load_and_start_image_via_tfa();
-	}
-
-	fdt = __dtb_z_socfpga_agilex5_axe5_eagle_start;
-
-	membase = agilex5_mpfe_sdram_base();
-	memsize = agilex5_mpfe_sdram_size();
-
-	if (membase < SOCFPGA_AGILEX5_DDR_BASE || memsize == 0) {
-		pr_err("Invalid firewall configuration\n");
-		hang();
-	}
-
-	barebox_arm_entry(membase, memsize, fdt);
+	agilex5_barebox_entry(__dtb_z_socfpga_agilex5_axe5_eagle_start);
 }
 
 ENTRY_FUNCTION_WITHSTACK(start_socfpga_agilex5_axe5_eagle, AXE5_STACKTOP, r0, r1, r2)
diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index 3ad19e33ac94..e3461d01174e 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -7,9 +7,12 @@
 #include <asm/barebox-arm.h>
 #include <mach/socfpga/atf.h>
 #include <mach/socfpga/generic.h>
+#include <mach/socfpga/mailbox_s10.h>
 #include <mach/socfpga/soc64-regs.h>
+#include <mach/socfpga/soc64-sdram.h>
+#include <mach/socfpga/soc64-system-manager.h>
 
-void __noreturn agilex5_load_and_start_image_via_tfa(void)
+static void __noreturn agilex5_load_and_start_image_via_tfa(void)
 {
 	void *bl31 = (void *)AGILEX5_ATF_BL31_BASE_ADDR;
 	void *bl33 = (void *)AGILEX5_ATF_BL33_BASE_ADDR;
@@ -33,3 +36,38 @@ void __noreturn agilex5_load_and_start_image_via_tfa(void)
 	bl31_entry((uintptr_t)bl31, 0, (uintptr_t)bl33, 0);
 	__builtin_unreachable();
 }
+
+void __noreturn agilex5_barebox_entry(void *fdt)
+{
+	phys_addr_t membase;
+	phys_size_t memsize;
+
+	if (current_el() == 3) {
+		agilex5_initialize_security_policies();
+		pr_debug("Security policies initialized\n");
+
+		/*
+		 * need to set the bank select enable before the
+		 * agilex5_ddr_init_full() otherwise the serial doesn't show
+		 * anything.
+		 */
+		if (!IS_ENABLED(CONFIG_DEBUG_LL))
+			writel(LCR_BKSE, SOCFPGA_UART0_ADDRESS + LCR);
+		agilex5_ddr_init_full();
+
+		socfpga_mailbox_s10_init();
+		socfpga_mailbox_s10_qspi_open();
+
+		agilex5_load_and_start_image_via_tfa();
+	}
+
+	membase = agilex5_mpfe_sdram_base();
+	memsize = agilex5_mpfe_sdram_size();
+
+	if (membase < SOCFPGA_AGILEX5_DDR_BASE || memsize == 0) {
+		pr_err("Invalid firewall configuration\n");
+		hang();
+	}
+
+	barebox_arm_entry(membase, memsize, fdt);
+}
diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
index 06768e9ec0a0..6c99a17e81f1 100644
--- a/include/mach/socfpga/generic.h
+++ b/include/mach/socfpga/generic.h
@@ -100,7 +100,7 @@ static inline void arria10_watchdog_disable(void) {}
 #endif
 
 int agilex5_clk_init(void);
-void __noreturn agilex5_load_and_start_image_via_tfa(void);
+void __noreturn agilex5_barebox_entry(void *fdt);
 
 static inline void __udelay(unsigned us)
 {

-- 
2.47.3



