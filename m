Delivery-date: Thu, 26 Sep 2024 13:23:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmb2-002yql-0a
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:23:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmaz-0002dk-ES
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:23:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DFk46wUjApj/F7t2u0wkrYT7yxcInIeC2NCVyF0XCZU=; b=Lr58g1ZLtn1AMxnTfdjIYIILuH
	NWOHuh9VnDooEgouujX9IsoHfu1GY9jv50W0+lmKpmgZeEIH7xI7CmcMq/OuZVwUoCpGOWfvXk/F4
	9Nf+qC1j+BLZmNWu+4mt6X+ZNaEWzINQSDszUY76ZIMQKqrGYBWdtqCAyydhx6I5q9B2LTYXBVu0D
	IlKWeFq00YU9PcIoiEZOKLu/mtW6Ha3ehWSi7poeJXhRfxwDmvM2GInkywxpTRwHoWfygZIwyXvAc
	oYN57/alrzEoevKUuWGQhhRgjb85Yhpd8dgOtcv/4JFze5K/5H3x7BFRR6pwadsQBYSvDOrDfymPZ
	0XxOB0tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmaO-00000008DXh-3abW;
	Thu, 26 Sep 2024 11:23:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmUe-00000008CYh-0sxX
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:17:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-0006su-T0; Thu, 26 Sep 2024 13:17:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-001fjs-9U; Thu, 26 Sep 2024 13:17:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmUc-00FhS5-21;
	Thu, 26 Sep 2024 13:17:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 13:17:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-arm-assembly-memmove-v2-7-0a3313d29a66@pengutronix.de>
References: <20240926-arm-assembly-memmove-v2-0-0a3313d29a66@pengutronix.de>
In-Reply-To: <20240926-arm-assembly-memmove-v2-0-0a3313d29a66@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727349426; l=7041;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=o8+KHm+eIpy6efe5PIRyp+cqpn80sjZOAlnPJh8T9/k=;
 b=6r3scRMeb3voTRYx9Jh0sqM2SIWix+/zTycdRWSMUWADiTwkHGQn1Y2uO1MRzJrocFMR0Z0K3
 M4Vzrp/5AnPCAaMySRbzz5kKquYjG2H5pJKGyp+K88+qpxy0KSP02sU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_041708_585792_7B339716 
X-CRM114-Status: GOOD (  15.32  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/10] ARM: always assume the unified syntax for
 assembly code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adoption of Linux Commit:

