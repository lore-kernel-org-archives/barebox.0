Delivery-date: Tue, 25 Jul 2023 07:08:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHH-008zsx-LK
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHD-0004F9-Lo
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72AgTma2jzvf/Ak9aMXplujtoBx+jTVrdpHojI15Fww=; b=0jI4duk9iMVzBJ
	wjgWLaSMdrkc/ppeCuHhzxqEeQ9DgXfdPozYnBRzxWwfM/5yAZBH7h9w8QRaW3JgJIlVtbxbMAoEW
	nYUTPQr2qIdayl4szhYYhPVueOBVGQ5OsS1HBpRzccNLoWVOVmPV9KaNya6WP1C8FxhP1bReH0t1o
	bf42NqC0xCiNg7gs3dzpBI0qJfErBL+G3qwaasU/ysEXPem6Oyg2oxBp1s7n6FIzomypxbDoJbzQP
	RtWgR+7gWNrBpgErOR5Vjw8g2pB/0D7sM6uff93SUJCZFy97jxPU5JkMDL/i9fH2GLoBCFjq8c3TH
	0pMvthoKezZwEW7SagKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG8-006FXK-1d;
	Tue, 25 Jul 2023 05:06:56 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG1-006FOm-2l
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:51 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51e2a6a3768so7556176a12.0
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261608; x=1690866408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=72AgTma2jzvf/Ak9aMXplujtoBx+jTVrdpHojI15Fww=;
        b=klE3Fkgvx9YE+Xt8i3aiMKu9ahmThE2mIdawtPS+7yn4ybntvBGKdSOJgKLK9PDBuV
         Lr0voWAmQBAinrZJpiW4yZ7LdDRwO/58ZKGijdr/GRMLTCWyPwBd2XeFOTJQ8lSkq194
         9ca4bvBMKOR7O/TGXBFj4s8f/wtoExGJ6g8bdRZpr0azr0H0KqqfX3VxyaS9bqQZMLff
         kFo9thnkS9Vgjdy8mD/WlPyp7JtQw/TPBvG7GHKBKp5CZCK36JCw7rL1HX5DlJKDGl+h
         /eN1dqwNb/pZlMjx6Fcif94JdZwGDSWMcWSGEIyYDjEHlfOdD8gHPIjHW8JrhJtY9T+W
         07HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261608; x=1690866408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=72AgTma2jzvf/Ak9aMXplujtoBx+jTVrdpHojI15Fww=;
        b=MnFjzBnu2pZYbocJW4bOJO3Z+4kwQc/dkEeAk3UUg8vWv9iPr48nIynlCVqbG/yeMF
         XkfLNul3tXeku5I91NrsDh6mCuHusHPuu/jnNBA/bWrNlPuKTM8Hyh+LZmmzTpTwcM5Y
         x/ZoBeLOMGYp+kI/vDjzB725aZKpS/DIad7TovWd0qJ4dNJsK/EqQMrtYYsGA6ElFQS/
         BAlcKsF/BuufdosqlnOGzAxxjRKj1D9H9mhQxrbdPtk/qyG39WwgwPgyja9cmr79vgkD
         FXnYRhB8vacXg5M/iM6GZcqptXIriXUcxhGeKnbHfCqrL+4rXKLgqgeKzXTR+HdELhYY
         zMhA==
X-Gm-Message-State: ABy/qLbIEz1ONekuLVQB+jfaB73qB15CdHwFvTAJH1/B6V5yosTnAvVO
	lUMwzvUde5/a9yw6CqAzkV28ymf9qsdUFVJ/+Ok=
X-Google-Smtp-Source: APBJJlHVneqnoefC/q5g45IaomaV03RyvhmK6jaEVHhPLVz9cysKOX25Wn6P76jGb3c1epfHHEqbow==
X-Received: by 2002:aa7:df94:0:b0:51d:95f2:ee76 with SMTP id b20-20020aa7df94000000b0051d95f2ee76mr10442693edy.27.1690261608202;
        Mon, 24 Jul 2023 22:06:48 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:47 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:17 +0300
