Delivery-date: Mon, 23 Mar 2026 08:18:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4ZYb-0043AA-1i
	for lore@lore.pengutronix.de;
	Mon, 23 Mar 2026 08:18:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4ZYa-00019O-UD
	for lore@pengutronix.de; Mon, 23 Mar 2026 08:18:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uThyaKqlGDcICk+rW9A8JSq69Sdk4ohrAC1aaRzx/cM=; b=sfS20QjvyqZsiDn6Ofg6x3GMd+
	y+Pdq2BQZr5AVsuTfmKGS1fA/xZsTxpDCcP5+EGyD6lJQ9uybHcmiO1LtLRBjANDkRqLv69AXdc5d
	lRZbqGLUybuboiJse9s5jYOovyyXh0v9FARjrXG/yQ5zgpJDseW8MC2jTGjr2wVA6ocKLmhmTd9Z3
	Y3byuPl3zKglqQCc9f7219/fy2tfNKxQ+FXFyrYLVQ+v8bU7aLK2yY78JJXw68ieOSvrkmyPPVkpe
	3UHcYDpHE6tAeuLxpf2dA7qHsGctiGu/pjEUkkBJwu8alOsUiP2nD8Uw5O5+9h5wxcpwsR0igqbYm
	M+O1u8mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZXs-0000000GBM1-2pDI;
	Mon, 23 Mar 2026 07:17:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZXq-0000000GBLL-18R5
	for barebox@lists.infradead.org;
	Mon, 23 Mar 2026 07:17:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1w4ZXl-00012N-78; Mon, 23 Mar 2026 08:17:45 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Mar 2026 08:17:28 +0100
Message-ID: <20260323071738.4005127-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_001750_333706_8EB2C644 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] x86: fix initjmp storing base pointer at wrong address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

initjmp was writing zero to 8(%edx), which is func + 8 (corrupting
memory at the function pointer address), instead of 8(%eax), which is
the __ebp (base pointer) slot in the jmp_buf. When longjmp later
restored the buffer, it would load uninitialized data into %ebp.

With regparm(3), the arguments are passed as:
  %eax = jmp_buf, %edx = func, %ecx = stack_top

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/x86/lib/setjmp_32.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/lib/setjmp_32.S b/arch/x86/lib/setjmp_32.S
index cf340d35d8fd..ff080179ef9d 100644
--- a/arch/x86/lib/setjmp_32.S
+++ b/arch/x86/lib/setjmp_32.S
@@ -56,7 +56,7 @@ ENDPROC(longjmp)
 ENTRY(initjmp)
 
 	movl %edx, 20(%eax)	/* Return address */
-	movl   $0, 8(%edx)	/* Base pointer */
+	movl   $0, 8(%eax)	/* Base pointer */
 	sub $ASM_SZPTR, %ecx	/* ESP - 4 has to be 16-byte aligned on entry */
 	movl %ecx, 4(%eax)	/* Stack top */
 	xorl %eax, %eax		/* Return value */
-- 
2.47.3