| commit 75fea300d73ae5b18957949a53ec770daaeb6fc2
| Author: Nicolas Pitre <nico@fluxnic.net>
| Date:   Wed Nov 29 07:52:52 2017 +0100
|
|     ARM: 8723/2: always assume the "unified" syntax for assembly code
|
|     The GNU assembler has implemented the "unified syntax" parsing since
|     2005. This "unified" syntax is required when the kernel is built in
|     Thumb2 mode. However the "unified" syntax is a mixed bag of features,
|     including not requiring a `#' prefix with immediate operands. This leads
|     to situations where some code builds just fine in Thumb2 mode and fails
|     to build in ARM mode if that prefix is missing. This behavior
|     discrepancy makes build tests less valuable, forcing both ARM and Thumb2
|     builds for proper coverage.
|
|     Let's "fix" this issue by always using the "unified" syntax for both ARM
|     and Thumb2 mode. Given that the documented minimum binutils version that
|     properly builds the kernel is version 2.20 released in 2010, we can
|     assume that any toolchain capable of building the latest kernel is also
|     "unified syntax" capable.
|
|     Whith this, a bunch of macros used to mask some differences between both
|     syntaxes can be removed, with the side effect of making LTO easier.
|
|     Suggested-by: Robin Murphy <robin.murphy@arm.com>
|     Signed-off-by: Nicolas Pitre <nico@linaro.org>
|     Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                  |  4 ---
 arch/arm/include/asm/unified.h    | 75 +--------------------------------------
 arch/arm/lib32/io-readsb.S        |  2 --
 arch/arm/lib32/io-readsl.S        |  2 --
 arch/arm/lib32/io-readsw-armv4.S  |  2 --
 arch/arm/lib32/io-writesb.S       |  2 --
 arch/arm/lib32/io-writesl.S       |  2 --
 arch/arm/lib32/io-writesw-armv4.S |  2 --
 arch/arm/lib32/lib1funcs.S        |  2 --
 9 files changed, 1 insertion(+), 92 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9b90c8009a..0251f2dcef 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -286,9 +286,6 @@ config BOARD_ARM_GENERIC_DT_AARCH64
 	depends on BOARD_ARM_GENERIC_DT
 	default y
 
-config ARM_ASM_UNIFIED
-	bool
-
 config AEABI
 	bool "Use the ARM EABI to compile barebox"
 	depends on !CPU_V8
@@ -299,7 +296,6 @@ config AEABI
 	  To use this you need GCC version 4.0.0 or later.
 
 config THUMB2_BAREBOX
-	select ARM_ASM_UNIFIED
 	select AEABI
 	depends on !ARCH_TEGRA && !ARCH_AT91
 	depends on CPU_V7 && !CPU_32v4T && !CPU_32v5 && !CPU_32v6
diff --git a/arch/arm/include/asm/unified.h b/arch/arm/include/asm/unified.h
index 5501d7f703..68b1deecfb 100644
--- a/arch/arm/include/asm/unified.h
+++ b/arch/arm/include/asm/unified.h
@@ -6,7 +6,7 @@
 #ifndef __ASM_UNIFIED_H
 #define __ASM_UNIFIED_H
 
-#if defined(__ASSEMBLY__) && defined(CONFIG_ARM_ASM_UNIFIED)
+#if defined(__ASSEMBLY__) && defined(CONFIG_CPU_32)
 	.syntax unified
 #endif
 
@@ -40,77 +40,4 @@
 
 #endif	/* CONFIG_THUMB2_BAREBOX */
 
-#ifndef CONFIG_ARM_ASM_UNIFIED
-
-/*
- * If the unified assembly syntax isn't used (in ARM mode), these
- * macros expand to an empty string
- */
-#ifdef __ASSEMBLY__
-	.macro	it, cond
-	.endm
-	.macro	itt, cond
-	.endm
-	.macro	ite, cond
-	.endm
-	.macro	ittt, cond
-	.endm
-	.macro	itte, cond
-	.endm
-	.macro	itet, cond
-	.endm
-	.macro	itee, cond
-	.endm
-	.macro	itttt, cond
-	.endm
-	.macro	ittte, cond
-	.endm
-	.macro	ittet, cond
-	.endm
-	.macro	ittee, cond
-	.endm
-	.macro	itett, cond
-	.endm
-	.macro	itete, cond
-	.endm
-	.macro	iteet, cond
-	.endm
-	.macro	iteee, cond
-	.endm
-#else	/* !__ASSEMBLY__ */
-__asm__(
-"	.macro	it, cond\n"
-"	.endm\n"
-"	.macro	itt, cond\n"
-"	.endm\n"
-"	.macro	ite, cond\n"
-"	.endm\n"
-"	.macro	ittt, cond\n"
-"	.endm\n"
-"	.macro	itte, cond\n"
-"	.endm\n"
-"	.macro	itet, cond\n"
-"	.endm\n"
-"	.macro	itee, cond\n"
-"	.endm\n"
-"	.macro	itttt, cond\n"
-"	.endm\n"
-"	.macro	ittte, cond\n"
-"	.endm\n"
-"	.macro	ittet, cond\n"
-"	.endm\n"
-"	.macro	ittee, cond\n"
-"	.endm\n"
-"	.macro	itett, cond\n"
-"	.endm\n"
-"	.macro	itete, cond\n"
-"	.endm\n"
-"	.macro	iteet, cond\n"
-"	.endm\n"
-"	.macro	iteee, cond\n"
-"	.endm\n");
-#endif	/* __ASSEMBLY__ */
-
-#endif	/* CONFIG_ARM_ASM_UNIFIED */
-
 #endif	/* !__ASM_UNIFIED_H */
diff --git a/arch/arm/lib32/io-readsb.S b/arch/arm/lib32/io-readsb.S
index 2777a49b22..66a89074bf 100644
--- a/arch/arm/lib32/io-readsb.S
+++ b/arch/arm/lib32/io-readsb.S
@@ -7,8 +7,6 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.syntax unified
-
 .section .text.__raw_readsb
 
 .Linsb_align:	rsb	ip, ip, #4
diff --git a/arch/arm/lib32/io-readsl.S b/arch/arm/lib32/io-readsl.S
index aecac1f9eb..6c01cb5dfa 100644
--- a/arch/arm/lib32/io-readsl.S
+++ b/arch/arm/lib32/io-readsl.S
@@ -7,8 +7,6 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.syntax unified
-
 .section .text.__raw_readsl
 
 ENTRY(__raw_readsl)
diff --git a/arch/arm/lib32/io-readsw-armv4.S b/arch/arm/lib32/io-readsw-armv4.S
index f5c633027c..b82ec390e9 100644
--- a/arch/arm/lib32/io-readsw-armv4.S
+++ b/arch/arm/lib32/io-readsw-armv4.S
@@ -7,8 +7,6 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.syntax unified
-
 		.macro	pack, rd, hw1, hw2
 #ifndef __ARMEB__
 		orr	\rd, \hw1, \hw2, lsl #16
diff --git a/arch/arm/lib32/io-writesb.S b/arch/arm/lib32/io-writesb.S
index 0bfb1f914e..e90fa9e340 100644
--- a/arch/arm/lib32/io-writesb.S
+++ b/arch/arm/lib32/io-writesb.S
@@ -7,8 +7,6 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.syntax unified
-
 		.macro	outword, rd
 #ifndef __ARMEB__
 		strb	\rd, [r0]
diff --git a/arch/arm/lib32/io-writesl.S b/arch/arm/lib32/io-writesl.S
index c300a62daf..8f7128589d 100644
--- a/arch/arm/lib32/io-writesl.S
+++ b/arch/arm/lib32/io-writesl.S
@@ -7,8 +7,6 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.syntax unified
-
 .section .text.__raw_writesl
 
 ENTRY(__raw_writesl)
diff --git a/arch/arm/lib32/io-writesw-armv4.S b/arch/arm/lib32/io-writesw-armv4.S
index 717237f3cc..9c478f5696 100644
--- a/arch/arm/lib32/io-writesw-armv4.S
+++ b/arch/arm/lib32/io-writesw-armv4.S
@@ -7,8 +7,6 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.syntax unified
-
 		.macro	outword, rd
 #ifndef __ARMEB__
 		strh	\rd, [r0]
diff --git a/arch/arm/lib32/lib1funcs.S b/arch/arm/lib32/lib1funcs.S
index cd8af72737..7e402df1cd 100644
--- a/arch/arm/lib32/lib1funcs.S
+++ b/arch/arm/lib32/lib1funcs.S
@@ -37,8 +37,6 @@ Boston, MA 02111-1307, USA.  */
 #include <asm/assembler.h>
 #include <asm/unwind.h>
 
-.syntax unified
-
 .macro ARM_DIV_BODY dividend, divisor, result, curbit
 
 #if __LINUX_ARM_ARCH__ >= 5

-- 
2.39.5



