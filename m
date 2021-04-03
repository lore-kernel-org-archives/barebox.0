Delivery-date: Sat, 03 Apr 2021 09:04:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaK9-00016W-LB
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 09:04:01 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaK8-0001ol-MU
	for lore@pengutronix.de; Sat, 03 Apr 2021 09:04:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WoWyPO9F0Qea1JpBHsnJBvePN/1Sz8yEFXHbK/6eWvc=; b=QKuikup97i0XoOGBSU0sxsZHK
	uC7DIn2yDSk8KeuGGYWg2RIOs5DwjCOgwGmUjlgv40ZZbr83xImnohDCjJQ+QpCBWgVBQuGgMjzR7
	ZEOKKIGyTPvMXFgHBd9YwUrdq4y0dsStMdZdfe0UGdbVo4VHJcLZuFMX7LyPbC8i1jJ5+deOJYAaj
	tAtyvyv+HtNfhayRb+bfVUsOAmDV9oA846t/FEnLL6kQkmzZJ/KPDdaeWqDq17RnpqFKI+UEqYaK6
	c2v0/lHKqZEXxj1XgEbulC6uutkxcXPKf0eQVePuWV9nFCMf7gs6EFUDfOaRMCY91HTbgpF8T4k0f
	c77HPOjhQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSaJ1-00ENgW-FB; Sat, 03 Apr 2021 07:02:51 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSaIu-00ENfK-T3
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 07:02:46 +0000
Received: from geraet.fritz.box (muedsl-82-207-194-145.citykom.de
 [82.207.194.145]) (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id F3B07100003;
 Sat,  3 Apr 2021 07:02:42 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  3 Apr 2021 09:02:35 +0200
Message-Id: <20210403070237.3642189-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210403070237.3642189-1-ahmad@a3f.at>
References: <20210403070237.3642189-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_080245_120760_287C2B34 
X-CRM114-Status: GOOD (  16.59  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] RISC-V: debug_ll: ns16550: split off debug_ll from
 generic parts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The early NS16550 code is written for DEBUG_LL and can't be directly
used with pbl_set_putc if it's disabled. Split off the generic parts
into a new header that can be used by the virt board for PBL console.

DEBUG_LL functionality is unaffected.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/include/asm/debug_ll_ns16550.h | 49 ++++++++---------------
 arch/riscv/include/asm/ns16550.h          | 48 ++++++++++++++++++++++
 2 files changed, 65 insertions(+), 32 deletions(-)
 create mode 100644 arch/riscv/include/asm/ns16550.h

diff --git a/arch/riscv/include/asm/debug_ll_ns16550.h b/arch/riscv/include/asm/debug_ll_ns16550.h
index 7d6d12df74fe..b09882ddad14 100644
--- a/arch/riscv/include/asm/debug_ll_ns16550.h
+++ b/arch/riscv/include/asm/debug_ll_ns16550.h
@@ -35,19 +35,6 @@
 
 #endif /* CONFIG_DEBUG_LL */
 
-#define UART_THR	(0x0 << DEBUG_LL_UART_SHIFT)
-#define UART_RBR	(0x0 << DEBUG_LL_UART_SHIFT)
-#define UART_DLL	(0x0 << DEBUG_LL_UART_SHIFT)
-#define UART_DLM	(0x1 << DEBUG_LL_UART_SHIFT)
-#define UART_LCR	(0x3 << DEBUG_LL_UART_SHIFT)
-#define UART_LSR	(0x5 << DEBUG_LL_UART_SHIFT)
-
-#define UART_LCR_W	0x07	/* Set UART to 8,N,2 & DLAB = 0 */
-#define UART_LCR_DLAB	0x87	/* Set UART to 8,N,2 & DLAB = 1 */
-
-#define UART_LSR_DR	0x01    /* UART received data present */
-#define UART_LSR_THRE	0x20	/* Xmit holding register empty */
-
 #if defined(DEBUG_LL_UART_IOSIZE32)
 #define UART_REG_L	lw
 #define UART_REG_S	sw
@@ -62,31 +49,29 @@
 #error "Please define DEBUG_LL_UART_IOSIZE{8,32}"
 #endif
 
+#include <asm/ns16550.h>
+
 #ifndef __ASSEMBLY__
 /*
  * C macros
  */
 
-#include <asm/io.h>
-
 static inline void PUTC_LL(char ch)
 {
 #ifdef CONFIG_DEBUG_LL
-	while (!(__uart_read((u8 *)DEBUG_LL_UART_ADDR + UART_LSR) & UART_LSR_THRE))
-		;
-	__uart_write(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_THR);
-#endif /* CONFIG_DEBUG_LL */
+	early_ns16550_putc(ch, DEBUG_LL_UART_ADDR, DEBUG_LL_UART_SHIFT,
+			   __uart_read, __uart_write);
+#endif
 }
 
 static inline void debug_ll_ns16550_init(void)
 {
 #ifdef CONFIG_DEBUG_LL
-	__uart_write(UART_LCR_DLAB, (u8 *)DEBUG_LL_UART_ADDR + UART_LCR);
-	__uart_write(DEBUG_LL_UART_DIVISOR & 0xff, (u8 *)DEBUG_LL_UART_ADDR + UART_DLL);
-	__uart_write((DEBUG_LL_UART_DIVISOR >> 8) & 0xff, (u8 *)DEBUG_LL_UART_ADDR + UART_DLM);
-	__uart_write(UART_LCR_W, (u8 *)DEBUG_LL_UART_ADDR + UART_LCR);
-#endif /* CONFIG_DEBUG_LL */
+	early_ns16550_init(DEBUG_LL_UART_ADDR, DEBUG_LL_UART_DIVISOR,
+			   DEBUG_LL_UART_SHIFT, __uart_write);
+#endif
 }
+
 #else /* __ASSEMBLY__ */
 /*
  * Macros for use in assembly language code
@@ -97,15 +82,15 @@ static inline void debug_ll_ns16550_init(void)
 	li	t0, DEBUG_LL_UART_ADDR
 
 	li	t1, UART_LCR_DLAB		/* DLAB on */
-	UART_REG_S	t1, UART_LCR(t0)		/* Write it out */
+	UART_REG_S	t1, UART_LCR(DEBUG_LL_UART_SHIFT)(t0)	/* Write it out */
 
 	li	t1, \divisor
-	UART_REG_S	t1, UART_DLL(t0)		/* write low order byte */
+	UART_REG_S	t1, UART_DLL(DEBUG_LL_UART_SHIFT)(t0)	/* write low order byte */
 	srl	t1, t1, 8
-	UART_REG_S	t1, UART_DLM(t0)		/* write high order byte */
+	UART_REG_S	t1, UART_DLM(DEBUG_LL_UART_SHIFT)(t0)	/* write high order byte */
 
 	li	t1, UART_LCR_W			/* DLAB off */
-	UART_REG_S	t1, UART_LCR(t0)		/* Write it out */
+	UART_REG_S	t1, UART_LCR(DEBUG_LL_UART_SHIFT)(t0)	/* Write it out */
 #endif /* CONFIG_DEBUG_LL */
 .endm
 
@@ -118,11 +103,11 @@ static inline void debug_ll_ns16550_init(void)
 	li	t0, DEBUG_LL_UART_ADDR
 
 201:
-	UART_REG_L	t1, UART_LSR(t0)	/* get line status */
+	UART_REG_L	t1, UART_LSR(DEBUG_LL_UART_SHIFT)(t0)	/* get line status */
 	andi	t1, t1, UART_LSR_THRE	/* check for transmitter empty */
 	beqz	t1, 201b			/* try again */
 
-	UART_REG_S	a0, UART_THR(t0)	/* write the character */
+	UART_REG_S	a0, UART_THR(DEBUG_LL_UART_SHIFT)(t0)	/* write the character */
 
 #endif /* CONFIG_DEBUG_LL */
 .endm
@@ -158,7 +143,7 @@ static inline void debug_ll_ns16550_init(void)
 	li      t0, DEBUG_LL_UART_ADDR
 
 	/* get line status and check for data present */
-	UART_REG_L	s0, UART_LSR(t0)
+	UART_REG_L	s0, UART_LSR(DEBUG_LL_UART_SHIFT)(t0)
 	andi	s0, s0, UART_LSR_DR
 
 #endif /* CONFIG_DEBUG_LL */
@@ -177,7 +162,7 @@ static inline void debug_ll_ns16550_init(void)
 	beqz	s0, 204b
 
 	/* read a character */
-	UART_REG_L	s0, UART_RBR(t0)
+	UART_REG_L	s0, UART_RBR(DEBUG_LL_UART_SHIFT)(t0)
 
 #endif /* CONFIG_DEBUG_LL */
 .endm
diff --git a/arch/riscv/include/asm/ns16550.h b/arch/riscv/include/asm/ns16550.h
new file mode 100644
index 000000000000..7f56692b77ce
--- /dev/null
+++ b/arch/riscv/include/asm/ns16550.h
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2016, 2017 Antony Pavlov <antonynpavlov@gmail.com>
+ */
+
+/** @file
+ *  This file contains declaration for early output support
+ */
+#ifndef __ASM_NS16550_H__
+#define __ASM_NS16550_H__
+
+#include <linux/kconfig.h>
+
+#define UART_THR(shift)		(0x0 << shift)
+#define UART_RBR(shift)		(0x0 << shift)
+#define UART_DLL(shift)		(0x0 << shift)
+#define UART_DLM(shift)		(0x1 << shift)
+#define UART_LCR(shift)		(0x3 << shift)
+#define UART_LSR(shift)		(0x5 << shift)
+
+#define UART_LCR_W	0x07	/* Set UART to 8,N,2 & DLAB = 0 */
+#define UART_LCR_DLAB	0x87	/* Set UART to 8,N,2 & DLAB = 1 */
+
+#define UART_LSR_DR	0x01    /* UART received data present */
+#define UART_LSR_THRE	0x20	/* Xmit holding register empty */
+
+#ifndef __ASSEMBLY__
+
+#include <asm/io.h>
+
+#define early_ns16550_putc(ch, base, shift, readx, writex) \
+	do { \
+		while (!(readx((u8 *)base + UART_LSR(shift)) & UART_LSR_THRE)) \
+			; \
+		writex(ch, (u8 *)base + UART_THR(shift)); \
+	} while (0)
+
+#define early_ns16550_init(base, divisor, shift, writex) \
+	do { \
+		writex(UART_LCR_DLAB, (u8 *)base + UART_LCR(shift)); \
+		writex(divisor & 0xff, (u8 *)base + UART_DLL(shift)); \
+		writex((divisor >> 8) & 0xff, (u8 *)base + UART_DLM(shift)); \
+		writex(UART_LCR_W, (u8 *)base + UART_LCR(shift)); \
+	} while (0)
+
+#endif
+
+#endif
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

