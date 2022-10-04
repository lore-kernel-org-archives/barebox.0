Delivery-date: Tue, 04 Oct 2022 17:56:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHz-005iFi-At
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 17:56:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHx-0006bJ-Jd
	for lore@pengutronix.de; Tue, 04 Oct 2022 17:56:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3iKZqdwOcB0bg/PZcIz0fMQGdmAljfk7W4S8j0213yI=; b=eKbSFdLUvuImqTMY5BdPvS5tke
	FgKH27TgRoP4FCEBn/dXyLeNC53PbQzQWIZreuMubAm1+UHxaSvaJvJrDUr/LYWjP4xc0v2KMiM15
	Eho0j2h0QaH5uvBQGm6Kqpnr6ViKa2A5NNNmwDJg4ugirKb7HyQSjjP1G6On1DBMvB587Rr+RStfp
	wwCn8k+co6lTQ/Mq5zOFQg4yKJxofDIqj94MqADdzqrVi0rNyRYa8vAlvTyWe9Ji+KrbdBvkAALoQ
	aAFjaFHwh8VdXZU4U2LYJAia/LZ1JnjlXFinzNnoP4jbBhrWSJeBa4NXksMpupd/ERvBYg4ENk7Jw
	0TfUvAWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGj-00A84j-JJ; Tue, 04 Oct 2022 15:55:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGE-00A7pC-13
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 15:55:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG4-0005gY-O0; Tue, 04 Oct 2022 17:55:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG4-004ala-UQ; Tue, 04 Oct 2022 17:54:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG2-00EW8S-CW; Tue, 04 Oct 2022 17:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Oct 2022 17:54:07 +0200
Message-Id: <20221004155405.3458479-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_085510_100919_B5325B48 
X-CRM114-Status: GOOD (  11.48  )
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
Subject: [PATCH 9/9] test: self: malloc: fix memory leaks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

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
2.30.2



