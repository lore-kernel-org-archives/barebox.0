Delivery-date: Wed, 17 Mar 2021 11:48:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTiy-0004Do-ET
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 11:48:24 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMTiv-0008Br-Ua
	for lore@pengutronix.de; Wed, 17 Mar 2021 11:48:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wv8KIEL5rwM4C5Q6lFRtgRiQki1z1XMUtDBGAlHQno4=; b=LrdgWjRGL3/S/Jf6datBlwZAE
	9vDoAt5ZFvOtrlOIvD6KlUtAqepeta8e7ziLAYF3j2dJNymKe2eLmXsLuaYbFQA3RP/4+aXPjIqbp
	mpcX+Ki/3Xhi/DV4//YWrnBkpXUBVwhJI+ugMm8+fE3ZqmayQpwTrNY9fgvgJbRPMO1VXPf0h9em6
	h2lEsp28Xl6YgoTiSjqzgf+NxhuUTGJJ03JeJHZJQUwPVQ8dp6NDP6nemXA0WYLy79yTAVjmbV15F
	+/1u5Pd5o2seyCXerYkE54c2XVpWwRSrP4f3uKXF5ACeaqKnd6y2roFWFLQDHgvlTDWLFKx0YrHt3
	azb3khvNw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMTi2-002xNX-M0; Wed, 17 Mar 2021 10:47:27 +0000
Received: from relay13.mail.gandi.net ([217.70.178.233])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMThb-002xEa-Do
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 10:47:01 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay13.mail.gandi.net (Postfix) with ESMTPSA id 219B78000D;
 Wed, 17 Mar 2021 10:46:57 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 17 Mar 2021 11:46:40 +0100
Message-Id: <20210317104643.2058151-6-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210317104643.2058151-1-ahmad@a3f.at>
References: <20210317104643.2058151-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_104659_773721_C010C5FD 
X-CRM114-Status: UNSURE (   7.88  )
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
Subject: [PATCH 5/8] fixup! powerpc: Implement initjmp/setjmp/longjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/powerpc/include/asm/setjmp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
index c558415c99d9..91bfcdb7f442 100644
--- a/arch/powerpc/include/asm/setjmp.h
+++ b/arch/powerpc/include/asm/setjmp.h
@@ -16,6 +16,6 @@ typedef struct __jmp_buf_internal_tag {
 int setjmp(jmp_buf jmp) __attribute__((returns_twice));
 void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
 
-int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+int initjmp(jmp_buf jmp, void __attribute__((noreturn)) (*func)(void), void *stack_top);
 
 #endif /* _SETJMP_H_ */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

