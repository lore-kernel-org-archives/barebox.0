Delivery-date: Mon, 11 Sep 2023 17:26:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfind-00Bddj-CP
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:26:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfina-0007RI-2D
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:26:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3svNaDSthqtA09NwKMT/rmBfYdY290LhYvqKTSYaTi0=; b=0/QgI7pRC/xA/cNHS1kG8BX3pP
	fvc6F1aI5CM9AGSwCtfsXcTjTrRtM/OJzi/FAXBEO81MXlj51IULt0mewXhrJRsB0//AO2kn7Dn/9
	q9O/T/jY3yX4tm3ywEvlA6Q2S0tSswkHEd5CHwcOMcCQbqV8hZJxPLRwpKTY5ZvY5Uiv+mOeJ2Y4b
	B92utBkxCkUynKJPfhdnJ8yKNnlO3aZ9eaGPIKkHCo59cfhWBqfei0ZCouY/J4PQcZDCq/ZfJStxT
	9ekktAcxn8WJSzGfVE6F4n52mqcqboNnJF1bpN6IKkpZG+4ssMrurYlyncqb9ZhXHFkqXqqxEzgYJ
	SXKcljuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimU-000sCz-29;
	Mon, 11 Sep 2023 15:24:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimO-000s9I-2A
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:24:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimN-00071a-IF; Mon, 11 Sep 2023 17:24:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimN-005a97-4y; Mon, 11 Sep 2023 17:24:47 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimL-00FHKs-2Q;
	Mon, 11 Sep 2023 17:24:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:24:33 +0200
Message-Id: <20230911152433.3640781-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
References: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_082448_716989_EC5F42EA 
X-CRM114-Status: GOOD (  11.33  )
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
Subject: [PATCH v2 7/7] test: self: malloc: fix memory leaks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The test shouldn't leak memory, even if it fails. Fix the leaks.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/malloc.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/test/self/malloc.c b/test/self/malloc.c
index 6b3002ff0996..47c225ac6a10 100644
--- a/test/self/malloc.c
+++ b/test/self/malloc.c
@@ -85,7 +85,8 @@ static void test_malloc(void)
 	free(p);
 
 	if (mem_malloc_size) {
-		expect_alloc_fail(malloc(SIZE_MAX));
+		tmp = expect_alloc_fail(malloc(SIZE_MAX));
+		free(tmp);
 
 		if (0xf0000000 > mem_malloc_size) {
 			tmp = expect_alloc_fail(malloc(0xf0000000));
@@ -95,7 +96,7 @@ static void test_malloc(void)
 		skipped_tests += 2;
 	}
 
-	p = realloc(NULL, 1);
+	free(realloc(NULL, 1));
 	p = expect_alloc_ok(realloc(NULL, 1));
 
 	*p = 0x42;
@@ -107,11 +108,15 @@ static void test_malloc(void)
 
 	if (mem_malloc_size) {
 		tmp = expect_alloc_fail(realloc(p, mem_malloc_size));
+		free(tmp);
 
-		if (0xf0000000 > mem_malloc_size)
+		if (0xf0000000 > mem_malloc_size) {
 			tmp = expect_alloc_fail(realloc(p, 0xf0000000));
+			free(tmp);
+		}
 
 		tmp = expect_alloc_fail(realloc(p, SIZE_MAX));
+		free(tmp);
 
 	} else {
 		skipped_tests += 3;
@@ -123,5 +128,8 @@ static void test_malloc(void)
 	tmp = expect_alloc_ok(malloc(0));
 
 	__expect_cond(p != tmp, true, "allocate distinct 0-size buffers", __func__, __LINE__);
+
+	free(p);
+	free(tmp);
 }
 bselftest(core, test_malloc);
-- 
2.39.2



