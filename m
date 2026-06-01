Delivery-date: Mon, 01 Jun 2026 14:31:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wU1nY-001ECs-1i
	for lore@lore.pengutronix.de;
	Mon, 01 Jun 2026 14:31:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wU1nX-0006U9-O0
	for lore@pengutronix.de; Mon, 01 Jun 2026 14:31:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jKNDmRSj5ZMVwKkcF1NFqVdjuhgD/EenZi1zvnFWqfI=; b=Rvkume0/okfgNIM9AEV5m7r7mG
	Ak3uOEAw5i+S8h4jsCKDEgLu/lN+4/5btHCRL66Ffb8cIMHcKSxaJL/p8XahToNMVaQ3i5oesXvrs
	+cehyaqgenf9Sh3LSaAGadODxd2VTxq4aqsM7z/xK0pzSrVUNycI4Aanj9Zmm8ENR2JT+KDaTXz3G
	OoSOuoCi+SKve0vcsUO8nYgq+MXZ7y9V16IgcMhqMXySgpfeSH5BxRxL8kBIe4ZKvhQohLI0DfNOl
	RofU33t3Gvmgiw+5SbP8AOL9w8ckVbaTz2AKWHdLd0wutm1BlvBl4OCRzJVuq+jl2fvz48VucaSeS
	2haXGNkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mP-0000000B8Oa-0O8I;
	Mon, 01 Jun 2026 12:30:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mM-0000000B8NN-25yp
	for barebox@bombadil.infradead.org;
	Mon, 01 Jun 2026 12:30:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=jKNDmRSj5ZMVwKkcF1NFqVdjuhgD/EenZi1zvnFWqfI=; b=ZJkSHX55mOXvMK8Wt653uFJUIm
	V4hQyR+8zgkjea+e5Hb8EYODr4+CFDjgjZmpUo0shzzVObUpaHs0ZPDHHAnIXK7GW1p519uT2VWB+
	E8r1lVq8tXJIDCdzdo4gzOtGV5UNHGxyNAEUQDDtWWyTyCXudKLGvrAJY9pGdnl7mj/pYaSr6ZV0M
	qH4PdWdjvLE5ZLU1kJqRyAZ4SRMxR7h4N0xr2K5eFDz/MTANvCGSCioDMdxddzJBoyf9rfUJE/as3
	BJBVB3wY3kUnQQhoaA/6P2u/XB68T7WiFElPyU5+VmQ6fX0Kfqs1bRm8XYw0vaUcjS1qdPXeC07YW
	Zu5nmsKA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mH-00000006gtA-32eQ
	for barebox@lists.infradead.org;
	Mon, 01 Jun 2026 12:30:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-0006JB-Ul; Mon, 01 Jun 2026 14:29:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-000a6B-2p;
	Mon, 01 Jun 2026 14:29:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-00000002PJv-3O11;
	Mon, 01 Jun 2026 14:29:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 01 Jun 2026 14:29:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260601-debug-ll-conflicts-v1-2-bf17f9f0e23a@pengutronix.de>
References: <20260601-debug-ll-conflicts-v1-0-bf17f9f0e23a@pengutronix.de>
In-Reply-To: <20260601-debug-ll-conflicts-v1-0-bf17f9f0e23a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780316994; l=4768;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=yhCvbs+MF5sVUfCeGz6KBvpoYs+xg0a1Yi4xsVVWmvE=;
 b=jYHoQGocef8jtkoHgMp2kSv0V40Ma50WjKGauUOwXwdTrRHSoKQoOv3XatgiV1cqMimr/2LVA
 1VtRcmZlwFeBW9LUb30OdvqM8LLLmqf5kdOhfi2e2/KkKVrbKldbA/e
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_132958_358189_9B1DC88C 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] debug_ll: Add Kconfig options for debug uarts that
 have none
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some SoCs include its debug_ll.h header file only by testing if
support for that SoC is compiled in. That doesn't work when barebox is
built for multiple SoCs as this leads to multiple definitions of
PUTC_LL.

Add a debug UART Kconfig option for all SoCs that do not yet have one.
The debug UART selection is a choice which makes sure only a single
debug UART is selected which also means we can include the SoC specific
debug_ll.h files using #if defined / elif defined.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/debug_ll.h | 69 ++++++++++++++---------------------------
 common/Kconfig.debug_ll         | 28 +++++++++++++++++
 2 files changed, 52 insertions(+), 45 deletions(-)

diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index fd7715c743..a645a6e910 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -3,66 +3,45 @@
 #ifndef __ASM_DEBUG_LL_H__
 #define __ASM_DEBUG_LL_H__
 
-#ifdef CONFIG_DEBUG_IMX_UART
+#if defined CONFIG_DEBUG_IMX_UART
 #include <mach/imx/debug_ll.h>
-#endif
-
-#ifdef CONFIG_DEBUG_ROCKCHIP_UART
+#elif defined CONFIG_DEBUG_ROCKCHIP_UART
 #include <mach/rockchip/debug_ll.h>
