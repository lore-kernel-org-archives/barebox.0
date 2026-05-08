Delivery-date: Fri, 08 May 2026 16:44:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLMRc-002OWF-1L
	for lore@lore.pengutronix.de;
	Fri, 08 May 2026 16:44:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLMRX-0002gU-9N
	for lore@pengutronix.de; Fri, 08 May 2026 16:44:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t+6U0pokHK18G6R1rgPjg1RlCDq1plzL0ZTMvlqzTlo=; b=w4A1aUQ0i19pphvEvbeeDSkeuF
	qZRtXVj+CVIJGYzR6lwAr6msOxZgA5SnGN3kJXw0JaYorvD5dodOo9j+ZaxrRQmqeVybx2tdPp10x
	OflznyE4oXpgdmh+XnWk4l4M1vg+pypaJ4Did9afam6BGs7qzzKidfWRMNaruHZT6jyLPO+hQHDsC
	rF80AuUQVfXDoa5riO0F7giQdG6q04U9ymh37GYjdgKeSIGEayQwbYwfQUGArpJn0mpdnR9tWFNxf
	eP6i7Z6bbvbNi3fKxGcngCDR+JSmDmVgS57hJcYHF+8A9/yMbMZOgU5Bilp3GdD8PoxoGNRoxm/iq
	lbIxDrlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMQ2-00000006hJq-3Kwk;
	Fri, 08 May 2026 14:43:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMPy-00000006hCG-1iNW
	for barebox@lists.infradead.org;
	Fri, 08 May 2026 14:43:09 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wLMPv-0001TN-0z; Fri, 08 May 2026 16:43:03 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 08 May 2026 16:43:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260508-v2025-11-0-topic-riotboard-v1-2-42e6134c3de6@pengutronix.de>
References: <20260508-v2025-11-0-topic-riotboard-v1-0-42e6134c3de6@pengutronix.de>
In-Reply-To: <20260508-v2025-11-0-topic-riotboard-v1-0-42e6134c3de6@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_074306_458233_7C3BD031 
X-CRM114-Status: GOOD (  10.91  )
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
Subject: [PATCH 2/2] ARM: i.MX: riotboard: rewrite lowlevel.c
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
 arch/arm/boards/embest-riotboard/lowlevel.c | 37 ++++++++++++++++++-----------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index f1b37c2aa0..e44fb3582e 100644
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
+static noinline void setup_riotboard_uart(void)
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
-
-	fdt = __dtb_imx6s_riotboard_start + get_runtime_offset();
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
+
+ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
+{
+	imx6_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	setup_riotboard_uart();
+
+	imx6q_barebox_entry(__dtb_imx6s_riotboard_start);
 }

-- 
2.47.3



