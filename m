Delivery-date: Tue, 28 Mar 2023 09:42:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3xy-00HMf8-R4
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 09:42:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3xy-0001Xm-3o
	for lore@pengutronix.de; Tue, 28 Mar 2023 09:42:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qWypterixYSSBCJ3AS8aTuVLtwObnF2VHBJ7c6CloZM=; b=1MxLtAsTynG2uxOvL8dM+kLbiK
	wAupTpeS5aW4WtT9vXrfXthoyT5QEKfFRp+HSpUEkOMf4ejJ1PvMKEd7TURVcaQ3N59k77WFhRmAV
	fUsSafuPMuXDC5sM6BgbY4MJeaM+XPmcUj0OT3rMCQ1IROahDWbkihZohtm4itXNJdjgdGzlJhoHr
	Y6y6fMm8QzB5NOXWqw9xYhyHZ9uHN2aklGZMJeIMoJ14YcS8vNQNzZNlRKcXav8vD4Ks0uWnKa+oS
	EkpIJmFANEWBs5XcPjHxcAdb9bO4lSUbvK15wA641YL7v+nwqbG1vZalWiGwTS40nXw65KmvMQVBc
	vHieRMuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wm-00DUz6-34;
	Tue, 28 Mar 2023 07:40:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wg-00DUvA-0h
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 07:40:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wd-00017l-Jj; Tue, 28 Mar 2023 09:40:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wd-007Fvv-0L; Tue, 28 Mar 2023 09:40:39 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wb-0052xq-Nm; Tue, 28 Mar 2023 09:40:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 09:40:35 +0200
Message-Id: <20230328074037.1202993-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328074037.1202993-1-s.hauer@pengutronix.de>
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_004042_430114_5805336A 
X-CRM114-Status: GOOD (  14.39  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/6] ARM: Rockchip: rk3568: use rk3568_barebox_entry()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is a rk3568 specific entry function for barebox now, switch
the existing boards over to use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pine64-quartz64/lowlevel.c    | 30 +++--------------
 arch/arm/boards/radxa-rock3/lowlevel.c        | 31 +++---------------
 .../rockchip-rk3568-bpi-r2pro/lowlevel.c      | 31 +++---------------
 .../arm/boards/rockchip-rk3568-evb/lowlevel.c | 32 +++----------------
 4 files changed, 17 insertions(+), 107 deletions(-)

diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
index 1e63c0e698..975f8aa51c 100644
--- a/arch/arm/boards/pine64-quartz64/lowlevel.c
+++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
@@ -1,41 +1,19 @@
 // SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/rockchip/hardware.h>
 #include <mach/rockchip/atf.h>
 #include <debug_ll.h>
-#include <mach/rockchip/rockchip.h>
 
 extern char __dtb_rk3566_quartz64_a_start[];
 
-static noinline void start_quartz64(void)
-{
-	void *fdt = __dtb_rk3566_quartz64_a_start;
-
-	if (current_el() == 3) {
-		rk3568_lowlevel_init();
-		rk3568_atf_load_bl31(fdt);
-		/* not reached */
-	}
-
-	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM,
-			  fdt);
-}
-
 ENTRY_FUNCTION(start_quartz64a, r0, r1, r2)
 {
-	/*
-	 * Image execution starts at 0x0, but this is used for ATF and
-	 * OP-TEE later, so move away from here.
-	 */
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	putc_ll('>');
 
+	relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
 	setup_c();
 
-	start_quartz64();
+	rk3568_barebox_entry(__dtb_rk3566_quartz64_a_start);
 }
diff --git a/arch/arm/boards/radxa-rock3/lowlevel.c b/arch/arm/boards/radxa-rock3/lowlevel.c
index a8226749d4..866abd8bcb 100644
--- a/arch/arm/boards/radxa-rock3/lowlevel.c
+++ b/arch/arm/boards/radxa-rock3/lowlevel.c
@@ -1,19 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/rockchip/hardware.h>
 #include <mach/rockchip/atf.h>
 #include <debug_ll.h>
-#include <mach/rockchip/rockchip.h>
 
 extern char __dtb_rk3568_rock_3a_start[];
 
