Delivery-date: Mon, 17 Oct 2022 09:08:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKEg-00BNZA-1y
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:08:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKEe-0004ZH-2I
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:08:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rx1iQtdUUjugeDKIRP8X7p40tMKgiChZaRyqJz+p3yI=; b=IM+VLpmgc3AGPzP9L5tcVjYxOU
	pKk9Tds8cVjHlxGVpf+H99qymqBeTLk6t901g5OVOHdN4ISPDcOg0G0Yc20BIvc0glpG0vRzlmySi
	R8fxLZrm0UQssIMUVCGJ+8N4hTAZXilLsfarD2H840b6j8LYsLIol65qy4trTSfYPFkqaP7jTO8n8
	VVDArOhAuL19GZ2yRwJcQeGI5umau8Me5oiJJi0ooEyZgh5bAqhuPmCjzVa9bs2Lj5LqRYE4t75n1
	MYhI+8Yd2R7l9DQaeEvXIBTk2nde/E3uFguRU8XEJeZIA5ne2JJxwHuvt/17hzWt7OmnGPO5Jm+iu
	thEeAyUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKDP-008LlP-SW; Mon, 17 Oct 2022 07:07:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKDK-008Ljd-OB
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:07:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKDJ-0004Lt-G7; Mon, 17 Oct 2022 09:07:05 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKDI-0021TC-OP; Mon, 17 Oct 2022 09:07:04 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKDI-0067IJ-3t; Mon, 17 Oct 2022 09:07:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:07:01 +0200
Message-Id: <20221017070702.1457936-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_000706_807128_A1ABB704 
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX7: replace hardcoded UART clocking defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently have the clock defines for 1-3, but lack 4-6.
Add generic defines that can be used for all of 1-6 and
start using them in the header.

The old defines are not used outside the file, so drop them.
Out-of-tree users can just move the number into the parenthesis:

	IMX7_CCM_CCGR_UART1 -> IMX7_CCM_CCGR_UART(1)
	IMX7_UART1_CLK_ROOT ->  IMX7_UART_CLK_ROOT(1)

Consulting the data sheet also showed that IMX7_UART_CLK_ROOT__OSC_24M
is the same value for all UARTs, so we omit the argument there.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../arm/mach-imx/include/mach/imx7-ccm-regs.h | 25 ++++++++-----------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
index aecf9a26d017..89a41156cd6a 100644
--- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
@@ -3,24 +3,17 @@
 #ifndef __MACH_IMX7_CCM_REGS_H__
 #define __MACH_IMX7_CCM_REGS_H__
 
-#define IMX7_CCM_CCGR_UART1		148
-#define IMX7_CCM_CCGR_UART2		149
-#define IMX7_CCM_CCGR_UART3		150
-
 #define IMX7_CLOCK_ROOT_INDEX(x)	(((x) - 0x8000) / 128)
 
 /*
  * Taken from "Table 5-11. Clock Root Table" from i.MX7 Dual Processor
  * Reference Manual
  */
-#define IMX7_UART1_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xaf80)
-#define IMX7_UART1_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
-
-#define IMX7_UART2_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xb000)
-#define IMX7_UART2_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
 
-#define IMX7_UART3_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xb080)
-#define IMX7_UART3_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
+/* 1 <= n <= 6 */
+#define IMX7_CCM_CCGR_UART(n)		(148 + (n) - 1)
+#define IMX7_UART_CLK_ROOT(n)		IMX7_CLOCK_ROOT_INDEX(0xaf80 + (n - 1) * 0x80)
+#define IMX7_UART_CLK_ROOT__OSC_24M	IMX7_CCM_TARGET_ROOTn_MUX(0b000)
 
 /* 0 <= n <= 190 */
 #define IMX7_CCM_CCGRn_SET(n)	(0x4004 + 16 * (n))
@@ -39,16 +32,18 @@
 #define IMX7_CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	IMX7_CCM_CCGR_SETTINGn(n, 0b10)
 #define IMX7_CCM_CCGR_SETTINGn_NEEDED(n)		IMX7_CCM_CCGR_SETTINGn(n, 0b11)
 
+/* UART counting starts for 1, like in the datasheet/dt-bindings */
+
 static inline void imx7_early_setup_uart_clock(void)
 {
 	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
 
 	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART1));
-	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART1_CLK_ROOT__OSC_24M,
-	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART1_CLK_ROOT));
+	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART(1)));
+	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART_CLK_ROOT__OSC_24M,
+	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART_CLK_ROOT(1)));
 	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART1));
+	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART(1)));
 }
 
 #endif
-- 
2.30.2



