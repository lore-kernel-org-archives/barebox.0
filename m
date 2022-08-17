Delivery-date: Wed, 17 Aug 2022 13:45:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHTt-001pcn-I5
	for lore@lore.pengutronix.de; Wed, 17 Aug 2022 13:45:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHTp-00020d-VI
	for lore@pengutronix.de; Wed, 17 Aug 2022 13:45:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nM+ofS3S5fdRc7wY1g5tYGv9O4P3zGnK2YEM9mRJR0g=; b=F812mD5O6lcL5jFaYL7GAz3RZS
	6DHPiPaei8SNCL5fNhxkmItm4eWDNYGETBIXPghTByGE3+NRJZY+QOmgNHhKknJz76FW0uYueDZZ8
	n1rOADd/ANcgn0NqXxsE1sBspZOfY2nHVqeQqXCOQ4Fp0VXVGAd9T1CDDmf6FlxV6iawjHtMyJURY
	FXyhSlyx0NRU2pcodOsEpSNH31TplPvjzWRR9wENbmfYZHLKGzl6eQeKV6TGZKpY3JwtBcDpxJWjJ
	+jANeY21OZz67qZGtYQgg7ckts7WigYo/DShy4Tdoqk3ML1hQ1bdLf80UdbZ6QOgDhjgda5kCcvrX
	xYDo9r4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHST-001Ze1-12; Wed, 17 Aug 2022 11:43:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHRp-001ZAE-Us
	for barebox@lists.infradead.org; Wed, 17 Aug 2022 11:43:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRg-0001OC-Js; Wed, 17 Aug 2022 13:42:48 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRf-000IqQ-RR; Wed, 17 Aug 2022 13:42:47 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRd-007dCg-K9; Wed, 17 Aug 2022 13:42:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Aug 2022 13:42:35 +0200
Message-Id: <20220817114244.1810531-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
References: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_044258_142569_48E05182 
X-CRM114-Status: GOOD (  13.06  )
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
Subject: [PATCH v2 01/10] resource: add flags parameter to __request_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

__request_region allocates a child resource within the parent resource,
which so far always had a flags field of zero. Later commits will
use the flags field to mark reserved SDRAM regions, so MMU init code can
take that into consideration and ensure that CPU doesn't speculate into
these regions and risk aborts. Prepare for this by giving
__request_region a flags parameter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c        |  4 ++--
 common/resource.c      | 13 +++++++------
 include/linux/ioport.h |  4 ++--
 3 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index fd782c7f24f6..03fec1f1eb0e 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -208,8 +208,8 @@ struct resource *request_sdram_region(const char *name, resource_size_t start,
 	for_each_memory_bank(bank) {
 		struct resource *res;
 
-		res = __request_region(bank->res, name, start,
-				       start + size - 1);
+		res = __request_region(bank->res, start, start + size - 1,
+				       name, 0);
 		if (!IS_ERR(res))
 			return res;
 	}
diff --git a/common/resource.c b/common/resource.c
index f96cb94b5074..8678609229ab 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -28,8 +28,8 @@ static int init_resource(struct resource *res, const char *name)
  * resources.
  */
 struct resource *__request_region(struct resource *parent,
-		const char *name, resource_size_t start,
-		resource_size_t end)
+				  resource_size_t start, resource_size_t end,
+				  const char *name, unsigned flags)
 {
 	struct resource *r, *new;
 
@@ -73,15 +73,16 @@ struct resource *__request_region(struct resource *parent,
 	}
 
 ok:
-	debug("%s ok: 0x%08llx:0x%08llx\n", __func__,
+	debug("%s ok: 0x%08llx:0x%08llx flags=0x%x\n", __func__,
 			(unsigned long long)start,
-			(unsigned long long)end);
+			(unsigned long long)end, flags);
 
 	new = xzalloc(sizeof(*new));
 	init_resource(new, name);
 	new->start = start;
 	new->end = end;
 	new->parent = parent;
+	new->flags = flags;
 	list_add_tail(&new->sibling, &r->sibling);
 
 	return new;
@@ -138,7 +139,7 @@ struct resource iomem_resource = {
 struct resource *request_iomem_region(const char *name,
 		resource_size_t start, resource_size_t end)
 {
-	return __request_region(&iomem_resource, name, start, end);
+	return __request_region(&iomem_resource, start, end, name, 0);
 }
 
 /* The root resource for the whole io-mapped io space */
@@ -157,7 +158,7 @@ struct resource *request_ioport_region(const char *name,
 {
 	struct resource *res;
 
-	res = __request_region(&ioport_resource, name, start, end);
+	res = __request_region(&ioport_resource, start, end, name, 0);
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index ee9587ba0feb..c6328e9a7fc2 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -155,8 +155,8 @@ struct resource *request_ioport_region(const char *name,
 		resource_size_t start, resource_size_t end);
 
 struct resource *__request_region(struct resource *parent,
-		const char *name, resource_size_t end,
-		resource_size_t size);
+				  resource_size_t start, resource_size_t end,
+				  const char *name, unsigned flags);
 
 int __merge_regions(const char *name,
 		struct resource *resa, struct resource *resb);
-- 
2.30.2



