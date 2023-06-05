Delivery-date: Mon, 05 Jun 2023 23:31:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Hnn-00CFdt-QG
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 23:31:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Hnk-0008RH-Rd
	for lore@pengutronix.de; Mon, 05 Jun 2023 23:31:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8j9yIaUIBOpZFHi1ZXrHm0GdOOHZJ9zKcALNjhtKt8=; b=wBAjfd7YvFtwBb
	Ou/E+9CvsiRSM3L9cedW585NvEGp2vA4/hN9Tt+WaHKxgLjOKoxkld/UW5mR8kMuCGR4E/I9+Ez1n
	OIf8YREXRcEhVPCphiOGDoFdddp6Jv/I5IHtQTiQsQScYPvKugmX1IKrcpLkbz4FxQP9eT79lCel6
	O1zhO0iyP3SPUEPJHUZkNIzSs6kipoql2+8/STfuTh0DC8lpvDRACgky4E8XmI+iFGZtQedaQr1HY
	rlJ0UkHaT36suTTLJ0MdLOMmKQhCnPURX/2hrMUR+CxD0By075+IFUWxN5/EOZ76URWTJ2vNA6pia
	9FsI3L8x8zpOiV9bBj5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6HmQ-00GrCr-39;
	Mon, 05 Jun 2023 21:30:22 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnB-00GhBQ-0q
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:27:06 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b1a3fa2cd2so63580791fa.1
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996824; x=1688588824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m8j9yIaUIBOpZFHi1ZXrHm0GdOOHZJ9zKcALNjhtKt8=;
        b=dyM1b5XaUcaYokjPWOhqpIXd0F677YVP3Y+e807Jm+VUge7DUsEXNuBpMe9LoVByht
         6WPiBxlf8UVGdU2WVpBn42sHdE7NjvmLjMws9qrcQbkFNE47uy2k/IMzcixjQNIptteI
         07YlBoJApN1UtoBc/h0hE8TW4+TghuEqNJ/HhbwyzggOCqpw0pgqrTBzkxPSB0Or+8/V
         4Oo6p62glFlqU91OK5Qz8oXWDOVD8rbtxwxiCVeSTs/0vdeuyJpMizJfmeecotvSmCWC
         I1wRiPZYXCCVEvm97Xxnewr6rhMd6IC0i6Gem0mRZbv7/zZ1OKdiP1Ec58Ub/h7Zr3fB
         5ckg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996824; x=1688588824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m8j9yIaUIBOpZFHi1ZXrHm0GdOOHZJ9zKcALNjhtKt8=;
        b=Ja3G6fv4WKj2Muc02D3cRYLT4PmSanSYsSoJiomcLd+5tIij/TzHIIFDvM1fOFkult
         mTvJWll4/fa4KmqP5/pV3dvWyitRsoTpKK8LXa6biNcMfr4L3F9z5s3PzVzsGNIwZb7u
         trm0ibS1CD0e/b0QBQt8E0WIutA1HZM4aGpCURBFEhvXjr0BP6jwcKRVblEmGojxPq0t
         OxyAZp/zgjDHhGoZ2BH90tnOwya3KMrt+bu3NVbFnwJNfF8LdydGIXsSTk0+prQiccXP
         Pu7bJTRkM12+pRfwGn76nVVMOHM/WJsr9lhnmlaBfOv/OXJpKLwsX4rXLulm2HJ7EsVh
         akug==
X-Gm-Message-State: AC+VfDwVLAOBhaoeNn+krw3JV7Qg+sJwU4E1JzQWMj4tuAjArMj1tqZt
	lJ5WwZy9vhvaj3pO6esfH4y7JQtPVkDz2w==
X-Google-Smtp-Source: ACHHUZ5jAYIbvu+3B3FrGowZ+sxQx/HI7B90rreo1I7hQ3FzTxYmV3ZZh7tI1UhwbOr4YNXXar+/GA==
X-Received: by 2002:a2e:6a08:0:b0:2af:18f9:ed31 with SMTP id f8-20020a2e6a08000000b002af18f9ed31mr218898ljc.1.1685996824236;
        Mon, 05 Jun 2023 13:27:04 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:27:03 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:47 +0300
Message-ID: <20230605202634.42175-17-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132705_320354_9BE0B5A6 
X-CRM114-Status: GOOD (  10.84  )
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
Subject: [PATCH 16/17] MIPS: make setjmp/longjmp/initjmp available in 64BIT builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make the code compatible with 64-bit configurations by storing saved
register values with unsigned long type and using generic macros in
assembly code.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/Kconfig              |  2 +-
 arch/mips/include/asm/setjmp.h |  2 +-
 arch/mips/lib/setjmp.S         | 48 +++++++++++++++++-----------------
 3 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index de2f539cc1..e05ee2d7f1 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -10,6 +10,7 @@ config MIPS
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DMA
 	select ARCH_HAS_DATA_ABORT_MASK
