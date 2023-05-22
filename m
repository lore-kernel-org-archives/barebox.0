Delivery-date: Mon, 22 May 2023 07:23:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1I-009Iqv-2n
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:23:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1F-0001SH-Mc
	for lore@pengutronix.de; Mon, 22 May 2023 07:23:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=j56DMnPkE6P+qsmC/dIMnTx4aRZt/ypDW+ZKW6En1fU=; b=S0kHjE3pEabvt9ZvTL2oX4Y70Z
	mexXqOp2jqJy9pazBsquzRGAue8HLvD8tizsv5TPZ8F8NjBjv8YO+JF97B9/0ukC3ssNCh8eYYus/
	rnkHyK7KRGIev7wu64aFsP6nfaU+T+U56FawBhb4Lo1JEgyc081c95RJqL/cMWb+xfkpkeWpuqsaT
	VD6WUPcy2GDubneovPVn2JfuXuRhmfm0EPtTPjVlBnM9nCHApvKRjRgfaOHODpN+C3noZ+F0bxLlD
	LPBzaVd0j9WMAzLngAVTbgUg9KLmDqsA/H3s4rtcWGfztLNnFs7ueaxNUtcfk1wPtPy/cWzqlaD+c
	+MyLZSuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y05-005N9r-0L;
	Mon, 22 May 2023 05:22:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y01-005N73-38
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:22:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y00-000172-Na; Mon, 22 May 2023 07:22:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y00-001vuJ-2M; Mon, 22 May 2023 07:22:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0xzz-004M1F-1C; Mon, 22 May 2023 07:22:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 07:22:16 +0200
Message-Id: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222226_006780_96A876F4 
X-CRM114-Status: UNSURE (   9.23  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/7] test: self: ramfs: fix unintended macro identifier confusion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

int ret = (_ret) is problematic, because when _ret is replaced with ret
in a macro, we end up with int ret = ret, which is valid syntactically,
but invokes undefined behavior. Guard against this by using different
identifiers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/ramfs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/test/self/ramfs.c b/test/self/ramfs.c
index f8e1d60a61b5..bce396dc171e 100644
--- a/test/self/ramfs.c
+++ b/test/self/ramfs.c
@@ -14,17 +14,17 @@
 
 BSELFTEST_GLOBALS();
 
-#define __expect(_ret, _cond, fmt, ...) ({ \
-	bool cond = (_cond); \
-	int ret = (_ret); \
+#define __expect(ret, cond, fmt, ...) ({ \
+	bool __cond = (cond); \
+	int __ret = (ret); \
 	total_tests++; \
 	\
-	if (!cond) { \
+	if (!__cond) { \
 		failed_tests++; \
 		printf("%s:%d error %pe: " fmt "\n", \
-		       __func__, __LINE__, ERR_PTR(ret), ##__VA_ARGS__); \
+		       __func__, __LINE__, ERR_PTR(__ret), ##__VA_ARGS__); \
 	} \
-	cond; \
+	__cond; \
 })
 
 #define expect_success(ret, ...) __expect((ret), (ret) >= 0, __VA_ARGS__)
-- 
2.39.2



