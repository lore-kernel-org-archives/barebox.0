Delivery-date: Mon, 01 Mar 2021 12:02:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgK2-0004TF-Jc
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:02:42 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgK1-0000Ex-7m
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:02:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tQ3tzNWbP6Gl0w1OLwJGco+GCnz0uOW+ErP9bQ6wCQc=; b=ArbnI7Io4BwEqRIoQloWag9H6
	z6s4ioWigD1ZAkiS86pqV3pIsfesjlnI9ZQ8lMijrjQ7//IIqM4yPJBSekWSfipiBKAgMwHJ28usF
	Hwujl/WnHVvaXxwrw2OvLJP8LARJm2rxotdDNGS+YVgIYCqOJE4H1tkbnVVVVjrEI0Eh2EMBl9TR5
	oAvB/KDt7guQ5dEJhEvU9Y41m86EJz446rMJbOFwBpwDpRT37QnqFOOqsVoEAgyGbLk3ATTErULqm
	HzZWVysVlkpM365fsJdtLC3k4XrZih2sKLNjQH9FSjImc8eP31QaXOjydeQAkrQBVntmwZwtSoWxx
	bD3u+jcjA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgIj-0005KG-5i; Mon, 01 Mar 2021 11:01:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgIe-0005I1-Fb
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:01:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIb-00089G-Cg; Mon, 01 Mar 2021 12:01:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIa-0001b9-Ce; Mon, 01 Mar 2021 12:01:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 12:00:59 +0100
Message-Id: <20210301110106.3764-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301110106.3764-1-a.fatoum@pengutronix.de>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_060116_561720_8E4F17F6 
X-CRM114-Status: GOOD (  11.12  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Stafford Horne <shorne@gmail.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, sha@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/11] ARM: asm: setjmp: implement coroutine dependency
 initjmp()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Implement initjmp() for use with the coroutine implementation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig              | 1 +
 arch/arm/include/asm/setjmp.h | 2 ++
 arch/arm/lib32/setjmp.S       | 8 ++++++++
 arch/arm/lib64/setjmp.S       | 9 +++++++++
 4 files changed, 20 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ab0bf030131c..cdb934136e34 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -5,6 +5,7 @@ config ARM
 	select HAVE_CONFIGURABLE_TEXT_BASE if !RELOCATABLE
 	select HAVE_IMAGE_COMPRESSION
 	select HAVE_ARCH_KASAN
+	select HAS_ARCH_SJLJ
 	select ARM_OPTIMZED_STRING_FUNCTIONS if KASAN
 	default y
 
diff --git a/arch/arm/include/asm/setjmp.h b/arch/arm/include/asm/setjmp.h
index 538d9cd50651..4877e4312411 100644
--- a/arch/arm/include/asm/setjmp.h
+++ b/arch/arm/include/asm/setjmp.h
@@ -26,4 +26,6 @@ typedef struct jmp_buf_data jmp_buf[1];
 int setjmp(jmp_buf jmp) __attribute__((returns_twice));
 void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
 
+int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+
 #endif /* _SETJMP_H_ */
diff --git a/arch/arm/lib32/setjmp.S b/arch/arm/lib32/setjmp.S
index f0606a7f6659..626d915da183 100644
--- a/arch/arm/lib32/setjmp.S
+++ b/arch/arm/lib32/setjmp.S
@@ -33,4 +33,12 @@ ENTRY(longjmp)
 1:
 	bx   lr
 ENDPROC(longjmp)
+
+.pushsection .text.initjmp, "ax"
+ENTRY(initjmp)
+	str  a3, [a1, #32] /* stack pointer */
+	str  a2, [a1, #36] /* return address */
+	mov  a1, #0
+	bx   lr
+ENDPROC(initjmp)
 .popsection
diff --git a/arch/arm/lib64/setjmp.S b/arch/arm/lib64/setjmp.S
index 0910e2f5a6c3..80be8cb0f201 100644
--- a/arch/arm/lib64/setjmp.S
+++ b/arch/arm/lib64/setjmp.S
@@ -36,3 +36,12 @@ ENTRY(longjmp)
 	ret
 ENDPROC(longjmp)
 .popsection
+
+.pushsection .text.initjmp, "ax"
+ENTRY(initjmp)
+	str  x2, [x0, #96] /* stack pointer */
+	str  x1, [x0, #88] /* return address */
+	mov  x0, #0
+	ret
+ENDPROC(initjmp)
+.popsection
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

