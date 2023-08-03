Delivery-date: Thu, 03 Aug 2023 12:51:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvV-004wN6-5F
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvT-0001mh-2k
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m1TZfi/iyHrVhd0I/A1fovGd9HuLu6HjDgRzAOqa/Yc=; b=ZUyzJ5fK2jcIZBztjZhsBR6h+X
	UerWg2bqbkNRhh7+lGR1pULFswTTBHiJwON5iRLqs4BVjlu9/bkQq3Pp/Gp/hgsmZnIJ+FB8H90+0
	rVnyH/ZyvfsdGeqxFNstMd+19y6j0NWqnOIzsaDR85R3IQK3uNuhDG0DxFayRd/YrNHxCc/jjJvD8
	fHBR4GfArM2HcKv6kbGj6kX+KBq+yNpKCgLNOGn2YZzfn/UsXNnDGVbPNnLJ76nNC6sdN5X7IBUvK
	oqWJD5tkkOHMe1e+rbXzJrb36sKp6BLii1DOndxR0LL1z0JpXGNjwJv4ybBb36VBtuAdDrsIb9xnC
	S3dl0zyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuO-007UgQ-28;
	Thu, 03 Aug 2023 10:50:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuD-007UZC-3B
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000xN-Pa; Thu, 03 Aug 2023 12:50:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-000ovt-4B; Thu, 03 Aug 2023 12:50:08 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAz1-9D; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:45 +0200
Message-Id: <20230803105003.4088205-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/22] ARM64: Add support for debug_ll on TI AM62x SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

TI K3 SoCs have ns16550 compatible UARTs. Add lowlevel debugging support
for the AM62x SoC from the K3 family.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/debug_ll.h |  2 ++
 common/Kconfig                  | 16 ++++++++++-
 include/mach/k3/debug_ll.h      | 49 +++++++++++++++++++++++++++++++++
 3 files changed, 66 insertions(+), 1 deletion(-)
 create mode 100644 include/mach/k3/debug_ll.h

diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index a1d5161ccf..98a7d0d839 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -64,6 +64,8 @@
 #include <mach/clps711x/debug_ll.h>
 #elif defined CONFIG_ARCH_AT91
 #include <mach/at91/debug_ll.h>
+#elif defined CONFIG_ARCH_K3
+#include <mach/k3/debug_ll.h>
 #endif
 
 #endif
diff --git a/common/Kconfig b/common/Kconfig
index 50f62b9f9a..3938577987 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1552,6 +1552,10 @@ config DEBUG_SUN20I
 	depends on SOC_ALLWINNER_SUN20I
 	select DEBUG_LL_NS16550
 
+config DEBUG_AM62X_UART
+	bool "Texas Instruments AM62X debug UART"
+	depends on ARCH_K3
+
 config DEBUG_QEMU_ARM64_VIRT
 	bool "QEMU ARM64 Virt PL011 console"
 	depends on ARCH_ARM64_VIRT
@@ -1582,10 +1586,20 @@ config DEBUG_IMX_UART_PORT
 	  Choose UART port on which kernel low-level debug messages
 	  should be output.
 
+config DEBUG_K3_UART_PORT
+	int "K3 Debug UART Port Selection" if DEBUG_AM62X_UART
+	default 0
+	depends on ARCH_K3
+	help
+	  Choose UART port on which kernel low-level debug messages
+	  should be output. Possible values are:
+	  AM62x: 0 - 6
+
 config DEBUG_OMAP_UART_PORT
 	int "OMAP Debug UART Port Selection" if DEBUG_OMAP3_UART || \
 						DEBUG_OMAP4_UART || \
-						DEBUG_AM33XX_UART
+						DEBUG_AM33XX_UART || \
+						DEBUG_AM62X_UART
 	default 1
 	depends on ARCH_OMAP
 	help
diff --git a/include/mach/k3/debug_ll.h b/include/mach/k3/debug_ll.h
new file mode 100644
index 0000000000..2433bb8f2e
--- /dev/null
+++ b/include/mach/k3/debug_ll.h
@@ -0,0 +1,49 @@
+#ifndef __MACH_K3_DEBUG_LL_H__
+#define __MACH_K3_DEBUG_LL_H__
+#include <io.h>
+
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
+static inline uint8_t debug_ll_read_reg(int reg)
+{
+	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,
+					CONFIG_DEBUG_K3_UART_PORT);
+
+	return readb(base + (reg << 2));
+}
+
+static inline void debug_ll_write_reg(int reg, uint8_t val)
+{
+	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,
+					CONFIG_DEBUG_K3_UART_PORT);
+
+	writeb(val, base + (reg << 2));
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void debug_ll_init(void)
+{
+	/* already configured */
+}
+
+static inline void PUTC_LL(int c)
+{
+	debug_ll_ns16550_putc(c);
+}
+
+#endif
+
+#endif /* __MACH_K3_DEBUG_LL_H__ */
-- 
2.39.2



