Delivery-date: Mon, 17 Oct 2022 09:08:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKEk-00BNZZ-R5
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:08:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKEi-0004Zu-KY
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:08:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rEM0Gp3JSir8Cqxde1eXrkUyudqZ9Lm8IrGmx6epYqg=; b=rdCAlK7k92V4xBAQ8YLTe1NjgL
	ewPT34GAq0JdxAbMb0xEmn6G3NOwjpsFjquSgD40Fww4VaHKL8gA/RFhJZ9HGwkm4Dmgu77CnF8h/
	luriS3uvTiZDatrz/0GcbqnxfyTJ6+fPxiF0QaqyYJUJRvXTxEaz0QBC8sEUxAVjRXJ6jh1hEEC8P
	U/5toeiWqsp3b61H/74eIl7kDnXeJbv1ISja9Cu4dIfOuwLdQkRnE1X8gRcaeBeQuJTlHgXBi80hF
	TJmM0w8pQjYXc4FmXxtpFQBkgVNVF1b5EmV54W40mtBu7w8J+q6SZd0jGfq2QPvyASwwX+n99d5tQ
	aFzoyRXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKDS-008Lm4-3s; Mon, 17 Oct 2022 07:07:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKDK-008Ljg-QY
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:07:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKDJ-0004Lv-Jx; Mon, 17 Oct 2022 09:07:05 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKDI-0021TF-Th; Mon, 17 Oct 2022 09:07:04 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKDI-0067IL-4I; Mon, 17 Oct 2022 09:07:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:07:02 +0200
Message-Id: <20221017070702.1457936-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017070702.1457936-1-a.fatoum@pengutronix.de>
References: <20221017070702.1457936-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_000706_979106_25795D66 
X-CRM114-Status: GOOD (  13.29  )
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
Subject: [PATCH 2/2] ARM: i.MX7: don't hardcode UART1 in imx7_early_setup_uart_clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

imx7_early_setup_uart_clock() has a very generic sounding name, but so
far only set up clocks for UART1. This can lead board code authors
astray that intend to user a different UART for DEBUG_LL.

This issue affects board code for kamstrup-mx7-concentrator, meerkat96
and zii-imx7d-dev, which use UART4, UART6 and UART2 respectively.

As I don't have this boards available to test and clock changes may have
adverse effect elsewhere, we have all existing users setup UART1 as
before, but note with a comment that this may not be the original
author's intention.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/ac-sxb/lowlevel.c                |  2 +-
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c |  2 +-
 .../boards/kamstrup-mx7-concentrator/lowlevel.c  |  3 ++-
 arch/arm/boards/meerkat96/lowlevel.c             |  3 ++-
 arch/arm/boards/zii-imx7d-dev/lowlevel.c         |  3 ++-
 arch/arm/mach-imx/include/mach/imx7-ccm-regs.h   | 16 ++++++++++++----
 6 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/ac-sxb/lowlevel.c b/arch/arm/boards/ac-sxb/lowlevel.c
index a910555f9bd7..a26454968304 100644
--- a/arch/arm/boards/ac-sxb/lowlevel.c
+++ b/arch/arm/boards/ac-sxb/lowlevel.c
@@ -93,7 +93,7 @@ extern char __dtb_z_ac_sxb_start[];
 
 static inline void setup_uart(void)
 {
-	imx7_early_setup_uart_clock();
+	imx7_early_setup_uart_clock(1);
 
 	imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
 
diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
index a8733d62091f..6d393bf2b10e 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -17,7 +17,7 @@ extern char __dtb_imx7d_sdb_start[];
 
 static inline void setup_uart(void)
 {
-	imx7_early_setup_uart_clock();
+	imx7_early_setup_uart_clock(1);
 
 	imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
 
diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
index 4a9eae80d153..511f01757c46 100644
--- a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
+++ b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
@@ -17,7 +17,8 @@ extern char __dtb_z_imx7d_flex_concentrator_mfg_start[];
 
 static inline void setup_uart(void)
 {
-	imx7_early_setup_uart_clock();
+	/* FIXME: Below UART4 is muxed, not UART1 */
+	imx7_early_setup_uart_clock(1);
 
 	imx7_setup_pad(MX7D_PAD_SAI2_TX_BCLK__UART4_DCE_TX);
 
diff --git a/arch/arm/boards/meerkat96/lowlevel.c b/arch/arm/boards/meerkat96/lowlevel.c
index 1c9baeacfb2a..e65726ef1c27 100644
--- a/arch/arm/boards/meerkat96/lowlevel.c
+++ b/arch/arm/boards/meerkat96/lowlevel.c
@@ -14,7 +14,8 @@ extern char __dtb_z_imx7d_meerkat96_start[];
 
 static void setup_uart(void)
 {
-	imx7_early_setup_uart_clock();
+	/* FIXME: Below UART6 is muxed, not UART1 */
+	imx7_early_setup_uart_clock(1);
 	imx7_setup_pad(MX7D_PAD_SD1_WP__UART6_DCE_TX);
 	imx7_uart_setup_ll();
 	putc_ll('>');
diff --git a/arch/arm/boards/zii-imx7d-dev/lowlevel.c b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
index 7579a2a8a050..0e316b602436 100644
--- a/arch/arm/boards/zii-imx7d-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
@@ -23,7 +23,8 @@ extern char __dtb_z_imx7d_zii_rmu2_start[];
 
 static inline void setup_uart(void)
 {
-	imx7_early_setup_uart_clock();
+	/* FIXME: Below UART2 is muxed, not UART1 */
+	imx7_early_setup_uart_clock(1);
 
 	imx7_setup_pad(MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX);
 
diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
index 89a41156cd6a..96fad868fa30 100644
--- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
@@ -3,6 +3,9 @@
 #ifndef __MACH_IMX7_CCM_REGS_H__
 #define __MACH_IMX7_CCM_REGS_H__
 
+#include <io.h>
+#include <linux/build_bug.h>
+
 #define IMX7_CLOCK_ROOT_INDEX(x)	(((x) - 0x8000) / 128)
 
 /*
@@ -34,16 +37,21 @@
 
 /* UART counting starts for 1, like in the datasheet/dt-bindings */
 
-static inline void imx7_early_setup_uart_clock(void)
+static inline void __imx7_early_setup_uart_clock(int uart)
 {
 	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
 
 	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART(1)));
+	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART(uart)));
 	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART_CLK_ROOT__OSC_24M,
-	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART_CLK_ROOT(1)));
+	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART_CLK_ROOT(uart)));
 	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART(1)));
+	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART(uart)));
 }
 
+#define imx7_early_setup_uart_clock(uart) do {	\
+	static_assert(1 <= (uart) && (uart) <= 6, "ID out of UART1-6 range"); \
+	__imx7_early_setup_uart_clock(uart); \
+} while (0)
+
 #endif
-- 
2.30.2



