Delivery-date: Tue, 04 Oct 2022 17:57:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkIC-005iHQ-6b
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 17:57:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkIA-0006hm-9w
	for lore@pengutronix.de; Tue, 04 Oct 2022 17:57:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JQT3qqjpUV3GEUW8RzbAuOR7rcS7EOIsMMiFk9RQleE=; b=aCX5RqDqvhy2swyIJeH1UV8hRv
	chZJHPeARv+CPmsJEm08woqEZBq7Yr1FFCFFFDRcCd+erHggFhZXFrK152BdxWn9a5BZnCv+ChHT6
	Tb0Nt/y4T7rBd/RJuxQMboiRt6aQoVOgwhDilAZbMN92oVfGMdGBI47NCIQPg+zVqpxw1gWowF9kp
	olgQKTF27WOvaob0mHU3+vwsN3ctAxnlLI121FYRaiA/XHhmR5HV9Oak9zPYHUvTOhzscYCIwX3uF
	CUlWDPa3a9iwgP22tKetVpIZcDuJDeiVRYZ7LaxxtBGg++HcHboDEsjviY822JlmWmxrEdO2/4+u5
	KlE4XdWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGq-00A88r-Mp; Tue, 04 Oct 2022 15:55:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGE-00A7pE-3y
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 15:55:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG4-0005gd-S4; Tue, 04 Oct 2022 17:55:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG5-004alp-JJ; Tue, 04 Oct 2022 17:55:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG2-00EW8P-C7; Tue, 04 Oct 2022 17:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Oct 2022 17:54:06 +0200
Message-Id: <20221004155405.3458479-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_085510_208104_9F14CE63 
X-CRM114-Status: GOOD (  13.26  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] test: self: refactor to allow alignment check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Have The expect_alloc_* functions currently only know whether the
pointer is NULL or not. Have them get the full pointer value and return
it instead.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/malloc.c | 78 +++++++++++++++++++++++++++++++++-------------
 1 file changed, 57 insertions(+), 21 deletions(-)

diff --git a/test/self/malloc.c b/test/self/malloc.c
index c25b416b9751..6b3002ff0996 100644
--- a/test/self/malloc.c
+++ b/test/self/malloc.c
@@ -7,26 +7,62 @@
 #include <malloc.h>
 #include <memory.h>
 #include <linux/sizes.h>
+#include <linux/bitops.h>
 
 BSELFTEST_GLOBALS();
 
-static void __expect(bool cond, bool expect,
+#define get_alignment(val) \
+	BIT(__builtin_constant_p(val) ?  __builtin_ffsll(val) : __ffs64(val))
+
+static_assert(get_alignment(0x1)	!= 1);
+static_assert(get_alignment(0x2)	!= 2);
+static_assert(get_alignment(0x3)	!= 1);
+static_assert(get_alignment(0x4)	!= 4);
+static_assert(get_alignment(0x5)	!= 1);
+static_assert(get_alignment(0x6)	!= 2);
+static_assert(get_alignment(0x8)	!= 8);
+static_assert(get_alignment(0x99)	!= 0x1);
+static_assert(get_alignment(0xDEADBEE0)	!= 0x10);
+
+static bool __expect_cond(bool cond, bool expect,
+			  const char *condstr, const char *func, int line)
+{
+	total_tests++;
+	if (cond == expect)
+		return true;
+
+	failed_tests++;
+	printf("%s:%d: %s to %s\n", func, line,
+	       expect ? "failed" : "unexpectedly succeeded",
+	       condstr);
+	return false;
+
+}
+
+static void *__expect(void *ptr, bool expect,
 		     const char *condstr, const char *func, int line)
 {
+	bool ok;
 	total_tests++;
-	if (cond != expect) {
-		failed_tests++;
-		printf("%s:%d: %s to %s\n", func, line,
-		       expect ? "failed" : "unexpectedly succeeded",
-		       condstr);
+
+	ok = __expect_cond(ptr != NULL, expect, condstr, func, line);
+	if (ok && ptr) {
+		unsigned alignment = get_alignment((uintptr_t)ptr);
+		if (alignment < CONFIG_MALLOC_ALIGNMENT) {
+			failed_tests++;
+			printf("%s:%d: invalid alignment of %u in %s = %p\n", func, line,
+			       alignment, condstr, ptr);
+		}
 	}
+
+	return ptr;
 }
 
-#define expect_alloc_ok(cond) \
-	__expect((cond), true, #cond, __func__, __LINE__)
+#define expect_alloc_ok(ptr) \
+	__expect((ptr), true, #ptr, __func__, __LINE__)
 
-#define expect_alloc_fail(cond) \
-	__expect((cond), false, #cond, __func__, __LINE__)
+#define expect_alloc_fail(ptr) \
+	__expect((ptr), false, #ptr, __func__, __LINE__)
 
 static void test_malloc(void)
 {
@@ -45,14 +81,14 @@ static void test_malloc(void)
 		mem_malloc_size = 0;
 	}
 
-	expect_alloc_ok(p = malloc(1));
+	p = expect_alloc_ok(malloc(1));
 	free(p);
 
 	if (mem_malloc_size) {
 		expect_alloc_fail(malloc(SIZE_MAX));
 
 		if (0xf0000000 > mem_malloc_size) {
-			expect_alloc_fail((tmp = malloc(0xf0000000)));
+			tmp = expect_alloc_fail(malloc(0xf0000000));
 			free(tmp);
 		}
 	} else {
@@ -60,22 +96,22 @@ static void test_malloc(void)
 	}
 
 	p = realloc(NULL, 1);
-	expect_alloc_ok(p = realloc(NULL, 1));
+	p = expect_alloc_ok(realloc(NULL, 1));
 
 	*p = 0x42;
 
-	expect_alloc_ok(tmp = realloc(p, 2));
+	tmp = expect_alloc_ok(realloc(p, 2));
 
 	p = tmp;
-	__expect(*p == 0x42, true, "reread after realloc", __func__, __LINE__);
+	__expect_cond(*p == 0x42, true, "reread after realloc", __func__, __LINE__);
 
 	if (mem_malloc_size) {
-		expect_alloc_fail(tmp = realloc(p, mem_malloc_size));
+		tmp = expect_alloc_fail(realloc(p, mem_malloc_size));
 
 		if (0xf0000000 > mem_malloc_size)
-			expect_alloc_fail((tmp = realloc(p, 0xf0000000)));
+			tmp = expect_alloc_fail(realloc(p, 0xf0000000));
 
-		expect_alloc_fail(tmp = realloc(p, SIZE_MAX));
+		tmp = expect_alloc_fail(realloc(p, SIZE_MAX));
 
 	} else {
 		skipped_tests += 3;
@@ -83,9 +119,9 @@ static void test_malloc(void)
 
 	free(p);
 
-	expect_alloc_ok(p = malloc(0));
-	expect_alloc_ok(tmp = malloc(0));
+	p = expect_alloc_ok(malloc(0));
+	tmp = expect_alloc_ok(malloc(0));
 
-	__expect(p != tmp, true, "allocate distinct 0-size buffers", __func__, __LINE__);
+	__expect_cond(p != tmp, true, "allocate distinct 0-size buffers", __func__, __LINE__);
 }
 bselftest(core, test_malloc);
-- 
2.30.2



