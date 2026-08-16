Delivery-date: Sun, 16 Aug 2026 20:02:29 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBk-003phn-2F
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EFE08201B02
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="swhyxx4/";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/k+bT0D3+SDCuHYzzQb3YhhvWNLk5glBDaL3CD2LMvw=; b=swhyxx4/O9ZVDWfvwg37f1sWEV
	3zahjiUq5e6REnd/ipn9iFVK9dbv+KUkPHF3xn5C9xG/0hOnY9dWgW3xPYgaDjPkv8AE45Z8i7CaA
	UIR31sf6XxxNPNJ0kg1xJbXzgzz/5zvvqZyh8C9rYE8Xg4OG3xwd7BUZtNBM1m5twv5yxyPnDuGnn
	6JE9HKIwvff2KIccKA/459xiSz9aKcrS8RXts/3shsNaZeUppmNcnIwDQDtjHnSMqc/jLGwVzoO2Q
	N4nuDJdoRE1DYf4nRYI0RZrPxYelRb6oxmSrnplhu4WEifOze5pAuCDet7hq5XM97bjiZs4M3iYIp
	jH8Ga+xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBM-00000004xO8-1rcp;
	Sun, 16 Aug 2026 18:02:04 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBI-00000004xLV-18dd
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9C0CD201BAA;
	Sun, 16 Aug 2026 20:01:58 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBG-001orO-1g;
	Sun, 16 Aug 2026 20:01:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-179I;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:36 +0200
