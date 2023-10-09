Delivery-date: Mon, 09 Oct 2023 13:52:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpooZ-001qTt-SZ
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:52:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpooX-0001hn-Hq
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:52:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pZoF/+HV4umO2gfbcR2S6oYeTbonL90QeD76J3zdjr0=; b=tptmQ+RxxJIFCJbrtBsU4P2CVW
	okRo6jTDnXdAPf0DoxuPqVT4Sk7w0Xhw50bBS0mgeC98moNIs9AVM1oEapFCBwUwjKzLCIMxWGY18
	PSwicX03hbna3a/e70imOGdWrqAhoYDDtiqag41W3rP7RRYCHdNJl2KjSDWDBny6w9y/hnlv1Zio6
	mixqNCB9MYza2csmO67Agtf4g4HIMsPlnccFvIeJfdEPJln+MGTcqUTPeOaG3lqmSsmhdDITPPw7v
	EzVYAvTaX7tA/EaZICt/FNF2wVmLJbfSgKGYb//D5FKX/7V6o32jw2BWtEyXB43DFI6+LkWwTiOHV
	cPhclV9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpomx-00AVts-0b;
	Mon, 09 Oct 2023 11:51:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpomu-00AVsg-2F
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:51:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpomk-0001Km-EU; Mon, 09 Oct 2023 13:50:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpomk-000P32-1i; Mon, 09 Oct 2023 13:50:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpomk-008B8G-02;
	Mon, 09 Oct 2023 13:50:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:50:51 +0200
Message-Id: <20231009115051.1931562-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009115051.1931562-1-a.fatoum@pengutronix.de>
References: <20231009115051.1931562-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045104_735182_B03EF307 
X-CRM114-Status: GOOD (  10.17  )
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
Subject: [PATCH 2/2] x86: setjmp: set base pointer to zero in initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Initializing the frame points to a known-bad value like zero makes it
easier for code unwinding the stack to know when to stop. Thus
initialize the stack pointer in initjmp-initialized jump buffers to
zero.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/lib/setjmp_32.S | 1 +
 arch/x86/lib/setjmp_64.S | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/x86/lib/setjmp_32.S b/arch/x86/lib/setjmp_32.S
index 30db5f989af6..5814623f9478 100644
--- a/arch/x86/lib/setjmp_32.S
+++ b/arch/x86/lib/setjmp_32.S
@@ -54,6 +54,7 @@ ENDPROC(longjmp)
 ENTRY(initjmp)
 
 	movl %edx, 20(%eax)	/* Return address */
+	movl   $0, 8(%edx)	/* Base pointer */
 	sub $ASM_SZPTR, %ecx	/* ESP - 4 has to be 16-byte aligned on entry */
 	movl %ecx, 4(%eax)	/* Stack top */
 	xorl %eax, %eax		/* Return value */
diff --git a/arch/x86/lib/setjmp_64.S b/arch/x86/lib/setjmp_64.S
index d5cf99a1557f..bfa152149975 100644
--- a/arch/x86/lib/setjmp_64.S
+++ b/arch/x86/lib/setjmp_64.S
@@ -54,6 +54,7 @@ ENDPROC(longjmp)
 ENTRY(initjmp)
 
 	movq	%rsi, (%rdi)	/* Return address */
+	movq	$0,  16(%rdi)	/* Base pointer */
 	sub	$ASM_SZPTR, %rdx	/* RSP - 8 has to be 16-byte aligned on entry */
 	movq	%rdx, 8(%rdi)	/* Stack top */
 	xorq	%rax, %rax
-- 
2.39.2



