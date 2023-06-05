Delivery-date: Mon, 05 Jun 2023 22:28:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoS-00CCUd-Su
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoN-00012h-M6
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IG/jRmitpwpNrBPwUnvgJnwfgvlWTKdel176NhviAu0=; b=Voa36NkOk9h6H/
	STvbr83E+y/Me6icPKyOfmugYQywCnXjpAGKElHPpqVS++h2Z/pOm+AVp5+CUGjhyGfWluhtc/EnA
	R7luF9Aq16QLdt+aoEBqch2VKYTh2aDpsFFcDCGw7PQiOl6RkJWCKSfrK2yh3Fiy7ASejMjCEYU6y
	Pnt/XP0YTd34MCijIc46UWOz4AW0hupMx+YKmG1ddSWShUGYTda8dXEvOBXVqBpeQ6zEvc7VPzql3
	p5plI8PysE/OR6tylTFd4CsN8gowZhG3XKYJWWqkG9z+zdDiLrF0aklOHzSumXnnLM5jzIMoeAjNR
	foglxov9qqbxwrU6H8Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn7-00Gh9u-0i;
	Mon, 05 Jun 2023 20:27:01 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn4-00Gh74-0H
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:26:59 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f61b45ee0dso3138832e87.0
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996814; x=1688588814;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IG/jRmitpwpNrBPwUnvgJnwfgvlWTKdel176NhviAu0=;
        b=iPgxGouUdjN0Ycneefx/4SyOXDMiPrtipQnBuXojr9Th4nK1SzUaHrYnOFi4D3WrAD
         pEbQ+mxISlw7eaHjFPcNyYlHzUrpefkL40P+TntNkyLozAth3xfcCYlEwuU3RkKaD38T
         pQU7H1U6k6yCxsCILEqtxNf5VR9DIzvTFUFwfsJKzYwfy8+J7KVJdABpwgqbRGDQqOjG
         49Sp2a9pLn7gkiL2ig7xawrVoLYqxehCFeuSs98/rYed3R2Z9maORdxrE4wBVKtOxWha
         Pfzi600wFTBkzT3ltFMsZqv470s0O8B6P499AAMcb+grR/iluwydxw5DrGlmffYRg9ia
         IPXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996814; x=1688588814;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IG/jRmitpwpNrBPwUnvgJnwfgvlWTKdel176NhviAu0=;
        b=S0E13FxYx4SJsD0O8DFFt1z4tWIcJhzQLAGfVg/cQD0fm3OvCnHe/iUarPzcETW1tb
         J7jzRXVAGi0jfzBf4q6hArRBEiecY5xg4BUL3qtnoGmoDoh1HYAI5J9NrIrYcNVEUKVP
         FKobIxShKw1QGBtL2fQ27+4oF/arqYIMLTYUWLZnMfOeE7VolEdjoJT50Cu6IkRJQ07n
         MSHWaqEjF3zWJ+AebJWkEYVVejPnkqG7jjned5gG25xUjGu8dAuNt1YVUn18GKE9rZcb
         57nFEWOO3DIGzlWMIoKT6OVn0SuAo/5cKePlodjX+6L35pNSO0tmWoA73TiUOHyU1SPz
         WSNQ==
X-Gm-Message-State: AC+VfDwRMesPEH2kZnARH4iRcRhoAIH4D5cdIcWT5qlAFqIBPsruAuoO
	my6lqo2Ya9PaIHx+oCi9prsqlYLfuqq6Tw==
X-Google-Smtp-Source: ACHHUZ7O+b7fG4UNdUmuUgIykAbo/oTF9ZqyO7AaX+w3HUIBQw+YLexu3ucbQ/5XGk982BZHzDs/fA==
X-Received: by 2002:a2e:a0c7:0:b0:2b0:3343:1c0a with SMTP id f7-20020a2ea0c7000000b002b033431c0amr186842ljm.31.1685996814624;
        Mon, 05 Jun 2023 13:26:54 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:53 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:38 +0300
Message-ID: <20230605202634.42175-8-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132658_125188_D925F9B3 
X-CRM114-Status: GOOD (  14.33  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/17] MIPS: use MIPS32/MIPS64 generic instruction macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use PTR_* for various arithmetic operations on pointers, and also use
PTR_LA instead of simple 'la' instruction, as it will correctly handle
loading 64-bit addresses from non-32-bit-compatible virtual memory
segments.

This fixes "la used to load 64-bit address; recommend using dla instead"
warnings when compiling assembly code with CONFIG_64BIT.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boot/start.S                   |  2 +-
 arch/mips/include/asm/asm.h              | 10 +++++-----
 arch/mips/include/asm/debug_ll_ns16550.h |  6 +++---
 arch/mips/include/asm/pbl_macros.h       | 22 +++++++++++-----------
 arch/mips/lib/genex.S                    |  8 ++++----
 5 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index c1cd2d9dd5..5f134f9ae9 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -34,7 +34,7 @@ EXPORT(_start)
 	move	a0, s0
 	move	a1, s1
 	move	a2, s2
-	la	v0, relocate_code
+	PTR_LA	v0, relocate_code
 	jal	v0
 	 nop
 
diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 69931662ff..c699542a55 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -94,10 +94,10 @@ EXPORT(symbol)
 	copy_to_link_location	symbol;			\
 	stack_setup;					\
 							\
-	la	a0, __dtb_ ## dtb##_start;		\
-	la	a1, __dtb_ ## dtb##_end;		\
-	li	a2, ram_size;				\
-	la	v0, pbl_main_entry;			\
+	PTR_LA	a0, __dtb_ ## dtb##_start;		\
+	PTR_LA	a1, __dtb_ ## dtb##_end;		\
+	PTR_LI	a2, ram_size;				\
+	PTR_LA	v0, pbl_main_entry;			\
 	jal	v0;					\
 	 nop;						\
 							\
