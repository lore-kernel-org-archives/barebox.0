Delivery-date: Thu, 09 Nov 2023 14:39:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r15Fv-004GSw-06
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 14:39:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r15Fv-00034p-3G
	for lore@pengutronix.de; Thu, 09 Nov 2023 14:39:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LlJxEH1nOM+57f3lmVHGhs774o1GyvTG5gBvnzeIMkI=; b=cMqIjaBwtORYlc2H2w7covh+zL
	NpyES14CTXqIygNqlzIaVxSe0ZxP0ZdKCY1yf5E3zy85N8oXBzfeMIQhO0UoueRUyRMWM1JcBQIgi
	jH7vUzCNdztIsqcOcXYOYZnhKZ94Mik31HGyxMPOSbtYHcJIr5aVz/iqnBzxasUJwpcUS0Pb6lUlK
	jrcdqobi7h/4S7lbGKfh8wOKOdlFFWnUhgGhy+rWnY8XO4sqJVwnN+te4u2FmlVDVntPw4tJ8Eh2b
	wI8TKxbil45+hf7RBQy/oQe87WatxPJPuQ9vcXfGcFvcqa8f1yxFdAfnoaJJgxP81AvyKeU0OK6ql
	I7GLd5QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r15Ef-006OrB-16;
	Thu, 09 Nov 2023 13:38:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r15Ed-006Oqd-0C
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 13:38:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r15Eb-0002iB-Nu; Thu, 09 Nov 2023 14:38:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r15Eb-007nCM-BM; Thu, 09 Nov 2023 14:38:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r15Eb-006ZVI-0q;
	Thu, 09 Nov 2023 14:38:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 14:38:12 +0100
Message-Id: <20231109133812.1566381-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_053815_115881_8972BCA8 
X-CRM114-Status: UNSURE (   9.85  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] test: self: malloc: hide allocation size from compiler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Once we start annotating malloc with __attribute((alloc_size)), GCC will
detect that we intentionally buffers that are too big.

Avoid the warning by hiding the size using the RELOC_HIDE macro.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/malloc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/test/self/malloc.c b/test/self/malloc.c
index 47c225ac6a10..0feec810185f 100644
--- a/test/self/malloc.c
+++ b/test/self/malloc.c
@@ -85,11 +85,11 @@ static void test_malloc(void)
 	free(p);
 
 	if (mem_malloc_size) {
-		tmp = expect_alloc_fail(malloc(SIZE_MAX));
+		tmp = expect_alloc_fail(malloc(RELOC_HIDE(SIZE_MAX, 0)));
 		free(tmp);
 
 		if (0xf0000000 > mem_malloc_size) {
-			tmp = expect_alloc_fail(malloc(0xf0000000));
+			tmp = expect_alloc_fail(malloc(RELOC_HIDE(0xf0000000, 0)));
 			free(tmp);
 		}
 	} else {
@@ -111,11 +111,11 @@ static void test_malloc(void)
 		free(tmp);
 
 		if (0xf0000000 > mem_malloc_size) {
-			tmp = expect_alloc_fail(realloc(p, 0xf0000000));
+			tmp = expect_alloc_fail(realloc(p, RELOC_HIDE(0xf0000000, 0)));
 			free(tmp);
 		}
 
-		tmp = expect_alloc_fail(realloc(p, SIZE_MAX));
+		tmp = expect_alloc_fail(realloc(p, RELOC_HIDE(SIZE_MAX, 0)));
 		free(tmp);
 
 	} else {
-- 
2.39.2