Message-ID: <20230725050618.3451-17-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220649_915170_E19402DC 
X-CRM114-Status: GOOD (  16.48  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 16/21] MIPS: main_entry: remove exception vector array
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This code must have been taken from Linux, where such a mechanism allows
for an efficient exception vector replacement for board-specific code.
We don't really need that. If some extensions for exception vector are
to be required, this may be done inside the generic handler code anyway.
As we are not using this code, it seems reasonable to just remove it.

Also properly calculate the size of the handler that we are copying into
the designated vectors. Originally, we just made a copy of a fixed size,
copying more than actually needed. We could have just hardcoded this
value there, as the code to copy now consists of just two instructions.
However it feels more safe to calculate that in code instead, so that we
don't have to update this value if some code is added there in the
future.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boot/main_entry.c | 39 ++++++++-----------------------------
 arch/mips/lib/genex.S       | 29 ++++++++-------------------
 2 files changed, 16 insertions(+), 52 deletions(-)

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 237288a337..d0c69f3c82 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -14,45 +14,22 @@
 #include <asm/addrspace.h>
 #include <linux/sizes.h>
 
-extern void handle_reserved(void);
+extern void exception_vec(void);
+extern void exception_vec_end(void);
 
 void main_entry(void *fdt, u32 fdt_size);
 
-unsigned long exception_handlers[32];
-
-static void set_except_vector(int n, void *addr)
-{
-	unsigned long handler = (unsigned long) addr;
-
-	exception_handlers[n] = handler;
-}
-
 static void trap_init(void)
 {
-	extern char except_vec3_generic;
-	int i;
-
-	unsigned long ebase;
-
-	ebase = CKSEG1;
-
-	/*
-	 * Copy the generic exception handlers to their final destination.
-	 * This will be overriden later as suitable for a particular
-	 * configuration.
-	 */
-	memcpy((void *)(ebase + 0x180), &except_vec3_generic, 0x80);
+	const unsigned long vec_size = exception_vec_end - exception_vec;
+	const unsigned long ebase = CKSEG1;
 
-	/*
-	 * Setup default vectors
-	 */
-	for (i = 0; i <= 31; i++) {
-		set_except_vector(i, &handle_reserved);
-	}
+	 /* copy the generic exception handlers to their final destination */
+	memcpy((void *)(ebase + 0x180), &exception_vec, vec_size);
 
 	/* FIXME: handle tlb */
-	memcpy((void *)(ebase), &except_vec3_generic, 0x80);
-	memcpy((void *)(ebase + 0x080), &except_vec3_generic, 0x80);
+	memcpy((void *)(ebase), &exception_vec, vec_size);
+	memcpy((void *)(ebase + 0x80), &exception_vec, vec_size);
 
 	/* unset BOOT EXCEPTION VECTOR bit */
 	write_c0_status(read_c0_status() & ~ST0_BEV);
diff --git a/arch/mips/lib/genex.S b/arch/mips/lib/genex.S
index b9d18fc394..27dd9de67a 100644
--- a/arch/mips/lib/genex.S
+++ b/arch/mips/lib/genex.S
@@ -2,7 +2,6 @@
 
 #include <asm/asm.h>
 #include <asm/regdef.h>
-#include <asm/mipsregs.h>
 #include <asm/stackframe.h>
 
 	.text
@@ -11,31 +10,19 @@
 	.set	noreorder
 	.align	5
 
-/* Exception vector */
-NESTED(handle_reserved, 0, sp)
+NESTED(exception_vec, 0, sp)
+	j	handle_reserved
+	 nop
+EXPORT(exception_vec_end)
+END(exception_vec)
+
+handle_reserved:
 	SAVE_ALL
 	PTR_LA	k0, barebox_exc_handler
-	jal	k0
+	j	k0
 	 move	a0, sp
-	/* will never return here */
-	END(handle_reserved)
-
-/* General exception vector */
-NESTED(except_vec3_generic, 0, sp)
-	.set	noat
-	mfc0	k1, CP0_CAUSE
-	PTR_LA	k0, exception_handlers
-	andi	k1, k1, 0x7c
-	PTR_ADDU	k0, k0, k1
-	PTR_L	k0, (k0)
-	nop
-	jr	k0
-	 nop
-	END(except_vec3_generic)
-	.set	at
 
 FEXPORT(ret_from_exception)
 	.set	noat
 	RESTORE_ALL_AND_RET
-	 nop
 	.set	at
-- 
2.41.0



