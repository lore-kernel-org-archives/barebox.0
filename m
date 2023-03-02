Delivery-date: Thu, 02 Mar 2023 12:18:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgxD-006UrN-5e
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 12:18:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgxB-00022C-Ub
	for lore@pengutronix.de; Thu, 02 Mar 2023 12:18:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SAzhLt7/nn0CH+vVrW9psCBQUCWMOgrzZzjG2xVKnzQ=; b=s9QyJoJgk8IdQ0ZiEn4WfIRBOj
	/bv/lNkQuwVUP2e5DJm5pJWqEyLfqt/GdHmtOS+oi9uFkK7fxdITs9Ard5raLWvAShzh+77UafveJ
	F0pDfqZvCcEfc4dc5qjZxmi2kD1h8G5Wle51MW2E8Ss6TsYaP/hdqSXP1Q6+PPJ55u1gNCa8vNbX6
	xG4YK/oyBQnsY76miKNqDEXsDdzKeaGV2lhD4ZmaDDqxpk1GPBMn6baaXRjQyUbXR80NH9zuPAdNG
	R+3pGp0j8TIyd5CmKmf0h//ND6M9veBWq5El3fMu9l76j9pig/IMbuU9KnX+a+zmrViIE3LCplBA+
	pEdU2fYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgvv-001sqn-Eh; Thu, 02 Mar 2023 11:17:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgv6-001sL3-DJ
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 11:16:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgux-000194-3t; Thu, 02 Mar 2023 12:16:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguw-001JdU-Gw; Thu, 02 Mar 2023 12:16:10 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgut-004QVR-Tw; Thu, 02 Mar 2023 12:16:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 12:15:58 +0100
Message-Id: <20230302111606.1054037-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302111606.1054037-1-s.hauer@pengutronix.de>
References: <20230302111606.1054037-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_031620_549440_3FB83AD3 
X-CRM114-Status: GOOD (  18.12  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/13] ARM: drop CONFIG_HAS_ASM_DEBUG_LL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When CONFIG_HAS_ASM_DEBUG_LL is set then include/debug_ll.h includes
asm/debug_ll.h, otherwise it includes mach/debug_ll.h.  Drop this option
and instead always include asm/debug_ll.h and include mach/debug_ll.h
from there if necessary. This also adds the missing asm/debug_ll.h for
architectures which previously did not have that file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                 |  2 +-
 arch/arm/include/asm/debug_ll.h  |  2 ++
 arch/mips/include/asm/debug_ll.h |  6 ++++++
 arch/riscv/Kconfig.socs          | 12 ++++++------
 arch/sandbox/Kconfig             |  2 +-
 arch/x86/include/asm/debug_ll.h  |  6 ++++++
 common/Kconfig                   |  4 ----
 include/debug_ll.h               |  8 ++------
 8 files changed, 24 insertions(+), 18 deletions(-)
 create mode 100644 arch/mips/include/asm/debug_ll.h
 create mode 100644 arch/x86/include/asm/debug_ll.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6aa0ec4074..fccdef9d71 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -273,7 +273,7 @@ config ARCH_ARM64_VIRT
 	select ARM_AMBA
 	select BOARD_ARM_VIRT
 	select HW_HAS_PCI
-	select HAS_ASM_DEBUG_LL
+	select HAS_DEBUG_LL
 
 endchoice
 
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index d7b25a7fca..89ca106117 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -6,6 +6,8 @@
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
+#else
+#include <mach/debug_ll.h>
 #endif
 
 #endif
diff --git a/arch/mips/include/asm/debug_ll.h b/arch/mips/include/asm/debug_ll.h
new file mode 100644
index 0000000000..96e2082dc8
--- /dev/null
+++ b/arch/mips/include/asm/debug_ll.h
@@ -0,0 +1,6 @@
+#ifndef __ASM_MIPS_DEBUG_LL_H
+#define __ASM_MIPS_DEBUG_LL_H
+
+#include <mach/debug_ll.h>
+
+#endif /* __ASM_MIPS_DEBUG_LL_H */
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 0f03637a66..2cb0716cd5 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -5,7 +5,7 @@ menu "SoC selection"
 config SOC_ERIZO
 	bool "Erizo SoC"
 	depends on ARCH_RV32I
