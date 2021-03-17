Delivery-date: Wed, 17 Mar 2021 11:48:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTjB-0004Ev-D6
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 11:48:37 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTjA-0008Ib-Dv
	for lore@pengutronix.de; Wed, 17 Mar 2021 11:48:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rEIxgl/w+gIhsN6rNd+iMGCfqAssDWurcNu1BlEKQ1Y=; b=RkmTielSTa5ysVsEPsZP8fPmb
	WCESoWsId3Vxi0Rmn/EOaWdWvtKtHLy6JBMYdAIDXG5UMt2lefk77Qg7Tua5a8FQsInYlg5RH5eB/
	r54HMoKnaOHrAk2GnHf6/TAa44wOKsNOGUGf5MhO/rdhMXkIcef3ilz3aGzvdA278EprEttDgZYJQ
	nf7kUMH5S2dxLZe9M6Pgh1/X2PnRlIg47diHhXVgQ5SUXOgI0ke6DOzEan/GC0sCvbDGJXp9Whh7i
	tEqsjXIPpZCQNlMGNub+4VNzsZk6AhskuojqEMNTjnBcGqsInr5tKKQ6qJtODcXT+iYdcNaamjscy
	i0/8JVL8g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMTiD-002xSp-IL; Wed, 17 Mar 2021 10:47:37 +0000
Received: from relay13.mail.gandi.net ([217.70.178.233])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMThd-002xFV-At
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 10:47:03 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay13.mail.gandi.net (Postfix) with ESMTPSA id B77E98001B;
 Wed, 17 Mar 2021 10:47:00 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 17 Mar 2021 11:46:43 +0100
Message-Id: <20210317104643.2058151-9-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210317104643.2058151-1-ahmad@a3f.at>
References: <20210317104643.2058151-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_104701_697466_D1D44669 
X-CRM114-Status: UNSURE (   6.82  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] fixup! x86: implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/x86/include/asm/setjmp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/setjmp.h b/arch/x86/include/asm/setjmp.h
index 88c198cfaeb9..5af5e624895c 100644
--- a/arch/x86/include/asm/setjmp.h
+++ b/arch/x86/include/asm/setjmp.h
@@ -39,6 +39,6 @@ typedef struct jmp_buf_data jmp_buf[1];
 int setjmp(jmp_buf jmp) __attribute__((returns_twice)) __sjlj_attr;
 void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn)) __sjlj_attr;
 
-int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top) __sjlj_attr;
+int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *stack_top) __sjlj_attr;
 
 #endif
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

