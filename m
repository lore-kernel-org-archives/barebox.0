Delivery-date: Wed, 14 Dec 2022 12:00:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PV3-003YP9-EN
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 12:00:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PV1-0006IF-7M
	for lore@pengutronix.de; Wed, 14 Dec 2022 12:00:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ceHkk9F8+ht2ecUJhtbRhUzz6i0oMrBXMC24Kg8grBA=; b=pmOsTb3Ri4H1ObVa//NdsRxmPw
	J/v09dfNSJuGyGfsx6bbGeLcVMe4VRivxI4pqoWZ6XZz6CYCWJ2Qy2w+TSjQfBo4ygZZwd85uDUkE
	96nL8sMjSitYJwMArXnhPYZXNTuXiuYSoCfrV713HJXK0zezcrbFN78nFDEm5m90Xz/pDgCNkXbAw
	6IR7FEVvl/iMbswaVsF0gV0Edmz+rYSfDbSlZoIUEqkCttt39mfdqpZWB3tYq9DxvsktMxknwcVBc
	0XyHJ2QtgweopTxxENi05ZUqtA61Jaj+m3iWbiqn+tIKmv1537mBQ84bcyz0eed9pI7Pi4yILwE98
	nR1DjETQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTi-00FlnP-3D; Wed, 14 Dec 2022 10:59:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTA-00FlPj-4f
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 10:58:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT8-0005D3-LD; Wed, 14 Dec 2022 11:58:34 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT7-004Rul-6e; Wed, 14 Dec 2022 11:58:33 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT6-003Xh2-Dt; Wed, 14 Dec 2022 11:58:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Dec 2022 11:58:21 +0100
Message-Id: <20221214105831.844421-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221214105831.844421-1-a.fatoum@pengutronix.de>
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_025836_275848_89891258 
X-CRM114-Status: GOOD (  11.05  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/11] ARM: at91: sama5: switch to nonnaked entry functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Functions were kept naked because they modify the stack pointer.
We can hoist that up and change the board-provided entry point
to be non-naked to be more robust in face of unexpected compiler
optimizations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../boards/microchip-ksz9477-evb/lowlevel.c    |  6 ++----
 arch/arm/boards/sama5d27-giantboard/lowlevel.c |  4 ++--
 arch/arm/boards/sama5d27-som1/lowlevel.c       |  4 ++--
 arch/arm/boards/sama5d3_xplained/lowlevel.c    |  6 ++----
 arch/arm/mach-at91/include/mach/barebox-arm.h  | 18 ++++++++++++++----
 5 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index 93ae4819750c..6290766caa78 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -32,7 +32,7 @@ static void dbgu_init(void)
 	putc_ll('>');
 }
 
-SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071_xload_mmc, r4)
+SAMA5D3_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071_xload_mmc, r4)
 {
 	sama5d3_lowlevel_init();
 
@@ -49,12 +49,10 @@ SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071_xload_mmc, r4)
 
 extern char __dtb_z_at91_microchip_ksz9477_evb_start[];
 
-SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r4)
+SAMA5D3_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r4)
 {
 	void *fdt;
 
-	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		dbgu_init();
 
diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index ee8297fa4562..fac39dd066a2 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -15,7 +15,7 @@
 /* PCK = 492MHz, MCK = 164MHz */
 #define MASTER_CLOCK	164000000
 
-SAMA5_ENTRY_FUNCTION(start_sama5d27_giantboard_xload_mmc, r4)
+SAMA5D2_ENTRY_FUNCTION(start_sama5d27_giantboard_xload_mmc, r4)
 {
 	void __iomem *dbgu_base;
 
@@ -36,7 +36,7 @@ SAMA5_ENTRY_FUNCTION(start_sama5d27_giantboard_xload_mmc, r4)
 
 extern char __dtb_z_at91_sama5d27_giantboard_start[];
 
-SAMA5_ENTRY_FUNCTION(start_sama5d27_giantboard, r4)
+SAMA5D2_ENTRY_FUNCTION(start_sama5d27_giantboard, r4)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index b0937119184b..24c08d9722b3 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -39,7 +39,7 @@ static void ek_turn_led(unsigned color)
 	}
 }
 
-SAMA5_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r4)
+SAMA5D2_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r4)
 {
 	void __iomem *dbgu_base;
 	sama5d2_lowlevel_init();
@@ -60,7 +60,7 @@ SAMA5_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r4)
 
 extern char __dtb_z_at91_sama5d27_som1_ek_start[];
 
-SAMA5_ENTRY_FUNCTION(start_sama5d27_som1_ek, r4)
+SAMA5D2_ENTRY_FUNCTION(start_sama5d27_som1_ek, r4)
 {
 	void *fdt;
 
diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index df561af36d5e..be6b2960d40d 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -33,7 +33,7 @@ static void dbgu_init(void)
 	pbl_set_putc(at91_dbgu_putc, IOMEM(AT91_BASE_DBGU1));
 }
 
-SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_xload_mmc, r4)
+SAMA5D3_ENTRY_FUNCTION(start_sama5d3_xplained_xload_mmc, r4)
 {
 	sama5d3_lowlevel_init();
 
@@ -50,12 +50,10 @@ SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_xload_mmc, r4)
 
 extern char __dtb_z_at91_sama5d3_xplained_start[];
 
-SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained, r4)
+SAMA5D3_ENTRY_FUNCTION(start_sama5d3_xplained, r4)
 {
 	void *fdt;
 
-	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		dbgu_init();
 
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm.h b/arch/arm/mach-at91/include/mach/barebox-arm.h
index 4a65c6f8fa55..36c6abadc137 100644
--- a/arch/arm/mach-at91/include/mach/barebox-arm.h
+++ b/arch/arm/mach-at91/include/mach/barebox-arm.h
@@ -3,19 +3,29 @@
 #define AT91_BAREBOX_ARM_H_
 
 #include <asm/barebox-arm.h>
+#include <asm/common.h>
+#include <mach/sama5d3.h>
 
-#define SAMA5_ENTRY_FUNCTION(name, r4)						\
+#define SAMA5_ENTRY_FUNCTION(name, stack_top, r4)				\
 	void name (u32 r0, u32 r1, u32 r2, u32 r3);				\
 										\
 	static void __##name(u32);						\
 										\
-	void NAKED __section(.text_head_entry_##name)	name			\
+	void __naked __section(.text_head_entry_##name)	name			\
 				(u32 r0, u32 r1, u32 r2, u32 r3)		\
 		{								\
 			register u32 r4 asm("r4");				\
 			__barebox_arm_head();					\
+			arm_setup_stack(stack_top);				\
 			__##name(r4);						\
 		}								\
-		static void NAKED noinline __##name				\
-			(u32 r4)
+		static void noinline __##name(u32 r4)
+
+/* BootROM already initialized usable stack top */
+#define SAMA5D2_ENTRY_FUNCTION(name, r4)					\
+	SAMA5_ENTRY_FUNCTION(name, 0, r4)
+
+#define SAMA5D3_ENTRY_FUNCTION(name, r4)					\
+	SAMA5_ENTRY_FUNCTION(name, SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE, r4)
+
 #endif
-- 
2.30.2