@@ -122,7 +122,7 @@ EXPORT(symbol)
 	/* Call some code from .text section.		\
 	 * It is needed to keep same linker script for	\
 	 * all images. */				\
-	la	v0, mips_dead_end;			\
+	PTR_LA	v0, mips_dead_end;			\
 	jal	v0;					\
 	 nop;
 
diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
index 703bfaee77..7cfd844cb6 100644
--- a/arch/mips/include/asm/debug_ll_ns16550.h
+++ b/arch/mips/include/asm/debug_ll_ns16550.h
@@ -60,7 +60,7 @@ static inline void PUTC_LL(char ch)
 
 .macro	debug_ll_ns16550_init divisor=DEBUG_LL_UART_DIVISOR
 #ifdef CONFIG_DEBUG_LL
-	la	t0, DEBUG_LL_UART_ADDR
+	PTR_LA	t0, DEBUG_LL_UART_ADDR
 
 	li	t1, UART_LCR_DLAB		/* DLAB on */
 	sb	t1, UART_LCR(t0)		/* Write it out */
@@ -83,7 +83,7 @@ static inline void PUTC_LL(char ch)
 	.set	push
 	.set	reorder
 
-	la	t0, DEBUG_LL_UART_ADDR
+	PTR_LA	t0, DEBUG_LL_UART_ADDR
 
 201:	lbu	t1, UART_LSR(t0)	/* get line status */
 	andi	t1, t1, UART_LSR_THRE	/* check for transmitter empty */
@@ -126,7 +126,7 @@ static inline void PUTC_LL(char ch)
 	.set	push
 	.set	reorder
 
-	la      t0, DEBUG_LL_UART_ADDR
+	PTR_LA     t0, DEBUG_LL_UART_ADDR
 
 	/* get line status and check for data present */
 	lbu	t1, UART_LSR(t0)
diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index e60af38442..1fba690c8c 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -73,7 +73,7 @@
 	.macro	pbl_probe_mem ret1 ret2 addr
 	.set	push
 	.set	noreorder
-	la	\ret1, \addr
+	PTR_LA	\ret1, \addr
 	sw	zero, 0(\ret1)
 	li	\ret2, 0x12345678
 	sw	\ret2, 0(\ret1)
@@ -97,7 +97,7 @@
 	move	\temp, ra			# preserve ra beforehand
 	bal	255f
 	 nop
-255:	addiu	\rd, ra, \label - 255b		# label is assumed to be
+255:	PTR_ADDIU	\rd, ra, \label - 255b	# label is assumed to be
 	move	ra, \temp			# within pc +/- 32KB
 	.set	pop
 	.endm
@@ -110,15 +110,15 @@
 	ADR	a0, \start_addr, t1	/* a0 <- pc-relative
 					position of start_addr */
 
-	la	a1, \start_addr	/* a1 <- link (RAM) start_addr address */
+	PTR_LA	a1, \start_addr	/* a1 <- link (RAM) start_addr address */
 
 	beq	a0, a1, copy_loop_exit
 	 nop
 
-	la	t0, \start_addr
-	la	t1, __bss_start
-	subu	t2, t1, t0	/* t2 <- size of pbl */
-	addu	a2, a0, t2	/* a2 <- source end address */
+	PTR_LA	t0, \start_addr
+	PTR_LA	t1, __bss_start
+	PTR_SUBU	t2, t1, t0	/* t2 <- size of pbl */
+	PTR_ADDU	a2, a0, t2	/* a2 <- source end address */
 
 #define WSIZE	4
 copy_loop:
@@ -132,10 +132,10 @@
 	sw	ta1, WSIZE * 1(a1)
 	sw	ta2, WSIZE * 2(a1)
 	sw	ta3, WSIZE * 3(a1)
-	addi	a0, WSIZE * 4
-	subu	t3, a0, a2
+	PTR_ADDI	a0, WSIZE * 4
+	PTR_SUBU	t3, a0, a2
 	blez	t3, copy_loop
-	 addi	a1, WSIZE * 4
+	 PTR_ADDI	a1, WSIZE * 4
 
 copy_loop_exit:
 
@@ -196,7 +196,7 @@
 	.set	noreorder
 
 	/* set stack pointer; reserve four 32-bit argument slots */
-	la	sp, (TEXT_BASE - MALLOC_SIZE - 16)
+	PTR_LA	sp, (TEXT_BASE - MALLOC_SIZE - 16)
 
 	.set	pop
 	.endm
diff --git a/arch/mips/lib/genex.S b/arch/mips/lib/genex.S
index d75a652e4d..b9d18fc394 100644
--- a/arch/mips/lib/genex.S
+++ b/arch/mips/lib/genex.S
@@ -14,7 +14,7 @@
 /* Exception vector */
 NESTED(handle_reserved, 0, sp)
 	SAVE_ALL
-	la	k0, barebox_exc_handler
+	PTR_LA	k0, barebox_exc_handler
 	jal	k0
 	 move	a0, sp
 	/* will never return here */
@@ -24,10 +24,10 @@ NESTED(handle_reserved, 0, sp)
 NESTED(except_vec3_generic, 0, sp)
 	.set	noat
 	mfc0	k1, CP0_CAUSE
-	la	k0, exception_handlers
+	PTR_LA	k0, exception_handlers
 	andi	k1, k1, 0x7c
-	addu	k0, k0, k1
-	lw	k0, (k0)
+	PTR_ADDU	k0, k0, k1
+	PTR_L	k0, (k0)
 	nop
 	jr	k0
 	 nop
-- 
2.41.0



