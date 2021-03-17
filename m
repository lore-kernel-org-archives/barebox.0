Delivery-date: Wed, 17 Mar 2021 11:48:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTig-0004Ck-6K
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 11:48:06 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTif-00087A-DP
	for lore@pengutronix.de; Wed, 17 Mar 2021 11:48:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oebMZhRq8FPFueD56OTWY6JbZrz/8jaZE3kyBY9Yef8=; b=QqFm4UVRme+rAutFpwM1YK8N8
	Td9wnH80kccdTrZ8xFYUL7NYz5Nutjl+mGkpBnj9fLp1eFGZ+0Oigs+ecANBCLB7DUoZtJLXbVTfK
	+e4otoZOOF3E7g4aYD4N02SulSlklJZcVrR+kD2bTP5D8tjAyTLJ8VWY8hVnGyQD5FaEOCZUuCKcA
	fNo7iczvrJBFeSi8Mm2W4dZpgGp+G3qa4bMUfNPsJVVvyrNN/BRaLqpwrU+c0xutrD1guGW+22hm+
	pPK8sjm8bCltpGIU8R2DFiCRmdLXS+LMnm7FwWJaqh894bj8p1hJKoheQ3yPaRBI3dflr5wbg4O36
	sa89rDTVQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMThz-002xL7-Ts; Wed, 17 Mar 2021 10:47:24 +0000
Received: from relay13.mail.gandi.net ([217.70.178.233])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMTha-002xEA-5V
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 10:47:00 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay13.mail.gandi.net (Postfix) with ESMTPSA id 516E780027;
 Wed, 17 Mar 2021 10:46:57 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 17 Mar 2021 11:46:39 +0100
Message-Id: <20210317104643.2058151-5-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210317104643.2058151-1-ahmad@a3f.at>
References: <20210317104643.2058151-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_104658_428766_AEBBEFB4 
X-CRM114-Status: UNSURE (   7.58  )
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
Subject: [PATCH 4/8] fixup! openrisc: Implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/openrisc/include/asm/setjmp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/openrisc/include/asm/setjmp.h b/arch/openrisc/include/asm/setjmp.h
index 40f55b7eb594..ee73306d189d 100644
--- a/arch/openrisc/include/asm/setjmp.h
+++ b/arch/openrisc/include/asm/setjmp.h
@@ -12,6 +12,6 @@ typedef long int jmp_buf[13];
 
 int setjmp(jmp_buf jmp) __attribute__((returns_twice));
 void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
-int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *stack_top);
 
 #endif /* _OR1K_BITS_SETJMP_H */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