-#endif
-
-#ifdef CONFIG_DEBUG_OMAP_UART
+#elif defined CONFIG_DEBUG_OMAP_UART
 #include <mach/omap/debug_ll.h>
-#endif
-
-#ifdef CONFIG_DEBUG_ZYNQMP_UART
+#elif defined CONFIG_DEBUG_ZYNQMP_UART
 #include <mach/zynqmp/debug_ll.h>
-#endif
-
-#ifdef CONFIG_DEBUG_STM32MP_UART
+#elif defined CONFIG_DEBUG_STM32MP_UART
 #include <mach/stm32mp/debug_ll.h>
-#endif
-
-#if defined(CONFIG_DEBUG_VEXPRESS_UART) || \
-    defined(CONFIG_DEBUG_QEMU_ARM32_VIRT)
+#elif defined CONFIG_DEBUG_VEXPRESS_UART || defined CONFIG_DEBUG_QEMU_ARM32_VIRT
 #include <mach/vexpress/debug_ll.h>
-#endif
-
-#ifdef CONFIG_DEBUG_BCM283X_UART
+#elif defined CONFIG_DEBUG_BCM283X_UART
 #include <mach/bcm283x/debug_ll.h>
-#endif
-
-#ifdef CONFIG_DEBUG_LAYERSCAPE_UART
+#elif defined CONFIG_DEBUG_LAYERSCAPE_UART
 #include <mach/layerscape/debug_ll.h>
-#endif
-
-#ifdef CONFIG_DEBUG_SEMIHOSTING
+#elif defined CONFIG_DEBUG_SEMIHOSTING
 #include <debug_ll/semihosting.h>
-#endif
-
-#ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
+#elif defined CONFIG_DEBUG_AT91_UART
+#include <mach/at91/debug_ll.h>
+#elif defined CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
-#elif defined CONFIG_ARCH_MVEBU
+#elif defined CONFIG_DEBUG_AM62X_UART
+#include <mach/k3/debug_ll.h>
+#elif defined CONFIG_DEBUG_MVEBU_UART
 #include <mach/mvebu/debug_ll.h>
-#elif defined CONFIG_ARCH_ZYNQ
-#include <mach/zynq/debug_ll.h>
-#elif defined CONFIG_ARCH_VERSATILE
+#elif defined CONFIG_DEBUG_CLPS711X_UART
+#include <mach/clps711x/debug_ll.h>
+#elif defined CONFIG_DEBUG_MXS_UART
+#include <mach/mxs/debug_ll.h>
+#elif defined CONFIG_DEBUG_VERSATILE_UART
 #include <mach/versatile/debug_ll.h>
-#elif defined CONFIG_ARCH_TEGRA
+#elif defined CONFIG_DEBUG_TEGRA_UART
 #include <mach/tegra/debug_ll.h>
-#elif defined CONFIG_ARCH_SOCFPGA
+#elif defined CONFIG_DEBUG_ZYNQ_UART
+#include <mach/zynq/debug_ll.h>
+#elif defined CONFIG_DEBUG_SOCFPGA_UART
 #include <mach/socfpga/debug_ll.h>
-#elif defined CONFIG_ARCH_PXA
-#include <mach/pxa/debug_ll.h>
-#elif defined CONFIG_ARCH_MXS
-#include <mach/mxs/debug_ll.h>
-#elif defined CONFIG_ARCH_CLPS711X
-#include <mach/clps711x/debug_ll.h>
-#elif defined CONFIG_ARCH_AT91
-#include <mach/at91/debug_ll.h>
-#elif defined CONFIG_ARCH_K3
-#include <mach/k3/debug_ll.h>
 #endif
 
 #endif
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index 715b1978f8..3f06e2eef4 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -312,6 +312,10 @@ config DEBUG_RPI4_MINI_UART
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 4 board mini UART.
 
+config DEBUG_ZYNQ_UART
+	bool "Zynq debug UART"
+	depends on ARCH_ZYNQ
+
 config DEBUG_ZYNQMP_UART
 	bool "Zynqmp Debug UART"
 	depends on ARCH_ZYNQMP
@@ -390,6 +394,30 @@ config DEBUG_OPENRISC_NS16550
 	bool "OpenRISC NS16550 console"
 	depends on OPENRISC
 
+config DEBUG_MVEBU_UART
+	bool "mvebu console"
+	depends on ARCH_MVEBU
+
+config DEBUG_CLPS711X_UART
+	bool "CLPS711x debug UART"
+	depends on ARCH_CLPS711X
+
+config DEBUG_MXS_UART
+	bool "MXS debug UART"
+	depends on ARCH_MXS
+
+config DEBUG_VERSATILE_UART
+	bool "Versatile debug UART"
+	depends on ARCH_VERSATILE
+
+config DEBUG_TEGRA_UART
+	bool "Tegra debug UART"
+	depends on ARCH_TEGRA
+
+config DEBUG_SOCFPGA_UART
+	bool "SoCFPGA debug UART"
+	depends on ARCH_SOCFPGA
+
 endchoice
 
 config DEBUG_LL_NS16550

-- 
2.47.3



