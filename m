Delivery-date: Wed, 17 Aug 2022 13:44:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHTe-001pZH-LH
	for lore@lore.pengutronix.de; Wed, 17 Aug 2022 13:44:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHTb-0001vT-2T
	for lore@pengutronix.de; Wed, 17 Aug 2022 13:44:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U8kzOwLI3SSnFXYunVxL0+okhF9gQUGnXe1nOUYI1Lc=; b=PNFL/b4oTjRdDEOmXCODtH4OfG
	junrq1cImV7MB/ZpcEfsvRIB18nNsX5CwrHJJNUnkYnRC1JAw+pZUV0ay4DY/cd6kEj/KNCZ98W71
	yMcJwkPJjKQCCbOBJ8EGgNKWtq24zQvsUm7Vot7/AAI1Clo7hvyBsu3MvIpMZzQNm5w7NOtp6feQc
	BHi7cbSPnK3KfIZOQAwdO+hU18wjltBs+f5+lkf0HihQMmybvsUqNW8XvfvmBRFPhFUBIaFJVNJ2K
	Lud8Z7GKZEgknA7QW6FGZA1ctytPXAyhNLiwkGKFp23KGJ5Mq50ERy0YoHsrb7J9IF2Z9uPzp7zev
	m4uPxL4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHS0-001ZIZ-9A; Wed, 17 Aug 2022 11:43:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHRp-001ZAk-RT
	for barebox@lists.infradead.org; Wed, 17 Aug 2022 11:43:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRg-0001OF-Q3; Wed, 17 Aug 2022 13:42:48 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRg-000IqZ-1t; Wed, 17 Aug 2022 13:42:48 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRd-007dCj-KV; Wed, 17 Aug 2022 13:42:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Aug 2022 13:42:36 +0200
Message-Id: <20220817114244.1810531-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
References: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_044257_935388_7B4925EE 
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 02/10] common: allow requesting SDRAM regions with custom flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that __request_region accepts a flag parameter, define
__request_sdram_region, which also accepts a flag parameter and passes
it through. The default flags for request_sdram_region() will be
IORESOURCE_MEM as that ensures resource_contains behaves correctly when
comparing against another memory resource.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c  |  8 +++++---
 include/memory.h | 13 +++++++++++--
 2 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 03fec1f1eb0e..347f83fd4cf8 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -200,16 +200,18 @@ mmu_initcall(add_mem_devices);
 /*
  * Request a region from the registered sdram
  */
-struct resource *request_sdram_region(const char *name, resource_size_t start,
-		resource_size_t size)
+struct resource *__request_sdram_region(const char *name, unsigned flags,
+					resource_size_t start, resource_size_t size)
 {
 	struct memory_bank *bank;
 
+	flags |= IORESOURCE_MEM;
+
 	for_each_memory_bank(bank) {
 		struct resource *res;
 
 		res = __request_region(bank->res, start, start + size - 1,
-				       name, 0);
+				       name, flags);
 		if (!IS_ERR(res))
 			return res;
 	}
diff --git a/include/memory.h b/include/memory.h
index c793bb51ed77..31da5d74d568 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -23,8 +23,17 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 
 #define for_each_memory_bank(mem)	list_for_each_entry(mem, &memory_banks, list)
 
-struct resource *request_sdram_region(const char *name, resource_size_t start,
-		resource_size_t size);
+struct resource *__request_sdram_region(const char *name, unsigned flags,
+					resource_size_t start, resource_size_t size);
+
+static inline struct resource *request_sdram_region(const char *name,
+						    resource_size_t start,
+						    resource_size_t size)
+{
+	/* IORESOURCE_MEM is implicit for all SDRAM regions */
+	return __request_sdram_region(name, 0, start, size);
+}
+
 int release_sdram_region(struct resource *res);
 
 void memory_bank_find_space(struct memory_bank *bank, resource_size_t *retstart,
-- 
2.30.2



