Delivery-date: Mon, 09 Jan 2023 14:10:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEruu-006gGz-Uq
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 14:10:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErus-0001Y6-Oy
	for lore@pengutronix.de; Mon, 09 Jan 2023 14:10:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fwRksHZSh4ecJy4CKclynieEUIbaS7DxXeNlai4lajU=; b=OizTod6Ui8sFeoJsc3vD68yn2l
	kzsZqYWeUHEnUPdsx1jNSlytaBPsDd7T7kr8nGT2j1CP1AnKQYnYymtrAOcPKnJ9E9eVQIZEESSLz
	q9fhQNHk7ockPgOI7syVc+JJdWhlmK5ugNmCIvvO8NyiSAwNrsf/voBlpetWvytcKaaqvHXbgjeuT
	ditSId0Y7wf+VR8eY+cu32gCSBfoYk/D+vMJhelK7k+0tZ1Xr3dbeArbNDAeU4sRuYsIKxeZkpnV1
	gqyrKJXqwrGs7TWeoBMiKwpeJxrhxKLKBbcGOoPWMefJFp/aFePMkQu1YYgfIudsDQO5wSMPBUX8B
	D4vj1jPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErtQ-001RTS-2E; Mon, 09 Jan 2023 13:08:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErt9-001RLi-FR
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 13:08:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-0000r1-O0; Mon, 09 Jan 2023 14:08:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-004qw6-55; Mon, 09 Jan 2023 14:08:27 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt3-006zGW-EM; Mon, 09 Jan 2023 14:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 14:08:13 +0100
Message-Id: <20230109130822.1657470-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
References: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_050831_732656_6AE9F3B4 
X-CRM114-Status: GOOD (  11.56  )
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
Subject: [PATCH v2 02/11] ARM: at91: sama5d4: add entry point helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like already done for sama5d2 and sama5d3, provide a set of helpers for
use in device-tree-enabled SAMA5D4 boards.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/ddramc.c                        | 7 +++++++
 arch/arm/mach-at91/include/mach/barebox-arm.h      | 4 ++++
 arch/arm/mach-at91/include/mach/ddramc.h           | 1 +
 arch/arm/mach-at91/include/mach/sama5_bootsource.h | 3 +++
 4 files changed, 15 insertions(+)

diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index 6383789f641f..1e94fbf9ee67 100644
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
 
 static int sama5_ddr_probe(struct device *dev)
 {
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm.h b/arch/arm/mach-at91/include/mach/barebox-arm.h
index f6bdd5ab2375..707444180c36 100644
--- a/arch/arm/mach-at91/include/mach/barebox-arm.h
+++ b/arch/arm/mach-at91/include/mach/barebox-arm.h
@@ -5,6 +5,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/common.h>
 #include <mach/sama5d3.h>
+#include <mach/sama5d4.h>
 
 #define SAMA5_ENTRY_FUNCTION(name, stack_top, r4)				\
 	void name (u32 r0, u32 r1, u32 r2, u32 r3);				\
@@ -29,4 +30,7 @@
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