Subject: [PATCH 16/27] ARM: pxa: add DEBUG_LL support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-16-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=4829;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+4Y/Yh5fiIJf+M5xK5R+HLTWsCUmbue6sSPaAZaEhpk=;
 b=/pxOxDYvQp9yiTPeKwqEORtbhEw0pVxu+85ZppyKv/tOfDzuohCnyUhNnbsXmBK6Q5XViQx54
 c1Orjlf5MKJAxrJY7ryHZNwcu/t2qFcliGIbN5SkRQ3/kTTA3cFRHJ8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110200_473690_744D33E9 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PXA UARTs are NS16550 compatible, so the generic ns16550
    debug_ll helpers can be reused. Two things differ from a plain ns16550: the
    registers are 32bit wide and thus spaced four bytes apart, and [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: uk8uk3g3t3rswpihnez5utgaoi5tbjnh
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: EFE08201B02

The PXA UARTs are NS16550 compatible, so the generic ns16550 debug_ll
helpers can be reused. Two things differ from a plain ns16550: the
registers are 32bit wide and thus spaced four bytes apart, and the unit
has to be enabled explicitly with the UUE bit in the IER register.

The latter needs care as debug_ll_ns16550_init() clears IER to disable
the interrupts, which on PXA disables the unit as well, so UUE has to be
set again afterwards.

The UART clock is a fixed 14.857MHz on all PXA variants, so the divisor
can be calculated without any clock support.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                |  1 +
 arch/arm/include/asm/debug_ll.h |  2 ++
 common/Kconfig.debug_ll         | 17 ++++++++++
 include/mach/pxa/debug_ll.h     | 74 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 94 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2f2ab5d76d..292b9cfe66 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -122,6 +122,7 @@ config ARCH_PXA
 	bool "Intel/Marvell PXA based"
 	depends on 32BIT
 	select GPIOLIB
+	select HAS_DEBUG_LL
 
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA"
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index a645a6e910..e7e98ced0a 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -42,6 +42,8 @@
 #include <mach/zynq/debug_ll.h>
 #elif defined CONFIG_DEBUG_SOCFPGA_UART
 #include <mach/socfpga/debug_ll.h>
+#elif defined CONFIG_DEBUG_PXA_UART
+#include <mach/pxa/debug_ll.h>
 #endif
 
 #endif
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index 8445b4be08..8ae3bbb172 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -393,6 +393,14 @@ config DEBUG_TEGRA_UART
 	bool "Tegra debug UART"
 	depends on ARCH_TEGRA
 
+config DEBUG_SOCFPGA_UART
+	bool "SoCFPGA debug UART"
+	depends on ARCH_SOCFPGA
+
+config DEBUG_PXA_UART
+	bool "PXA debug UART"
+	depends on ARCH_PXA
+
 endchoice
 
 config DEBUG_LL_NS16550
@@ -400,6 +408,15 @@ config DEBUG_LL_NS16550
 	help
 	  Selected by RISC-V and PowerPC platforms that use ns16550 for debug_ll
 
+config DEBUG_PXA_UART_PORT
+	int "PXA Debug UART Port Selection" if DEBUG_PXA_UART
+	default 0
+	depends on ARCH_PXA
+	help
+	  Choose UART port on which barebox low-level debug messages
+	  should be output. Possible values are:
+	  0 - FFUART, 1 - BTUART, 2 - STUART
+
 config DEBUG_IMX_UART_PORT
 	int "i.MX Debug UART Port Selection" if DEBUG_IMX1_UART || \
 						DEBUG_IMX21_UART || \
diff --git a/include/mach/pxa/debug_ll.h b/include/mach/pxa/debug_ll.h
new file mode 100644
index 0000000000..3a9ec3b6b6
--- /dev/null
+++ b/include/mach/pxa/debug_ll.h
@@ -0,0 +1,74 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_PXA_DEBUG_LL_H__
+#define __MACH_PXA_DEBUG_LL_H__
+
+#include <io.h>
+#include <linux/bits.h>
+
+/*
+ * The PXA UARTs are NS16550 compatible, but the registers are 32bit
+ * wide and thus spaced four bytes apart. In addition to that the unit
+ * has to be enabled explicitly with the UUE bit in the IER register.
+ */
+#define PXA_UART_IER_UUE	BIT(6)
+
+#define PXA_FFUART_BASE		0x40100000
+#define PXA_BTUART_BASE		0x40200000
+#define PXA_STUART_BASE		0x40700000
+
+#ifdef CONFIG_DEBUG_PXA_UART
+
+#if CONFIG_DEBUG_PXA_UART_PORT == 0
+#define PXA_DEBUG_UART_BASE	PXA_FFUART_BASE
+#elif CONFIG_DEBUG_PXA_UART_PORT == 1
+#define PXA_DEBUG_UART_BASE	PXA_BTUART_BASE
+#elif CONFIG_DEBUG_PXA_UART_PORT == 2
+#define PXA_DEBUG_UART_BASE	PXA_STUART_BASE
+#else
+#error "Invalid CONFIG_DEBUG_PXA_UART_PORT"
+#endif
+
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
+{
+	return readl(base + (reg << 2));
+}
+
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
+{
+	writel(val, base + (reg << 2));
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void pxa_debug_ll_init(void)
+{
+	void __iomem *base = IOMEM(PXA_DEBUG_UART_BASE);
+	uint16_t divisor;
+
+	/* The UART clock is a fixed 14.857MHz on all PXA variants */
+	divisor = debug_ll_ns16550_calc_divisor(14857000);
+	debug_ll_ns16550_init(base, divisor);
+
+	/*
+	 * debug_ll_ns16550_init() has cleared IER to disable the
+	 * interrupts, which on PXA also disabled the unit. Enable it
+	 * again, interrupts stay disabled.
+	 */
+	debug_ll_write_reg(base, NS16550_IER, PXA_UART_IER_UUE);
+}
+
+static inline void PUTC_LL(char c)
+{
+	debug_ll_ns16550_putc(IOMEM(PXA_DEBUG_UART_BASE), c);
+}
+
+#else
+
+static inline void pxa_debug_ll_init(void)
+{
+}
+
+#endif /* CONFIG_DEBUG_PXA_UART */
+
+#endif /* __MACH_PXA_DEBUG_LL_H__ */

-- 
2.47.3



