Delivery-date: Thu, 20 Feb 2025 21:31:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlDCK-004qHj-2G
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 21:31:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlDCJ-0004H6-GC
	for lore@pengutronix.de; Thu, 20 Feb 2025 21:31:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZuUI2cuGiFZzY8ER34aXYNa1HFE9rR8jQozk1BurBEg=; b=Cv0QUtyjMXIT/pRBej2b1n7wYP
	TwbAyKVnYfydwiw3FG+0tOCP80u7rKn9RdH3mECDUwHny5tdqjJToqOvnEpYJOPRvrgaxjVn+0jYZ
	yArn+z8BvPAe7vy3X0dUwIl922LdCAmvTzIFu4isdQp8NkfZDfdjmXd/5Y1OzmNO5IgYGwWpNdhkp
	UHw1QmLd9IZNwjpfbYr+VkVhYGjY3fKIoPkOT7Jgzjt8O+Vduq23+xktyRFPsO0jONQJgiD2MKqUo
	T8yCAd6WNLl/+LSHJk+Jo6z1MZPlEzkzOu6kmXEPTVOuOcyj9RUhfugphps2JxVczba2kBVlLlnQJ
	Yq+IK0UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDBw-00000002nIq-1wTj;
	Thu, 20 Feb 2025 20:30:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDBr-00000002nFt-46uG
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 20:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-0003xN-OQ; Thu, 20 Feb 2025 21:30:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-001zSF-1g;
	Thu, 20 Feb 2025 21:30:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-00E3gH-1M;
	Thu, 20 Feb 2025 21:30:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2025 21:30:32 +0100
Message-Id: <20250220203032.3350247-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
References: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_123036_065576_B728D5FB 
X-CRM114-Status: GOOD (  10.58  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] test: self: malloc: adapt to addition of MALLOC_MAX_SIZE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we enforce a maximum allocation size, adapt the tests to
account for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/malloc.c | 27 +++++++++++----------------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/test/self/malloc.c b/test/self/malloc.c
index 0feec810185f..79a32b5d97c7 100644
--- a/test/self/malloc.c
+++ b/test/self/malloc.c
@@ -84,16 +84,17 @@ static void test_malloc(void)
 	p = expect_alloc_ok(malloc(1));
 	free(p);
 
-	if (mem_malloc_size) {
-		tmp = expect_alloc_fail(malloc(RELOC_HIDE(SIZE_MAX, 0)));
-		free(tmp);
+	p = expect_alloc_fail(malloc(RELOC_HIDE(SIZE_MAX, 0)));
+	free(p);
 
-		if (0xf0000000 > mem_malloc_size) {
-			tmp = expect_alloc_fail(malloc(RELOC_HIDE(0xf0000000, 0)));
-			free(tmp);
-		}
+	p = expect_alloc_fail(malloc(RELOC_HIDE(MALLOC_MAX_SIZE, 1)));
+	free(p);
+
+	if (mem_malloc_size) {
+		tmp = expect_alloc_fail(malloc(RELOC_HIDE(MALLOC_MAX_SIZE, -1)));
+		free(tmp);
 	} else {
-		skipped_tests += 2;
+		skipped_tests++;
 	}
 
 	free(realloc(NULL, 1));
@@ -110,16 +111,10 @@ static void test_malloc(void)
 		tmp = expect_alloc_fail(realloc(p, mem_malloc_size));
 		free(tmp);
 
-		if (0xf0000000 > mem_malloc_size) {
-			tmp = expect_alloc_fail(realloc(p, RELOC_HIDE(0xf0000000, 0)));
-			free(tmp);
-		}
-
-		tmp = expect_alloc_fail(realloc(p, RELOC_HIDE(SIZE_MAX, 0)));
+		tmp = expect_alloc_fail(realloc(p, RELOC_HIDE(MALLOC_MAX_SIZE, -1)));
 		free(tmp);
-
 	} else {
-		skipped_tests += 3;
+		skipped_tests += 2;
 	}
 
 	free(p);
-- 
2.39.5