-	select HAS_ASM_DEBUG_LL
+	select HAS_DEBUG_LL
 	select HAS_NMON
 	select USE_COMPRESSED_DTB
 	select RISCV_M_MODE
@@ -20,7 +20,7 @@ config SOC_VIRT
 	select RISCV_S_MODE
 	select BOARD_RISCV_GENERIC_DT
 	select HAS_CACHE
-	select HAS_ASM_DEBUG_LL
+	select HAS_DEBUG_LL
 	help
 	  Generates an image tht can be be booted by QEMU. The image is called
 	  barebox-dt-2nd.img
@@ -55,7 +55,7 @@ config SOC_SIFIVE
 	select CLK_SIFIVE_PRCI
 	select RISCV_TIMER
 	select HAS_MACB
-	select HAS_ASM_DEBUG_LL
+	select HAS_DEBUG_LL
 	help
 	  This enables support for SiFive SoC platform hardware.
 
@@ -72,7 +72,7 @@ config SOC_STARFIVE
 	bool "StarFive SoCs"
 	select ARCH_HAS_RESET_CONTROLLER
 	select RISCV_S_MODE
-	select HAS_ASM_DEBUG_LL
+	select HAS_DEBUG_LL
 	select HAS_NMON
 	help
 	  This enables support for SiFive SoC platform hardware.
@@ -113,7 +113,7 @@ endif
 config SOC_ALLWINNER_SUN20I
 	bool "Allwinner Sun20i SoCs"
 	depends on ARCH_RV64I
-	select HAS_ASM_DEBUG_LL
+	select HAS_DEBUG_LL
 	select HAS_CACHE
 
 if SOC_ALLWINNER_SUN20I
@@ -135,7 +135,7 @@ config SIFIVE_L2
 config SOC_LITEX
 	bool "LiteX SoCs"
 	depends on ARCH_RV32I
-	select HAS_ASM_DEBUG_LL
+	select HAS_DEBUG_LL
 	select HAS_NMON
 	select USE_COMPRESSED_DTB
 	select RISCV_TIMER
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 366a1d0b52..31c4484cf1 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -16,7 +16,7 @@ config SANDBOX
 	select ARCH_HAS_STACK_DUMP if ASAN
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_SJLJ
-	select HAS_ASM_DEBUG_LL
+	select HAS_DEBUG_LL
 	default y
 
 config ARCH_TEXT_BASE
diff --git a/arch/x86/include/asm/debug_ll.h b/arch/x86/include/asm/debug_ll.h
new file mode 100644
index 0000000000..e75090b4ba
--- /dev/null
+++ b/arch/x86/include/asm/debug_ll.h
@@ -0,0 +1,6 @@
+#ifndef __ASM_X86_DEBUG_LL_H
+#define __ASM_X86_DEBUG_LL_H
+
+#include <mach/debug_ll.h>
+
+#endif /* __ASM_X86_DEBUG_LL_H */
diff --git a/common/Kconfig b/common/Kconfig
index d957970993..96ab687af2 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1639,10 +1639,6 @@ source "common/efi/Kconfig"
 config HAS_DEBUG_LL
 	bool
 
-config HAS_ASM_DEBUG_LL
-	bool
-	select HAS_DEBUG_LL
-
 config DDR_SPD
 	bool
 	select CRC_ITU_T
diff --git a/include/debug_ll.h b/include/debug_ll.h
index 856a157bf5..0128ab524a 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -12,18 +12,14 @@
 #define   __INCLUDE_DEBUG_LL_H__
 
 #ifdef CONFIG_HAS_DEBUG_LL
-#ifdef CONFIG_HAS_ASM_DEBUG_LL
-#include <asm/debug_ll.h>
-#else
 /*
- * mach/debug_ll.h should implement PUTC_LL. This can be a macro or a static
+ * asm/debug_ll.h should implement PUTC_LL. This can be a macro or a static
  * inline function. Note that several SoCs expect the UART to be initialized
  * by a debugger or a first stage bootloader. You won't see anything without
  * this initialization. Depending on the PUTC_LL implementation the board might
  * also hang in PUTC_LL without proper initialization.
  */
-#include <mach/debug_ll.h>
-#endif
+#include <asm/debug_ll.h>
 #endif
 
 #if defined (CONFIG_DEBUG_LL)
-- 
2.30.2



