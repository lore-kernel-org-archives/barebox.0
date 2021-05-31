Delivery-date: Mon, 31 May 2021 09:14:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7f-0002t6-6P
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:14:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7d-0003bD-Sk
	for lore@pengutronix.de; Mon, 31 May 2021 09:14:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPZxP6pKs05NW3eutegv012sHR9bipfOS5+G1dHnThM=; b=ueLQb/FreUujYk
	x2ZHtuA36hw4yy5TNCP/KnRyfpCvAHXW1ric5mXsUgKYzvnfXoGDbwzUcgjXdywKcPWnrDyXRON7B
	GSIbko8lptB6IELDs5WSwbPvOmhmKvEWefxK4DxATg5bHpw6WEaWaKFJrpwffoxhk1hXr2XWxVITn
	oibv/Y1k20MWUfUr0LockJLKFPN00aL5yln8V6HKLOTbWh76gTl0A1alSxJdhWHDjkICejkVmAjRN
	OAyCG4sChBAH/rGbxfHmov+2quJto8qPoNOkD0nomVp4uRxthH0Swb4jyONWWTAiNWf16LNWlL684
	ymZMjAtwbLy3Aks0JB8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc6T-00B7aO-FC; Mon, 31 May 2021 07:12:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc6M-00B7Xu-5W
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:12:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-0003Dq-OS; Mon, 31 May 2021 09:12:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-0007zy-Cn; Mon, 31 May 2021 09:12:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:12:35 +0200
Message-Id: <20210531071239.30653-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531071239.30653-1-a.fatoum@pengutronix.de>
References: <20210531071239.30653-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001242_279400_B8BD7151 
X-CRM114-Status: GOOD (  20.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] memory: fuse overlapping memory banks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some ARM subarchitectures read back RAM size from the SDRAM
controller and use the info to register memory banks.

If an overlapping memory region is already registered, e.g. via device
tree /memory, this second registration will fail.

This is especially annoying as it can regress after a device tree sync:

 - Kind soul updates upstream device tree to describe minimal available
   RAM across hardware variants
 - barebox PBL has enough info about the board to set up larger RAM size
   and relocates barebox to the end of the RAM
 - barebox proper starts with new device tree and is upset to
   find itself outside of registered memory

Account for this by growing the existing bank if a bank to be added
happens to overlap it. As a special case, if the existing bank
completely contains the new memory bank, the function is a no-op.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c        | 49 ++++++++++++++++++++++++++++++++++++++----
 common/resource.c      | 22 +++++++++++++++++++
 include/linux/ioport.h | 20 +++++++++++++++++
 3 files changed, 87 insertions(+), 4 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 612ed87168b5..95995bb6e310 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -111,15 +111,56 @@ void *sbrk(ptrdiff_t increment)
 
 LIST_HEAD(memory_banks);
 
+static int barebox_grow_memory_bank(struct memory_bank *bank, const char *name,
+				    const struct resource *newres)
+{
+	struct resource *res;
+	resource_size_t bank_end = bank->res->end;
+
+	if (newres->start < bank->start) {
+		res = request_iomem_region(name, newres->start, bank->start - 1);
+		if (IS_ERR(res))
+			return PTR_ERR(res);
+		__merge_regions(name, bank->res, res);
+	}
+
+	if (bank_end < newres->end) {
+		res = request_iomem_region(name, bank_end + 1, newres->end);
+		if (IS_ERR(res))
+			return PTR_ERR(res);
+		__merge_regions(name, bank->res, res);
+	}
+
+	bank->start = newres->start;
+	bank->size = resource_size(bank->res);
+
+	return 0;
+}
+
 int barebox_add_memory_bank(const char *name, resource_size_t start,
 				    resource_size_t size)
 {
-	struct memory_bank *bank = xzalloc(sizeof(*bank));
+	struct memory_bank *bank;
+	struct resource *res;
+	struct resource newres = {
+		.start = start,
+		.end = start + size - 1,
+	};
+
+	for_each_memory_bank(bank) {
+		if (resource_contains(bank->res, &newres))
+			return 0;
+		if (resource_contains(&newres, bank->res))
+			return barebox_grow_memory_bank(bank, name, &newres);
+	}
+
+	res = request_iomem_region(name, start, start + size - 1);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
 
-	bank->res = request_iomem_region(name, start, start + size - 1);
-	if (IS_ERR(bank->res))
-		return PTR_ERR(bank->res);
+	bank = xzalloc(sizeof(*bank));
 
+	bank->res = res;
 	bank->start = start;
 	bank->size = size;
 
diff --git a/common/resource.c b/common/resource.c
index ff4318a0d77f..f96cb94b5074 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -102,6 +102,28 @@ int release_region(struct resource *res)
 	return 0;
 }
 
+
+/*
+ * merge two adjacent sibling regions.
+ */
+int __merge_regions(const char *name,
+		struct resource *resa, struct resource *resb)
+{
+	if (!resource_adjacent(resa, resb))
+		return -EINVAL;
+
+	if (resa->start < resb->start)
+		resa->end = resb->end;
+	else
+		resa->start = resb->start;
+
+	free((char *)resa->name);
+	resa->name = xstrdup(name);
+	release_region(resb);
+
+	return 0;
+}
+
 /* The root resource for the whole memory-mapped io space */
 struct resource iomem_resource = {
 	.start = 0,
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 3d375a87400c..295ab4a49dff 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -130,6 +130,23 @@ static inline unsigned long resource_type(const struct resource *res)
 	return res->flags & IORESOURCE_TYPE_BITS;
 }
 
+/* True iff r1 completely contains r2 */
+static inline bool resource_contains(struct resource *r1, struct resource *r2)
+{
+	if (resource_type(r1) != resource_type(r2))
+		return false;
+	if (r1->flags & IORESOURCE_UNSET || r2->flags & IORESOURCE_UNSET)
+		return false;
+	return r1->start <= r2->start && r1->end >= r2->end;
+}
+
+/* True if r1 and r2 are adjacent to each other */
+static inline bool resource_adjacent(struct resource *r1, struct resource *r2)
+{
+	return (r1->end != ~(resource_size_t)0 && r1->end + 1 == r2->start) ||
+		(r2->end != ~(resource_size_t)0 && r2->end + 1 == r1->start);
+}
+
 struct resource *request_iomem_region(const char *name,
 		resource_size_t start, resource_size_t end);
 struct resource *request_ioport_region(const char *name,
@@ -139,6 +156,9 @@ struct resource *__request_region(struct resource *parent,
 		const char *name, resource_size_t end,
 		resource_size_t size);
 
+int __merge_regions(const char *name,
+		struct resource *resa, struct resource *resb);
+
 int release_region(struct resource *res);
 
 extern struct resource iomem_resource;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

