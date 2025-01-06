Delivery-date: Mon, 06 Jan 2025 15:05:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjo-00HVy8-2z
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:05:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjk-0000lp-Vp
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:05:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R0fBx5d4qcjmhZECntvLdhMrq+GdiV43D9xcw76VZQ8=; b=c2yK89Pux1n481lS+DdTHhcUZx
	6oQYQxC8n3IacKPwL1sl3NAyRX+ILH2qQfaVLuabwqT+E+U7hNHRZqx3hHiSVmEW68dHeZDwxraGs
	+vvV2Jzg+UkxjTkz/EqEwnB0qJB5yy0/FpE1bVdgFKEglIYs6DQsgwI/f9kLO1L86uJtvbsVfjVGz
	eBiwFfwA5uO+fBOn+mpYGBeRgqgUU6per92tx+2JCk5sCADNmoNuxE2B8zpYr+eZyeYBckZZDly+r
	JinOGHE1P/i/CjkChgfq+5qru2PZQV6x/dvKUjtdFSicGEkgS5v9zEbxYWHvyxSRWPvT7etudXPBf
	KhEB5TtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnjA-00000001V3F-1Tds;
	Mon, 06 Jan 2025 14:05:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUngV-00000001UYG-3qYE
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 14:02:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngU-00089s-Q0; Mon, 06 Jan 2025 15:02:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngT-007B6U-2i;
	Mon, 06 Jan 2025 15:02:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1s;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:47:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-12-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171221; l=2352;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RRjgrpTVUvhsVoEGq0kL+js2+EE+s+f6ZdlhspHrEII=;
 b=/+EydGycfEUb5YH7YHtO7IS+GTCjkSL9v7031tzs/CV+IXJIKt62kImHK+FQHkzYtGHHShQe+
 MzJfQ6JLyUsCbGkzsl5vRg2tk2vPXNby0YuUBLuJu3nzgLHlBxwnqTY
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_060224_008310_96DB2D17 
X-CRM114-Status: GOOD (  10.83  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 12/22] ARM: K3: use debug_ll code for regular PBL
 console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move parts of the K3 debug_ll code outside the #ifdef
CONFIG_DEBUG_AM62X_UART.  This allows us to use the debug_ll provided
functions as a regular console with pbl_set_putc().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/k3/debug_ll.h | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/include/mach/k3/debug_ll.h b/include/mach/k3/debug_ll.h
index a37b50c726..13321c6134 100644
--- a/include/mach/k3/debug_ll.h
+++ b/include/mach/k3/debug_ll.h
@@ -2,20 +2,6 @@
 #define __MACH_K3_DEBUG_LL_H__
 #include <io.h>
 
-#define AM62X_UART_UART0_BASE	0x02800000
-#define AM62X_UART_UART1_BASE	0x02810000
-#define AM62X_UART_UART2_BASE	0x02820000
-#define AM62X_UART_UART3_BASE	0x02830000
-#define AM62X_UART_UART4_BASE	0x02840000
-#define AM62X_UART_UART5_BASE	0x02850000
-#define AM62X_UART_UART6_BASE	0x02860000
-
-#if defined CONFIG_DEBUG_AM62X_UART
-#define K3_DEBUG_SOC AM62X_UART
-
-#define __K3_UART_BASE(soc, num) soc##_UART##num##_BASE
-#define K3_UART_BASE(soc, num) __K3_UART_BASE(soc, num)
-
 static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
 	return readb(base + (reg << 2));
@@ -28,11 +14,6 @@ static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
 
 #include <debug_ll/ns16550.h>
 
-static inline void debug_ll_init(void)
-{
-	/* already configured */
-}
-
 static inline void k3_debug_ll_init(void __iomem *base)
 {
 	debug_ll_ns16550_init(base, 26);
@@ -41,6 +22,25 @@ static inline void k3_debug_ll_init(void __iomem *base)
 	debug_ll_write_reg(base, 8, 0x00);
 }
 
+#define AM62X_UART_UART0_BASE	0x02800000
+#define AM62X_UART_UART1_BASE	0x02810000
+#define AM62X_UART_UART2_BASE	0x02820000
+#define AM62X_UART_UART3_BASE	0x02830000
+#define AM62X_UART_UART4_BASE	0x02840000
+#define AM62X_UART_UART5_BASE	0x02850000
+#define AM62X_UART_UART6_BASE	0x02860000
+
+#if defined CONFIG_DEBUG_AM62X_UART
+#define K3_DEBUG_SOC AM62X_UART
+
+#define __K3_UART_BASE(soc, num) soc##_UART##num##_BASE
+#define K3_UART_BASE(soc, num) __K3_UART_BASE(soc, num)
+
+static inline void debug_ll_init(void)
+{
+	/* already configured */
+}
+
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,

-- 
2.39.5