+	select ARCH_HAS_SJLJ
 	select ELF
 	default y
 
@@ -305,7 +306,6 @@ choice
 config 32BIT
 	bool "32-bit barebox"
 	depends on CPU_SUPPORTS_32BIT_KERNEL && SYS_SUPPORTS_32BIT_KERNEL
-	select ARCH_HAS_SJLJ
 	help
 	  Select this option if you want to build a 32-bit barebox.
 
diff --git a/arch/mips/include/asm/setjmp.h b/arch/mips/include/asm/setjmp.h
index 81f4d4c15f..39e01e27df 100644
--- a/arch/mips/include/asm/setjmp.h
+++ b/arch/mips/include/asm/setjmp.h
@@ -19,7 +19,7 @@ typedef struct __jmp_buf_internal_tag {
 	void *__sp;
 
 	/* Callee-saved registers s0 through s7.  */
-	int __regs[8];
+	unsigned long __regs[8];
 
 	/* The frame pointer.  */
 	void *__fp;
diff --git a/arch/mips/lib/setjmp.S b/arch/mips/lib/setjmp.S
index b09a7c5529..42a2ec15a9 100644
--- a/arch/mips/lib/setjmp.S
+++ b/arch/mips/lib/setjmp.S
@@ -6,34 +6,34 @@
 
 /* int setjmp (jmp_buf);  */
 LEAF(setjmp)
-	sw	ra, (0 * 4)(a0)
-	sw	sp, (1 * 4)(a0)
-	sw	s0, (2 * 4)(a0)
-	sw	s1, (3 * 4)(a0)
-	sw	s2, (4 * 4)(a0)
-	sw	s3, (5 * 4)(a0)
-	sw	s4, (6 * 4)(a0)
-	sw	s5, (7 * 4)(a0)
-	sw	s6, (8 * 4)(a0)
-	sw	s7, (9 * 4)(a0)
-	sw	fp, (10 * 4)(a0)
+	REG_S	ra, (0 * SZREG)(a0)
+	REG_S	sp, (1 * SZREG)(a0)
+	REG_S	s0, (2 * SZREG)(a0)
+	REG_S	s1, (3 * SZREG)(a0)
+	REG_S	s2, (4 * SZREG)(a0)
+	REG_S	s3, (5 * SZREG)(a0)
+	REG_S	s4, (6 * SZREG)(a0)
+	REG_S	s5, (7 * SZREG)(a0)
+	REG_S	s6, (8 * SZREG)(a0)
+	REG_S	s7, (9 * SZREG)(a0)
+	REG_S	fp, (10 * SZREG)(a0)
 	move	v0, zero
 	j	ra
 END(setjmp)
 
 /* volatile void longjmp (jmp_buf, int);  */
 LEAF(longjmp)
-	lw	ra, (0 * 4)(a0)
-	lw	sp, (1 * 4)(a0)
-	lw	s0, (2 * 4)(a0)
-	lw	s1, (3 * 4)(a0)
-	lw	s2, (4 * 4)(a0)
-	lw	s3, (5 * 4)(a0)
-	lw	s4, (6 * 4)(a0)
-	lw	s5, (7 * 4)(a0)
-	lw	s6, (8 * 4)(a0)
-	lw	s7, (9 * 4)(a0)
-	lw	fp, (10 * 4)(a0)
+	REG_L	ra, (0 * SZREG)(a0)
+	REG_L	sp, (1 * SZREG)(a0)
+	REG_L	s0, (2 * SZREG)(a0)
+	REG_L	s1, (3 * SZREG)(a0)
+	REG_L	s2, (4 * SZREG)(a0)
+	REG_L	s3, (5 * SZREG)(a0)
+	REG_L	s4, (6 * SZREG)(a0)
+	REG_L	s5, (7 * SZREG)(a0)
+	REG_L	s6, (8 * SZREG)(a0)
+	REG_L	s7, (9 * SZREG)(a0)
+	REG_L	fp, (10 * SZREG)(a0)
 	bne	a1, zero, 1f
 	li	a1, 1
 1:
@@ -43,8 +43,8 @@ END(longjmp)
 
 /* int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top); */
 LEAF(initjmp)
-	sw	a1, (0 * 4)(a0)
-	sw	a2, (1 * 4)(a0)
+	REG_S	a1, (0 * SZREG)(a0)
+	REG_S	a2, (1 * SZREG)(a0)
 	move	v0, zero
 	j	ra
 END(initjmp)
-- 
2.41.0



