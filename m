Delivery-date: Wed, 10 Mar 2021 09:51:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuYb-0001Ed-Fy
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:51:05 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuYa-0002of-3q
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:51:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dAa8sna8D7h8CuuGMfUnnX68dHOdIXc+RSODQaudtvw=; b=DmdZiG7kFZWkiWLQJrqVpc0/H
	Rz78meQxNZEVRBEihwGhIug0349CooQnTN0rymU9xISDx5SkoYgtFKvM2pyzRgo3giXmeulfFA2BY
	Jxj8DmS3lKVLNCoz7BUUKBeUYyldHSv16L8E9il2EPy1+AbnQkgm4uTr4UVxd4OTTYOP621tiuFvD
	DrK6Dvp8BaQsQ0OaNembLxZ5CYuryKBY43rSUvwQ4ekUOv69tDFftjzf0N0FXLLK0+Jcnjy2zrwY2
	jdoGdmOeoVsssnV0cLjIrDsfWZOxKtXs7dbjz2ScesmI8Pf5TJxO8WL8JpKKD3NVYKl7l+qpvzN9s
	OvuOY2u/Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuXN-006Lyi-7H; Wed, 10 Mar 2021 08:49:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVv-006LOt-O0
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVf-0001TY-2r; Wed, 10 Mar 2021 09:48:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zF-Ge; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:47 +0100
Message-Id: <20210310084800.3584-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084819_878220_9427A47A 
X-CRM114-Status: UNSURE (   9.28  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 03/16] ARM: asm: setjmp: implement coroutine dependency
 initjmp()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Implement initjmp() for use with the incoming bthread support.

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

