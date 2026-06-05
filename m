Delivery-date: Fri, 05 Jun 2026 14:59:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVU9B-002cXh-1q
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 14:59:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVU9A-0003sb-RM
	for lore@pengutronix.de; Fri, 05 Jun 2026 14:59:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3LafgwSjWSUm81R9asgkopXp+NdDxQxg9Gfm/3R5GFg=; b=qBRig8hI2eBlxMX7ZqFarviAmq
	PamhMzwaU1f/XTd4j6O69LxWU/9cfTrA9ml34vHE0oJZHQVW29OVen/DcC59jV8tYyV6lEYyjcu5M
	Afv81pQkGOT/aV8fugcDCSPnm2oBOjSK3iIIfkLQUmKBQGPArbCArjFvjW0ehNUznX6h8sSKIKWmT
	sdnk0o+NDDSuqQ5LtdEj7VXnr+oRZZrxJlvJjqAfSinJdNLDcXUA92wDhil06XUBtZ6HXaPrUCI1M
	61SYwZNgY4CnMWNClO/NjCIllclVA3uhc1YQm1wxEfWliKVIAYH7/LbS60shhlLguBarRSaXZSdFw
	L6vGF7cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVU7v-00000000e57-1dRs;
	Fri, 05 Jun 2026 12:58:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVU7s-00000000e3g-2GPU
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 12:58:18 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wVU7p-0003Xw-N9; Fri, 05 Jun 2026 14:58:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 05 Jun 2026 14:58:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260605-socfpga-debug-uart-v1-2-8454bfc709bf@pengutronix.de>
References: <20260605-socfpga-debug-uart-v1-0-8454bfc709bf@pengutronix.de>
In-Reply-To: <20260605-socfpga-debug-uart-v1-0-8454bfc709bf@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_055816_589574_756128C1 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] arm: socfpga: get rid of UART address for low-level
 debug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are existing address definitions for UART0 and UART1 on SoCFPGA.
Having the UART address in the config is error prone.

Change it to debug ports, which allow to select the UART instead of
setting the address. While at it, simplify the configuration.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 common/Kconfig.debug_ll         | 44 +++++++++++------------------------------
 include/mach/socfpga/debug_ll.h |  9 +++++++--
 2 files changed, 18 insertions(+), 35 deletions(-)

diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index 3f06e2eef418..650bfe56383e 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -238,33 +238,12 @@ config DEBUG_ROCKCHIP_RK3399_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on RK3399.
 
-config DEBUG_SOCFPGA_UART0
-	bool "Use SOCFPGA UART0 for low-level debug"
+config DEBUG_SOCFPGA_UART
+	bool "SoCFPGA Debug UART"
 	depends on ARCH_SOCFPGA
 	help
 	  Say Y here if you want kernel low-level debugging support
-	  on SOCFPGA(Cyclone 5 and Arria 5) based platforms.
-
-config DEBUG_SOCFPGA_UART1
-	bool "Use SOCFPGA UART1 for low-level debug"
-	depends on ARCH_SOCFPGA
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on SOCFPGA(Arria 10) based platforms.
-
-config DEBUG_SOCFPGA_AGILEX5_UART0
-	bool "Use Agilex5 UART0 for low-level debug"
-	depends on ARCH_SOCFPGA_AGILEX5
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on Agilex5 based platforms.
-
-config DEBUG_SOCFPGA_AGILEX5_UART1
-	bool "Use Agilex5 UART1 for low-level debug"
-	depends on ARCH_SOCFPGA_AGILEX5
-	help
-	  Say Y here if you want kernel low-level debugging support
-	  on Agilex5 based platforms.
+	  on SoCFPGA based platforms.
 
 config DEBUG_STM32MP_UART
 	bool "Use STM32MP UART4 for low-level debug"
@@ -482,19 +461,18 @@ config DEBUG_ROCKCHIP_UART_PORT
 	  Choose UART port on which kernel low-level debug messages
 	  should be output.
 
-config DEBUG_SOCFPGA_UART_PHYS_ADDR
-	hex "Physical base address of debug UART" if DEBUG_LL
-	default 0xffc02000 if DEBUG_SOCFPGA_UART0
-	default 0xffc02100 if DEBUG_SOCFPGA_UART1
-	default 0x10c02000 if DEBUG_SOCFPGA_AGILEX5_UART0
-	default 0x10c02100 if DEBUG_SOCFPGA_AGILEX5_UART1
+config DEBUG_SOCFPGA_UART_PORT
+	int "SocFPGA UART debug port" if DEBUG_SOCFPGA_UART
+	default 0 if ARCH_SOCFPGA_CYCLONE5 || ARCH_SOCFPGA_AGILEX5
+	default 1 if ARCH_SOCFPGA_ARRIA10
 	depends on ARCH_SOCFPGA
+	help
+	  Select UART port used for early debugging.
 
 config DEBUG_SOCFPGA_UART_CLOCK
-	int "SoCFPGA UART debug clock" if DEBUG_LL
-	default 100000000 if ARCH_SOCFPGA_CYCLONE5
+	int "SoCFPGA UART debug clock" if DEBUG_SOCFPGA_UART
+	default 100000000 if ARCH_SOCFPGA_CYCLONE5 || ARCH_SOCFPGA_AGILEX5
 	default  50000000 if ARCH_SOCFPGA_ARRIA10
-	default 100000000 if ARCH_SOCFPGA_AGILEX5
 	depends on ARCH_SOCFPGA
 	help
 	  Choose UART root clock.
diff --git a/include/mach/socfpga/debug_ll.h b/include/mach/socfpga/debug_ll.h
index 86f6256af995..3d69d87545c1 100644
--- a/include/mach/socfpga/debug_ll.h
+++ b/include/mach/socfpga/debug_ll.h
@@ -4,9 +4,14 @@
 #define   __MACH_SOCFPGA_DEBUG_LL_H__
 
 #include <io.h>
+#include <mach/socfpga/soc64-regs.h>
 
-#ifdef CONFIG_DEBUG_LL
-#define UART_BASE	CONFIG_DEBUG_SOCFPGA_UART_PHYS_ADDR
+#define __SOCFPGA_UART_BASE(num)	SOCFPGA_UART##num##_ADDRESS
+#define SOCFPGA_UART_BASE(num)		__SOCFPGA_UART_BASE(num)
+
+#ifdef CONFIG_DEBUG_SOCFPGA_UART
+
+#define UART_BASE			SOCFPGA_UART_BASE(CONFIG_DEBUG_SOCFPGA_UART_PORT)
 
 #if defined(CONFIG_ARCH_SOCFPGA_CYCLONE5)
 static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)

-- 
2.47.3



