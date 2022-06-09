Delivery-date: Thu, 09 Jun 2022 08:01:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEX-008S2m-15
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:01:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBET-00010f-M3
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:01:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SM3AAct+mH/0wi9dKk1Oo1lcvsiCmHEyGgQjGJVOwBI=; b=fjoz4kxkQJZP8m
	DuuxYC5w9EHAuVhFR49mJZnlUVwa/1qHS6W/HLfkUl4+vC2BManUhETCG+Faw9K47rJXkgUIwbNvh
	+odQ1h+8pqi7RnONiSeqn2OKLuZ5Lvfse8LbblJc5fmtbbz7GIqnRvXhKC1h7hcv4OSiqp2DH3fA4
	+Ct2zFUUfGU+5ruS+eAJHRuiQNv3aDbXquP2CG7fdGX17THlcSBMq+w2B9cX1Syo9awtNHKKUL9yW
	+uDEzFGuOq+jbvi38N4bhAzYUBIlbOUq1xOA1EYHw3kR2Nq9QMp4eR03GB0wBE766xrt+bgpcprxr
	KZBK+X0mo6IAZY+Qct7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBD6-00GvJD-7k; Thu, 09 Jun 2022 06:00:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCa-00Guyw-1x
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-0008Gn-QN; Thu, 09 Jun 2022 07:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCZ-007K9J-BK; Thu, 09 Jun 2022 07:59:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002naL-EU; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:20 +0200
Message-Id: <20220609055922.667016-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225928_155221_F4423E81 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 19/21] ARM: rpi: add debug_ll support for Raspberry Pi 4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The mini uart (Pins 8/10) is the primary UART on the Raspberry Pi 4 and
can be set up in firmware by specifying enable_uart=1 in the config.txt.

Add a DEBUG_LL implementation to use this for early debugging.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-bcm283x/include/mach/debug_ll.h | 20 +++++++++++++++++++
 arch/arm/mach-bcm283x/include/mach/platform.h |  1 +
 common/Kconfig                                |  7 +++++++
 3 files changed, 28 insertions(+)

diff --git a/arch/arm/mach-bcm283x/include/mach/debug_ll.h b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
index db23112aa07e..fdb63b4f5a40 100644
--- a/arch/arm/mach-bcm283x/include/mach/debug_ll.h
+++ b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
@@ -18,6 +18,7 @@
 #define __MACH_BCM2835_DEBUG_LL_H__
 
 #include <mach/platform.h>
+#include <io.h>
 
 #ifdef CONFIG_DEBUG_RPI1_UART
 
@@ -66,6 +67,25 @@ static inline void debug_ll_init(void)
 	debug_ll_ns16550_init(divisor);
 }
 
+#elif defined CONFIG_DEBUG_RPI4_MINI_UART
+
+static inline uint8_t debug_ll_read_reg(int reg)
+{
+	return readb(BCM2711_MINIUART_BASE + (reg << 2));
+}
+
+static inline void debug_ll_write_reg(int reg, uint8_t val)
+{
+	writeb(val, BCM2711_MINIUART_BASE + (reg << 2));
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void debug_ll_init(void)
+{
+	/* Configured by ROM */
+}
+
 #else
 
 static inline void debug_ll_init(void)
diff --git a/arch/arm/mach-bcm283x/include/mach/platform.h b/arch/arm/mach-bcm283x/include/mach/platform.h
index 6917e1f345d7..b957ac8de35e 100644
--- a/arch/arm/mach-bcm283x/include/mach/platform.h
+++ b/arch/arm/mach-bcm283x/include/mach/platform.h
@@ -34,6 +34,7 @@
 #define BCM2836_PL011_BASE 0x3f201000UL
 #define BCM2835_MINIUART_BASE 0x20215040
 #define BCM2836_MINIUART_BASE 0x3f215040UL
+#define BCM2711_MINIUART_BASE 0xfe215040UL
 
 #endif
 
diff --git a/common/Kconfig b/common/Kconfig
index f7a6a96e877c..4054bd838dec 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1413,6 +1413,13 @@ config DEBUG_RPI3_MINI_UART
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 3 board mini UART.
 
+config DEBUG_RPI4_MINI_UART
+	bool "RaspberryPi 4 mini UART"
+	depends on ARCH_BCM283X
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 4 board mini UART.
+
 config DEBUG_ERIZO
 	bool "Erizo ns16550 port"
 	depends on SOC_ERIZO
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

