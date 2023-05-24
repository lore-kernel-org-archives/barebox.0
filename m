Delivery-date: Thu, 25 May 2023 01:45:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAL-00Crek-QC
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAJ-00073z-61
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mCMjd4aAIZOHWtLpOjlDmAxYf6xMYQINqXTNIfwwEG8=; b=Cx++tJi3gWdidaq9Tn/LU1udO4
	ZskikJQ9QYivw2lCns9GBBwPjR9xfj+xB7m1vHoQZyEipf+Fo4+tQwC9kUElJEG2AH20UpqJrNC6Z
	tyrOWDYKEfufRSnK6yl386MLwo90E6llPGrpPqdvMgD3nvlh2oxCxj5HUdGMyRfIbHv9HyKU75ygY
	FpDKv8vmCPHnAyp0+WGMt55CXpTGUm3rlp3jTOrBuU4L7BXYKJ96R5tKxI7sGlBekXQhcMgV0dDHl
	PGeBmIVjt4BqOqTdxmAcrg1u04wlw9Xv2lit4so9hVVTE/t3K4wBnadyb+oIEHLcy+l/fOFUTwpZm
	53t6mpPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8x-00EzKc-1H;
	Wed, 24 May 2023 23:43:47 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8u-00EzHp-0v
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:46 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id A404B1C000D;
	Wed, 24 May 2023 23:43:38 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:21 +0200
Message-Id: <20230524234328.82741-7-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524234328.82741-1-jmaselbas@zdiv.net>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_164344_493649_B14D13A0 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 06/13] ARM: sunxi: Add debug_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 arch/arm/include/asm/debug_ll.h |  2 ++
 arch/arm/mach-sunxi/Kconfig     |  4 ++++
 include/mach/sunxi/debug_ll.h   | 35 +++++++++++++++++++++++++++++++++
 3 files changed, 41 insertions(+)
 create mode 100644 include/mach/sunxi/debug_ll.h

diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index a1d5161ccf..054d021bab 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -50,6 +50,8 @@
 #include <mach/uemd/debug_ll.h>
 #elif defined CONFIG_ARCH_SOCFPGA
 #include <mach/socfpga/debug_ll.h>
+#elif defined CONFIG_ARCH_SUNXI
+#include <mach/sunxi/debug_ll.h>
 #elif defined CONFIG_ARCH_PXA
 #include <mach/pxa/debug_ll.h>
 #elif defined CONFIG_ARCH_NOMADIK
diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
index 6094f40e2e..61a5ae9ae2 100644
--- a/arch/arm/mach-sunxi/Kconfig
+++ b/arch/arm/mach-sunxi/Kconfig
@@ -1,3 +1,7 @@
 if ARCH_SUNXI
 
+config SUNXI_DEBUG_LL_UART_BASE
+	hex
+	default 0x01c28000
+
 endif
diff --git a/include/mach/sunxi/debug_ll.h b/include/mach/sunxi/debug_ll.h
new file mode 100644
index 0000000000..99f77ab2e4
--- /dev/null
+++ b/include/mach/sunxi/debug_ll.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <io.h>
+
+#define DEBUG_LL_UART_ADDR IOMEM(CONFIG_SUNXI_DEBUG_LL_UART_BASE)
+
+static inline uint8_t debug_ll_read_reg(int reg)
+{
+	return readl(DEBUG_LL_UART_ADDR + reg * sizeof(uint32_t));
+}
+
+static inline void debug_ll_write_reg(int reg, uint8_t val)
+{
+	writel(val, DEBUG_LL_UART_ADDR + reg * sizeof(uint32_t));
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void debug_ll_init(void)
+{
+	uint16_t divisor;
+
+	divisor = debug_ll_ns16550_calc_divisor(24 * 1000 * 1000);
+	debug_ll_ns16550_init(divisor);
+}
+
+static inline void PUTC_LL(int c)
+{
+       debug_ll_ns16550_putc(c);
+}
+
+#endif
-- 
2.40.1



