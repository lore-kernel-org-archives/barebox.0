Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f48.google.com ([209.85.215.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vo5XV-00038S-FB
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 06:02:26 +0000
Received: by mail-la0-f48.google.com with SMTP id n7so9365528lam.21
 for <barebox@lists.infradead.org>; Tue, 03 Dec 2013 22:01:58 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  4 Dec 2013 10:09:18 +0400
Message-Id: <1386137358-915-1-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <20131203142546.5bd4225f703a8a0dcca3f47d@gmail.com>
References: <20131203142546.5bd4225f703a8a0dcca3f47d@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] MIPS: start.S: remove duplicate ADR macro definition
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start.S | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 7e2ae5e..d180157 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -2,7 +2,6 @@
  * Startup Code for MIPS CPU
  *
  * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- * Used code copyrighted (C) 2009 by Shinya Kuribayashi <skuribay@pobox.com>
  *
  * This file is part of barebox.
  * See file CREDITS for list of people who contributed to this project.
@@ -24,26 +23,7 @@
 #include <asm-generic/memory_layout.h>
 #include <generated/compile.h>
 #include <generated/utsrelease.h>
-
-	/*
-	 * ADR macro instruction (inspired by ARM)
-	 *
-	 * ARM architecture doesn't have PC-relative jump instruction
-	 * like MIPS' B/BAL insns.  When ARM makes PC-relative jumps,
-	 * it uses ADR insn.  ADR is used to get a destination address
-	 * of 'label' against current PC.  With this, ARM can safely
-	 * make PC-relative jumps.
-	 */
-	.macro	ADR rd label temp
-	.set	push
-	.set	noreorder
-	move	\temp, ra			# preserve ra beforehand
-	bal	_pc
-	 nop
-_pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
-	move	ra, \temp			# within pc +/- 32KB
-	.set	pop
-	.endm
+#include <asm/pbl_macros.h>
 
 	.set noreorder
 	.text
-- 
1.8.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
