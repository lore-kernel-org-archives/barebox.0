Delivery-date: Mon, 11 Sep 2023 17:26:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfine-00BdeG-2P
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:26:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfinb-0007Si-Q7
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:26:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fb+c6tDqjd84hfOIM9yopoloD32esljLNAW3XIK4EyM=; b=fepyV744qQYYQzZpSs9kpSthiS
	UsFl+oFwW9DRmVnExNkY/8STIYJPbj+WDE6XYTDFuKJy3OXZASR/FBsC+lsoMuhhSDqY+q4GIDx5x
	F8L3K0IWt7F7Ixq15dUlxCNh4Y1Go3C7wl5rMqebYZn7Q8tL691unPuhx+o2ljE/Jc1GwIglYdzNU
	nYbKkVNtiJsROJZq3brsiX6VOi2LqLJA0VT+nvo9xq1/XMytNKWgbCkLQxKzFU1oeeGKBg38du/jU
	OQ+fzn0IM/VTkucUbjptmmAbj+yqW2ssZcfx/E66mgxtQV7GHIqL08XkXSWn/SAtn2FUJpVi8qn/j
	C7jT115A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimY-000sFW-08;
	Mon, 11 Sep 2023 15:24:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimP-000sAu-2M
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:24:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimO-00072R-Ka; Mon, 11 Sep 2023 17:24:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimO-005a9P-8L; Mon, 11 Sep 2023 17:24:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimL-00FHKo-2N;
	Mon, 11 Sep 2023 17:24:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:24:32 +0200
Message-Id: <20230911152433.3640781-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
References: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_082449_766641_69359D52 
X-CRM114-Status: GOOD (  13.12  )
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
Subject: [PATCH v2 6/7] test: self: refactor to allow alignment check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Have The expect_alloc_* functions currently only know whether the
pointer is NULL or not. Have them get the full pointer value and return
it instead.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/malloc.c | 82 +++++++++++++++++++++++++++++++++-------------
 1 file changed, 59 insertions(+), 23 deletions(-)

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
-		     const char *condstr, const char *func, int line)
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
 {
 	total_tests++;
-	if (cond != expect) {
-		failed_tests++;
-		printf("%s:%d: %s to %s\n", func, line,
-		       expect ? "failed" : "unexpectedly succeeded",
-		       condstr);
-	}
+	if (cond == expect)
+		return true;
+
+	failed_tests++;
+	printf("%s:%d: %s to %s\n", func, line,
+	       expect ? "failed" : "unexpectedly succeeded",
+	       condstr);
+	return false;
+
 }
 
-#define expect_alloc_ok(cond) \
-	__expect((cond), true, #cond, __func__, __LINE__)
+static void *__expect(void *ptr, bool expect,
+		     const char *condstr, const char *func, int line)
+{
+	bool ok;
+	total_tests++;
 
-#define expect_alloc_fail(cond) \
-	__expect((cond), false, #cond, __func__, __LINE__)
+	ok = __expect_cond(ptr != NULL, expect, condstr, func, line);
+	if (ok && ptr) {
+		unsigned alignment = get_alignment((uintptr_t)ptr);
+		if (alignment < CONFIG_MALLOC_ALIGNMENT) {
+			failed_tests++;
+			printf("%s:%d: invalid alignment of %u in %s = %p\n", func, line,
+			       alignment, condstr, ptr);
+		}
+	}
+
+	return ptr;
+}
+
+#define expect_alloc_ok(ptr) \
+	__expect((ptr), true, #ptr, __func__, __LINE__)
+
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
2.39.2



