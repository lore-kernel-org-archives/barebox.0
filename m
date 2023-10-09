Delivery-date: Mon, 09 Oct 2023 13:52:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpooa-001qU2-W7
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:52:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpooX-0001hm-Gw
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:52:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lHZ6C8NwAgkJ0lrEIL5B20gq0XDDHChuBNv4uaYwWxo=; b=UCbkaFyidj0vUJ+1q/XNI2JtPJ
	TMBJoBNTZLVH6Vfjqh5k4VHemH5dYzT1+JE2UhA4GhWWc1Ov0Yr/GRDIa+bnPqbW4+m4dgWY/zLcX
	nvW3as74XUnR54qnaeCUyn1n2L4pcWagm/TAicP4Ab+mmanEONwpIKZLbQUNf2Dw7xpCi7b1xccPe
	j1q+5Fbt1JegkyMa+rNI3InO3fgxxzWQi7bVTnaaGSQEQ6LmrQwxm9OxcGmNCctZiFVsuDkzRTPrB
	vaasz4Y1UHFq5GruFpyJk6Am5pwj3/MO23ncg1osmDf+YQXly5p3hllyeKNZ6x1/6Kbs3AiqVqo+E
	WsVw6Ncw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpomu-00AVtN-1i;
	Mon, 09 Oct 2023 11:51:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpomr-00AVsi-1O
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:51:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpomk-0001Kk-E5; Mon, 09 Oct 2023 13:50:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpomk-000P31-1L; Mon, 09 Oct 2023 13:50:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpomk-008B7L-00;
	Mon, 09 Oct 2023 13:50:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:50:50 +0200
Message-Id: <20231009115051.1931562-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045101_467915_D38C7B82 
X-CRM114-Status: GOOD (  11.01  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] x86: lib: setjmp: fix stack alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

x86 stack is expected to be 16-byte aligned to allow for instructions
like movaps that involve xmm operands to directly use the stack.

However the 16-byte alignment is what's expected at startup time.
All later functions will have the stack misaligned by a pointer size's
worth because call pushes the return address to the call stack.

Add the missing (mis)alignment. This fixes a segmentation fault observed
using initjmp on x86_64.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/lib/setjmp_32.S | 4 +++-
 arch/x86/lib/setjmp_64.S | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/x86/lib/setjmp_32.S b/arch/x86/lib/setjmp_32.S
index 38dcb68c1b59..30db5f989af6 100644
--- a/arch/x86/lib/setjmp_32.S
+++ b/arch/x86/lib/setjmp_32.S
@@ -8,6 +8,7 @@
 #define _REGPARM
 
 #include <linux/linkage.h>
+#include <asm-generic/pointer.h>
 
 .text
 .align 8
@@ -53,7 +54,8 @@ ENDPROC(longjmp)
 ENTRY(initjmp)
 
 	movl %edx, 20(%eax)	/* Return address */
-	movl %ecx, 4(%eax)	/* Post-return %esp! */
+	sub $ASM_SZPTR, %ecx	/* ESP - 4 has to be 16-byte aligned on entry */
+	movl %ecx, 4(%eax)	/* Stack top */
 	xorl %eax, %eax		/* Return value */
 	ret
 
diff --git a/arch/x86/lib/setjmp_64.S b/arch/x86/lib/setjmp_64.S
index 28ea576cd22e..d5cf99a1557f 100644
--- a/arch/x86/lib/setjmp_64.S
+++ b/arch/x86/lib/setjmp_64.S
@@ -6,6 +6,7 @@
  */
 
 #include <linux/linkage.h>
+#include <asm-generic/pointer.h>
 
 .text
 .align 8
@@ -53,6 +54,7 @@ ENDPROC(longjmp)
 ENTRY(initjmp)
 
 	movq	%rsi, (%rdi)	/* Return address */
+	sub	$ASM_SZPTR, %rdx	/* RSP - 8 has to be 16-byte aligned on entry */
 	movq	%rdx, 8(%rdi)	/* Stack top */
 	xorq	%rax, %rax
 	ret
-- 
2.39.2



