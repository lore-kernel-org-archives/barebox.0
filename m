Delivery-date: Wed, 14 Dec 2022 12:00:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PV0-003YOm-1w
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 12:00:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUz-0006GJ-3S
	for lore@pengutronix.de; Wed, 14 Dec 2022 12:00:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O3ptphTd0xjkkUAo2r+vJVF30mofO5qF+BXIXtD07o0=; b=qSXolqaQOb0jcvv7gfb+kUWeqY
	K65rzT++A5vChHBlC24DScliKUDO1jgj9+xjXMPDcB0YE/9nwHEnxzVmpv4X2lMTCSJZptE4ZC5Bf
	MNZyhlNhckHlXgEMRH1WxBrIvgwGK9zWPGuyIBpR7ig1qr6giq2P0wZCLskTKjMlydewb+4tDWy4O
	Tr2rXVGqB55NfTw6lmENJdgU7hlci4wVJAbNT72uA8C4gkCtjPWqI7Nu7NL/NVl79a9Y8ndq9s4Uh
	l4qT5r9uyOHQZtFXY/0bASkgUj0oUvUBizMGHBfTohKq5i3p36eu85FyMmQUTqTamQQgGEyCZK66A
	aqeO2Fyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTn-00Flq3-60; Wed, 14 Dec 2022 10:59:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTA-00FlPt-9d
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 10:58:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT9-0005DR-1X; Wed, 14 Dec 2022 11:58:35 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT7-004Rv9-Lu; Wed, 14 Dec 2022 11:58:34 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT6-003Xh5-EH; Wed, 14 Dec 2022 11:58:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Dec 2022 11:58:22 +0100
Message-Id: <20221214105831.844421-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221214105831.844421-1-a.fatoum@pengutronix.de>
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_025836_478713_ED6B60FD 
X-CRM114-Status: GOOD (  10.77  )
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
Subject: [PATCH 02/11] ARM: at91: sama5d4: add entry point helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like already done for sama5d2 and sama5d3, provide a set of helpers for
use in device-tree-enabled SAMA5D4 boards.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/ddramc.c                        | 7 +++++++
 arch/arm/mach-at91/include/mach/barebox-arm.h      | 4 ++++
 arch/arm/mach-at91/include/mach/ddramc.h           | 1 +
 arch/arm/mach-at91/include/mach/sama5_bootsource.h | 3 +++
 4 files changed, 15 insertions(+)

diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index 8f70b4ada2a1..071c44ead372 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -33,6 +33,13 @@ void __noreturn sama5d3_barebox_entry(unsigned int r4, void *boarddata)
 	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(),
 			  boarddata);
 }
+void __noreturn sama5d4_barebox_entry(unsigned int r4, void *boarddata)
+{
+	__sama5d4_stashed_bootrom_r4 = r4;
+
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(),
+			  boarddata);
+}
 
 static int sama5_ddr_probe(struct device_d *dev)
 {
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm.h b/arch/arm/mach-at91/include/mach/barebox-arm.h
index 36c6abadc137..5b77a7ba5989 100644
--- a/arch/arm/mach-at91/include/mach/barebox-arm.h
+++ b/arch/arm/mach-at91/include/mach/barebox-arm.h
@@ -5,6 +5,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/common.h>
 #include <mach/sama5d3.h>
+#include <mach/sama5d4.h>
 
 #define SAMA5_ENTRY_FUNCTION(name, stack_top, r4)				\
 	void name (u32 r0, u32 r1, u32 r2, u32 r3);				\
@@ -28,4 +29,7 @@
 #define SAMA5D3_ENTRY_FUNCTION(name, r4)					\
 	SAMA5_ENTRY_FUNCTION(name, SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE, r4)
 
+#define SAMA5D4_ENTRY_FUNCTION(name, r4)					\
+	SAMA5_ENTRY_FUNCTION(name, SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE, r4)
+
 #endif
diff --git a/arch/arm/mach-at91/include/mach/ddramc.h b/arch/arm/mach-at91/include/mach/ddramc.h
index 7daef1763641..d09392262e39 100644
--- a/arch/arm/mach-at91/include/mach/ddramc.h
+++ b/arch/arm/mach-at91/include/mach/ddramc.h
@@ -34,5 +34,6 @@ void at91_lpddr1_sdram_initialize(void __iomem *base_address,
 
 void __noreturn sama5d2_barebox_entry(unsigned int r4, void *boarddata);
 void __noreturn sama5d3_barebox_entry(unsigned int r4, void *boarddata);
+void __noreturn sama5d4_barebox_entry(unsigned int r4, void *boarddata);
 
 #endif /* #ifndef __DDRAMC_H__ */
diff --git a/arch/arm/mach-at91/include/mach/sama5_bootsource.h b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
index 931e1f29c8e0..b31d20bc7c34 100644
--- a/arch/arm/mach-at91/include/mach/sama5_bootsource.h
+++ b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
@@ -49,6 +49,9 @@ static inline int sama5_bootsource_instance(u32 reg)
 #define __sama5d3_stashed_bootrom_r4 \
 	(*(volatile u32 *)(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 0x4))
 
+#define __sama5d4_stashed_bootrom_r4 \
+	(*(volatile u32 *)(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 0x4))
+
 static inline void __noreturn sama5_boot_xload(void __noreturn (*bb)(void), u32 r4)
 {
 	asm volatile("mov r4, %0" : : "r"(r4) : );
-- 
2.30.2



