Delivery-date: Mon, 11 May 2026 15:34:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQmH-000ZJD-0Y
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 15:34:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQmC-0002Z7-DY
	for lore@pengutronix.de; Mon, 11 May 2026 15:34:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rnyTMvN/L3X2T+9SUt7JhutnLZHfIBaywYr9Htj1KU0=; b=MfzgXAxml+1xlFnryUwviR9qTl
	WPbEqDBLJITZ4sE4BRAZJSiCImjOOs6DTCv2AaiJiI66QcL9yB7X1Lb9MCiekWb1mUtL52e1pADid
	E12ytGGfTXm5KQDUeoZOn5s7Ov50K0HHe0z8vZqvIcrOT2hjCPgv4Lft7PuECpDFVNpz4QaSUkxnv
	ikPLcR4lhc+2rszb3TJGGjCdJp7U4SMPgBicorJOr2akZL8sbK4sna/FyjUjT5ghtjXpFfLBA5zMz
	Z/7p2nevSm0QNmn6RZJ51q+N4TD6KYPbnW32f0oa+6zXUPjFjWq6O5kLdGsE5L0HryokuLlxnmRS2
	urK5Wttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQkm-0000000Dkgb-1BRS;
	Mon, 11 May 2026 13:33:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQkh-0000000Dke8-29AF
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 13:32:58 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wMQke-00023e-Ha; Mon, 11 May 2026 15:32:52 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 11 May 2026 15:32:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-v2025-11-0-topic-riotboard-v2-2-788bf85842bd@pengutronix.de>
References: <20260511-v2025-11-0-topic-riotboard-v2-0-788bf85842bd@pengutronix.de>
In-Reply-To: <20260511-v2025-11-0-topic-riotboard-v2-0-788bf85842bd@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_063255_607857_B9D99753 
X-CRM114-Status: GOOD (  10.86  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] ARM: i.MX: riotboard: switch to imx6q_barebox_entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make use of the imx6q_barebox_entry instead of calling
barebox_arm_entry directly, which allows us to profit from optional
OP-TEE loading in this function.
Always setup UART, in case OP-TEE gets integrated, which will crash if
the UART is not configured correctly and debug is enabled.
Since now a bit more functions are called, we use
relocate_to_current_adr instead of get_runtime_offset.

This should not change behaviour of current implementations, but makes
way for OP-TEE implementations.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/boards/embest-riotboard/lowlevel.c | 35 ++++++++++++++++++-----------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index f1b37c2aa0..16374d05fe 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -11,26 +11,35 @@
 #include <asm/cache.h>
 #include <asm/mmu.h>
 #include <mach/imx/imx6.h>
+#include <mach/imx/iomux-mx6.h>
+#include <mach/imx/esdctl.h>
 
 extern char __dtb_imx6s_riotboard_start[];
 
-ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
+static noinline void continue_imx6s_riotboard(void)
 {
-	void *fdt;
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
 
-	imx6_cpu_lowlevel_init();
+	writel(0x4, iomuxbase + 0x016c);
+
+	imx6_ungate_all_peripherals();
+	// if uart ist not set-up, then OP-TEE will fail if debugging is enabled.
+	imx6_uart_setup(IOMEM(MX6_UART2_BASE_ADDR));
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
-		/*
-		 * CONFIG_DEBUG_IMX6Q_UART=y
-		 * CONFIG_DEBUG_IMX_UART_PORT=2
-		 */
-		writel(0x4, 0x020e016c);
-		imx6_ungate_all_peripherals();
-		imx6_uart_setup_ll();
-		putc_ll('a');
+		pbl_set_putc(imx_uart_putc, IOMEM(MX6_UART2_BASE_ADDR));
+		putc_ll('>');
 	}
 
-	fdt = __dtb_imx6s_riotboard_start + get_runtime_offset();
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	imx6q_barebox_entry(__dtb_imx6s_riotboard_start);
+}
+
+ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
+{
+	imx6_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	continue_imx6s_riotboard();
 }

-- 
2.47.3



