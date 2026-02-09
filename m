Delivery-date: Mon, 09 Feb 2026 19:12:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVkD-00AdY6-0j
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 19:12:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVkB-0006H1-17
	for lore@pengutronix.de; Mon, 09 Feb 2026 19:12:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mhp+TeHEswD+WOp+/KALJcKhS5tJxtTk0NmrItltn8w=; b=bz4qnN2aaPoAjbe05MCrlNPspG
	5U0Q6s9kCS17LL6YwuQUpltqfo3crY+WQoH2pdSrWAgCb9GWltvy1FsHbOD+b9CFQ+LezyQbY/p65
	HVUFeXVQ0QfRdIwl+FOK6W5YPqISdl1zHOnAcHazYrfailvKV3CM4npp79SByPJ0JwAxV/XKiSzgW
	CcDScyDzPIS/yzf7mKdj5I/9ST4WrAjPqgRi5w2Ac4CT9PNzASAsxDirBVhusN3e1UykE0z+sgIY/
	hBE8k33raPwDftamCxAZicvnAoG7W2clnrrwoz3GD29JxRgX7wtrUTCHH4Nao5TuScQRvwYXwprxI
	CowJwf/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjg-0000000FqD5-0G88;
	Mon, 09 Feb 2026 18:11:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjb-0000000Fq8k-16j0
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 18:11:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-0005qE-JS; Mon, 09 Feb 2026 19:11:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVja-004vnk-0D;
	Mon, 09 Feb 2026 19:11:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-00000008UJ4-1Hih;
	Mon, 09 Feb 2026 19:11:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 19:10:42 +0100
Message-ID: <20260209181138.2023065-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
References: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_101143_309823_FE4E2CD6 
X-CRM114-Status: GOOD (  16.96  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/13] resource: implement gap-aware lookup_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The incoming bootm rework hinges on being able to determine how much
total space there is for boot artifacts. For that purpose, add
memory_bank_lookup_region(), which will return the gap or the resource a
specified address resides in.

While at it, give the local variable two leading __, so it's less likely
to mask local variables.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c        | 25 +++++++++++++++++++++++++
 common/resource.c      | 33 +++++++++++++++++++++++++++++++++
 include/linux/ioport.h | 11 +++++++----
 include/memory.h       |  2 ++
 4 files changed, 67 insertions(+), 4 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 1c18c5b38710..b61df68e02dc 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -410,6 +410,31 @@ int memory_bank_first_find_space(resource_size_t *retstart,
 	return -ENOENT;
 }
 
+/**
+ * memory_bank_lookup_region - find the memory region containing a given address
+ * @addr: physical address to look up
+ * @gap: if non-NULL and addr is in a gap, the gap info is copied here
+ *
+ * Searches all memory banks for the region containing @addr. If @addr falls
+ * within a gap between allocated regions and @gap is provided, the gap
+ * boundaries are returned via @gap.
+ *
+ * Return: pointer to the resource containing @addr, @gap if in a gap,
+ *         or NULL if not found in any memory bank
+ */
+struct resource *memory_bank_lookup_region(resource_size_t addr, struct resource *gap)
+{
+	struct memory_bank *bank;
+
+	for_each_memory_bank(bank) {
+		if (addr < bank->res->start || bank->res->end < addr)
+			continue;
+		return lookup_region(bank->res, addr, gap);
+	}
+
+	return NULL;
+}
+
 #ifdef CONFIG_OFTREE
 
 static int of_memory_fixup(struct device_node *root, void *unused)
diff --git a/common/resource.c b/common/resource.c
index 33eb122f4668..e391d268e0bb 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -417,6 +417,39 @@ resource_iter_prev(struct resource *current,
 	return resource_iter_gap(parent, prev, gap, current);
 }
 
+/**
+ * lookup_region - find the region containing a given address
+ * @parent: parent resource to search within
+ * @addr: address to look up
+ * @gap: if non-NULL and addr is in a gap, the gap info is copied here
+ *
+ * Searches the children of @parent (and gaps between them) for the region
+ * containing @addr.
+ *
+ * Return: pointer to the resource containing @addr, or @gap if @addr is in
+ *         a gap and @gap is non-NULL, or NULL if @addr is not found or is
+ *         in a gap and @gap is NULL
+ */
+struct resource *lookup_region(struct resource *parent,
+			       resource_size_t addr, struct resource *gap)
+{
+	for_each_resource_region(parent, region) {
+		if (addr < region->start || region->end < addr)
+			continue;
+
+		if (!region_is_gap(region))
+			return region;
+		if (!gap)
+			return NULL;
+
+		*gap = *region;
+		INIT_LIST_HEAD(&gap->sibling);
+		return gap;
+	}
+
+	return NULL;
+}
+
 struct resource_entry *resource_list_create_entry(struct resource *res,
 						  size_t extra_size)
 {
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 20c72e1b6cbb..5baae0dae10a 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -279,14 +279,17 @@ struct resource *resource_iter_last(struct resource *current, struct resource *g
 struct resource *resource_iter_prev(struct resource *current, struct resource *gap);
 struct resource *resource_iter_next(struct resource *current, struct resource *gap);
 
+struct resource *lookup_region(struct resource *parent,
+			       resource_size_t addr, struct resource *gap);
+
 /**
  * for_each_resource_region - Iterate over child resources and gaps between them
  * @parent: parent resource
  * @region: pointer to child resource or gap
  */
 #define for_each_resource_region(parent, region) \
-	for (struct resource gap, *region = resource_iter_first((parent), &gap); \
-	     region; region = resource_iter_next(region, &gap))
+	for (struct resource __gap, *region = resource_iter_first((parent), &__gap); \
+	     region; region = resource_iter_next(region, &__gap))
 
 /**
  * for_each_resource_region_reverse - Reverse iterate over child resources and gaps between them
@@ -294,8 +297,8 @@ struct resource *resource_iter_next(struct resource *current, struct resource *g
  * @region: pointer to child resource or gap
  */
 #define for_each_resource_region_reverse(parent, region) \
-	for (struct resource gap, *region = resource_iter_last((parent), &gap); \
-	     region; region = resource_iter_prev(region, &gap))
+	for (struct resource __gap, *region = resource_iter_last((parent), &__gap); \
+	     region; region = resource_iter_prev(region, &__gap))
 
 #endif /* __ASSEMBLY__ */
 #endif	/* _LINUX_IOPORT_H */
diff --git a/include/memory.h b/include/memory.h
index 6b7ada641c9d..92483c39b0f4 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -97,6 +97,8 @@ void memory_bank_find_space(struct memory_bank *bank, resource_size_t *retstart,
 int memory_bank_first_find_space(resource_size_t *retstart,
 				 resource_size_t *retend);
 
+struct resource *memory_bank_lookup_region(resource_size_t addr, struct resource *gap);
+
 static inline u64 memory_sdram_size(unsigned int cols,
 				    unsigned int rows,
 				    unsigned int banks,
-- 
2.47.3