-static noinline void rk3568_start(void)
+ENTRY_FUNCTION(start_rock3a, r0, r1, r2)
 {
-	void *fdt = __dtb_rk3568_rock_3a_start;
-
 	/*
 	 * Enable vccio4 1.8V and vccio6 1.8V
 	 * Needed for GMAC to work.
@@ -24,27 +20,10 @@ static noinline void rk3568_start(void)
 	 */
 	writel(RK_SETBITS(0x50), 0xfdc20140);
 
-	if (current_el() == 3) {
-		rk3568_lowlevel_init();
-		rk3568_atf_load_bl31(fdt);
-		/* not reached */
-	}
-
-	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM, fdt);
-}
-
-ENTRY_FUNCTION(start_rock3a, r0, r1, r2)
-{
-	/*
-	 * Image execution starts at 0x0, but this is used for ATF and
-	 * OP-TEE later, so move away from here.
-	 */
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	putc_ll('>');
 
+	relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
 	setup_c();
 
-	rk3568_start();
+	rk3568_barebox_entry(__dtb_rk3568_rock_3a_start);
 }
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
index 23bacc91d9..468d0f1ac3 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
@@ -1,8 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/rockchip/hardware.h>
 #include <mach/rockchip/atf.h>
@@ -11,9 +9,9 @@
 
 extern char __dtb_rk3568_bpi_r2_pro_start[];
 
-static noinline void rk3568_start(void)
+ENTRY_FUNCTION(start_rk3568_bpi_r2pro, r0, r1, r2)
 {
-	void *fdt;
+	putc_ll('>');
 
 	/*
 	 * set iodomain vccio6 to 1.8V needed for GMAC1 to work.
@@ -28,29 +26,8 @@ static noinline void rk3568_start(void)
 	//clear bit 6 for 3v3 as it was set to 1v8
 	writel(RK_CLRBITS(BIT(6)), PMU_GRF_IO_VSEL1);
 
-	fdt = __dtb_rk3568_bpi_r2_pro_start;
-
-	if (current_el() == 3) {
-		rk3568_lowlevel_init();
-		rk3568_atf_load_bl31(fdt);
-		/* not reached */
-	}
-
-	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM, fdt);
-}
-
-ENTRY_FUNCTION(start_rk3568_bpi_r2pro, r0, r1, r2)
-{
-	/*
-	 * Image execution starts at 0x0, but this is used for ATF and
-	 * OP-TEE later, so move away from here.
-	 */
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
-
+	relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
 	setup_c();
 
-	rk3568_start();
+	rk3568_barebox_entry(__dtb_rk3568_bpi_r2_pro_start);
 }
diff --git a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
index 8720e6d9ae..100e6b0098 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
@@ -1,20 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/rockchip/hardware.h>
 #include <mach/rockchip/atf.h>
 #include <debug_ll.h>
-#include <mach/rockchip/rockchip.h>
 
 extern char __dtb_rk3568_evb1_v10_start[];
 
-static noinline void rk3568_start(void)
+ENTRY_FUNCTION(start_rk3568_evb, r0, r1, r2)
 {
-	void *fdt;
-
 	/*
 	 * Enable vccio4 1.8V and vccio6 1.8V
 	 * Needed for GMAC to work.
@@ -25,29 +20,10 @@ static noinline void rk3568_start(void)
 	 */
 	writel(RK_SETBITS(0x50), 0xfdc20140);
 
-	fdt = __dtb_rk3568_evb1_v10_start;
-
-	if (current_el() == 3) {
-		rk3568_lowlevel_init();
-		rk3568_atf_load_bl31(fdt);
-		/* not reached */
-	}
-
-	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM, fdt);
-}
-
-ENTRY_FUNCTION(start_rk3568_evb, r0, r1, r2)
-{
-	/*
-	 * Image execution starts at 0x0, but this is used for ATF and
-	 * OP-TEE later, so move away from here.
-	 */
-	if (current_el() == 3)
-		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
-	else
-		relocate_to_current_adr();
+	putc_ll('>');
 
+	relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
 	setup_c();
 
-	rk3568_start();
+	rk3568_barebox_entry(__dtb_rk3568_evb1_v10_start);
 }
-- 
2.39.2



