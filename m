Delivery-date: Mon, 25 Nov 2024 16:35:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb80-000GHK-1I
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:35:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb80-0004zL-4f
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:35:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MHl65onkBPJq/iT8juOM59Zvx80kjBNVBWlJPKpZdR8=; b=ynI+QDP2+d7CKIH3KknpeLw+gl
	z4SoQz/9KP5I4hCGzmIG3E7r3j9V7WW07YXN8cnx02NywOcUmOdfLVpDD8sF4b4YtN8zlOW70cE49
	KTFMz+5OjxuSI12aDU1/j3QmYZxtKdXHNRuMsRcXckhyLFNnYTwVeHPznpKsESOfICWejGYJp7pRa
	MA//sbA9JRYQoB+olUR61f+pOX1v0NxDVwHF52HVn7PMLxRZcCZs2HpIfgV809TYrvMeL7uSH9gnd
	wgSfqILavEkZ3jqYQ1GsySt33zQzLVDHXfOtlNwYPtveOiGaeY/XKvnvVkkMlWCnYvKICt1xol2XN
	H3k4NxUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7Z-00000008Vvj-1Te0;
	Mon, 25 Nov 2024 15:35:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7W-00000008Vsg-0yB6
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:35:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-0004YC-UJ; Mon, 25 Nov 2024 16:35:24 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7T-0006V9-34;
	Mon, 25 Nov 2024 16:35:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-006GiN-03;
	Mon, 25 Nov 2024 16:35:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:35:16 +0100
Message-Id: <20241125153523.1411849-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
References: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_073526_266701_94780683 
X-CRM114-Status: GOOD (  13.44  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] test: self: setjmp: add simple initial testcase
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of having a single complicate test, let's first have a simple
test than the existing two tests to make debugging easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/setjmp.c | 75 +++++++++++++++++++++++++++++++++-------------
 1 file changed, 54 insertions(+), 21 deletions(-)

diff --git a/test/self/setjmp.c b/test/self/setjmp.c
index 1cbb44bdf941..deac584d736d 100644
--- a/test/self/setjmp.c
+++ b/test/self/setjmp.c
@@ -14,6 +14,29 @@
 
 BSELFTEST_GLOBALS();
 
+static jmp_buf jbuf;
+
+static void test_setjmp_simple(void)
+{
+	total_tests++;
+
+	pr_debug("%s: saving jmp_buf\n", __func__);
+
+	switch (setjmp(jbuf)) {
+	case 0:
+		break;
+	case 42:
+		pr_debug("%s: returned from longjmp\n", __func__);
+		return;
+	default:
+		printf("%s: unexpected value from setjmp\n", __func__);
+		failed_tests++;
+	}
+
+	pr_debug("%s: attempting longjmp\n", __func__);
+	longjmp(jbuf, 42);
+}
+
 static __noreturn void raise_longjmp(jmp_buf jbuf, int i, int n)
 {
 	while (i < n)
@@ -22,28 +45,8 @@ static __noreturn void raise_longjmp(jmp_buf jbuf, int i, int n)
 	longjmp(jbuf, n);
 }
 
-static jmp_buf jbuf;
-
-static void __noreturn initjmp_entry(void)
+static void test_setjmp_loop(void)
 {
-	volatile u32 arr[256];
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(arr); i++)
-		writel(i, &arr[i]);
-
-	/* ensure arr[] is allocated on stack */
-	OPTIMIZER_HIDE_VAR(i);
-	if (i == 0)
-		initjmp_entry();
-
-	longjmp(jbuf, 0x1337);
-}
-
-static void test_setjmp(void)
-{
-	void *stack;
-	jmp_buf ijbuf;
 	volatile int i;
 	int ret;
 
@@ -71,6 +74,29 @@ static void test_setjmp(void)
 		failed_tests++;
 	}
 
+}
+
+static void __noreturn initjmp_entry(void)
+{
+	volatile u32 arr[256];
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(arr); i++)
+		writel(i, &arr[i]);
+
+	/* ensure arr[] is allocated on stack */
+	OPTIMIZER_HIDE_VAR(i);
+	if (i == 0)
+		initjmp_entry();
+
+	longjmp(jbuf, 0x1337);
+}
+
+static void test_initjmp(void)
+{
+	void *stack;
+	jmp_buf ijbuf;
+
 	stack = memalign(16, CONFIG_STACK_SIZE);
 	if (WARN_ON(!stack)) {
 		skipped_tests++;
@@ -95,4 +121,11 @@ static void test_setjmp(void)
 
 	free(stack);
 }
+
+static void test_setjmp(void)
+{
+	test_setjmp_simple();
+	test_setjmp_loop();
+	test_initjmp();
+}
 bselftest(core, test_setjmp);
-- 
2.39.5



