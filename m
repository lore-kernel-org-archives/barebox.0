Delivery-date: Mon, 15 Aug 2022 17:43:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcFC-006bK5-4Z
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 17:43:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcFC-0000ph-6P
	for lore@pengutronix.de; Mon, 15 Aug 2022 17:43:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HUjFLEySr/CkwFd8JEtOTBpnVHp4vSVmKxXNd4IgEEM=; b=FuFtep3lkwiSpWB/8Z28b5Sg2C
	4hMuPcBmC1QZu2q/TVACD6hR6KNEj2qIKpBPYK5zBQA6Pz7NjxHWbS8xOq1rsIkqmLVaTrruCQ0eA
	MYUiF9hZI6b35esARtskBAP0ormnndc51lgeswKNhS9Jr4szb5fbgbIFCAvFKdey45NaF5xNjvKm+
	PsNzPBZgoO7bb8nmpJL3KzT0gSEgIf0O9MY7omllol/7oVAA26dT95bfZTuPDKMRAKPcmzFNXqxoe
	sLwiTuStscgfPZuV/AA11nze4QmPk7EI1QcrTZyNZ50sMh2Ebfl4OCWFSIVbPPQJkkKmEd9XWspLj
	TAzsF8Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNcDB-000zXa-GJ; Mon, 15 Aug 2022 15:41:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNc4i-000uD4-CR
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 15:32:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4c-0007Av-6q; Mon, 15 Aug 2022 17:32:14 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Z-003wmv-7L; Mon, 15 Aug 2022 17:32:13 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Z-00AAGA-Eh; Mon, 15 Aug 2022 17:32:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 17:32:01 +0200
Message-Id: <20220815153209.2422662-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
References: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_083220_609728_B3FD5C1C 
X-CRM114-Status: GOOD (  11.50  )
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
Subject: [PATCH 02/10] common: allow requesting SDRAM regions with custom flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that __request_region accepts a flag parameter, define
__request_sdram_region, which also accepts a flag parameter and passes
it through. The default flags for request_sdram_region() will be
IORESOURCE_MEM as that ensures resource_contains behaves correctly when
comparing against another memory resource.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c   |  8 +++++---
 common/resource.c |  2 +-
 include/memory.h  | 13 +++++++++++--
 3 files changed, 17 insertions(+), 6 deletions(-)

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
diff --git a/common/resource.c b/common/resource.c
index 81f337668ef1..8678609229ab 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -73,7 +73,7 @@ struct resource *__request_region(struct resource *parent,
 	}
 
 ok:
-	debug("%s ok: 0x%08llx:0x%08llx flags=%u\n", __func__,
+	debug("%s ok: 0x%08llx:0x%08llx flags=0x%x\n", __func__,
 			(unsigned long long)start,
 			(unsigned long long)end, flags);
 
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



