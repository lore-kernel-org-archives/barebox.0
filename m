Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJBSp-0006Yz-SH
 for barebox@lists.infradead.org; Wed, 24 Apr 2019 06:33:05 +0000
Received: by mail-pl1-x644.google.com with SMTP id x15so4397346pln.9
 for <barebox@lists.infradead.org>; Tue, 23 Apr 2019 23:33:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 23 Apr 2019 23:32:48 -0700
Message-Id: <20190424063248.478-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: aarch64: lowlevel: Reset SCTLR_EL3 in
 arm_cpu_lowlevel_init()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There's no guarantee that when arm_cpu_lowlevel_init() runs at EL3,
SCTLR will be in a state we expect it to be. Add code to reset it to a
known state, so we'd always start form clean slate. This is also
matches what we've been doing non 64-bit ARMs.

Real word motivation for this patch is i.MX8MQ whose rev 2.1 silicon
appear to have different mask ROM behaviour where it now leaves MMU
enabled if no valid boot source is found. Page table it sets up
doesn't include DDR range, so trying to bootstrap the device via
JTAG/OpenOCD results in an abort.

The value for SCTLR_ELx_FLAGS was taken from Linux kernel.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/lowlevel_64.S    |  7 +++++++
 arch/arm/include/asm/system.h | 20 ++++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/arch/arm/cpu/lowlevel_64.S b/arch/arm/cpu/lowlevel_64.S
index af1cd8b5b..6a23132ed 100644
--- a/arch/arm/cpu/lowlevel_64.S
+++ b/arch/arm/cpu/lowlevel_64.S
@@ -12,6 +12,13 @@ ENTRY(arm_cpu_lowlevel_init)
 	orr	x0, x0, #(1 << 10)	/* 64-bit EL2 */
 	msr	scr_el3, x0
 	msr	cptr_el3, xzr
+
+	mrs	x0, sctlr_el3
+	ldr	x1, =SCTLR_ELx_FLAGS
+	bic	x0, x0, x1
+	msr	sctlr_el3, x0
+	isb
+
 	b	done
 
 2:
diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index ef9cb98bf..a0180f2df 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -1,6 +1,26 @@
 #ifndef __ASM_ARM_SYSTEM_H
 #define __ASM_ARM_SYSTEM_H
 
+#include <linux/const.h>
+
+/* Common SCTLR_ELx flags. */
+#define SCTLR_ELx_DSSBS	(_BITUL(44))
+#define SCTLR_ELx_ENIA	(_BITUL(31))
+#define SCTLR_ELx_ENIB	(_BITUL(30))
+#define SCTLR_ELx_ENDA	(_BITUL(27))
+#define SCTLR_ELx_EE    (_BITUL(25))
+#define SCTLR_ELx_IESB	(_BITUL(21))
+#define SCTLR_ELx_WXN	(_BITUL(19))
+#define SCTLR_ELx_ENDB	(_BITUL(13))
+#define SCTLR_ELx_I	(_BITUL(12))
+#define SCTLR_ELx_SA	(_BITUL(3))
+#define SCTLR_ELx_C	(_BITUL(2))
+#define SCTLR_ELx_A	(_BITUL(1))
+#define SCTLR_ELx_M	(_BITUL(0))
+
+#define SCTLR_ELx_FLAGS	(SCTLR_ELx_M  | SCTLR_ELx_A | SCTLR_ELx_C | \
+			 SCTLR_ELx_SA | SCTLR_ELx_I | SCTLR_ELx_IESB)
+
 #if __LINUX_ARM_ARCH__ >= 7
 #define isb() __asm__ __volatile__ ("isb" : : : "memory")
 #ifdef CONFIG_CPU_64v8
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
