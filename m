Delivery-date: Mon, 09 Feb 2026 19:12:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVk9-00AdWy-1s
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 19:12:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVk7-0006DL-Tu
	for lore@pengutronix.de; Mon, 09 Feb 2026 19:12:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v/9tkzn9YpqpWy3ekNEIT/3GwfZRltEnHKFhwO1VkDw=; b=kVNGQkKPI62aGGzAtUS6nTEd18
	uikWkBOWHMCJHws4YwDD2TXtOj4NJTJ31b7Jy28I74NEAq0uLaRhafJF8Pv5XMAKokrsAw3Xv0vRB
	69n4eBPy0i+0UHj038PPBkNsewBXfUXLlETNnwm6EKegRIYriSxbcF1hSqV3GGVO3ZId6caDlZU1F
	CvWO2HK0U2JQiIm5hyLHJPzzf5nahHKrDyRDxbePagMmmbWgA/+6ZRQXBsriih/7bdof++ktWdI4P
	4NO9aRD0YXKBlaI5zN1rX2qqce+/HYVUfaOb8rowB9d+II5+1341kVQ+69oCKo2IFsxrb4PqWjtiu
	7J2CcmJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjg-0000000FqDY-2pEy;
	Mon, 09 Feb 2026 18:11:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjb-0000000Fq8r-1U0B
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 18:11:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-0005r0-Sa; Mon, 09 Feb 2026 19:11:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVja-004vo2-10;
	Mon, 09 Feb 2026 19:11:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-00000008UJ4-2HH6;
	Mon, 09 Feb 2026 19:11:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 19:10:47 +0100
Message-ID: <20260209181138.2023065-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
References: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_101143_401396_7BE5768D 
X-CRM114-Status: GOOD (  15.30  )
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
Subject: [PATCH v2 08/13] resource: implement resize_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

resize_region allows enlarging or reducing a region end while checking
for conflicts. This is less effort than removing a region and
reallocating it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/resource.c      | 62 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/ioport.h |  2 ++
 2 files changed, 64 insertions(+)

diff --git a/common/resource.c b/common/resource.c
index e391d268e0bb..131f5e190c58 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -92,6 +92,68 @@ struct resource *__request_region(struct resource *parent,
 	return new;
 }
 
+/**
+ * resize_region - change the size of an allocated resource region
+ * @res: resource to resize (may be NULL for no-op)
+ * @size: new desired size in bytes (must be non-zero)
+ *
+ * Shrinking checks that no child extends past the new end.
+ * Growing checks that the new end does not overflow, stays within
+ * the parent region and does not collide with the next sibling.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int resize_region(struct resource *res, resource_size_t size)
+{
+	struct resource *parent;
+	struct resource *next;
+	resource_size_t newend;
+
+	if (!res)
+		return 0;
+	if (!size)
+		return -EINVAL;
+
+	if (size == resource_size(res))
+		return 0;
+
+	if (size < resource_size(res)) {
+		struct resource *last;
+
+		last = list_last_entry_or_null(&res->children,
+					       struct resource, sibling);
+		if (last && last->end > res->start + size - 1)
+			return -EBUSY;
+		res->end = res->start + size - 1;
+		return 0;
+	}
+
+	parent = res->parent;
+	if (!parent)
+		return -EINVAL;
+
+	if (check_add_overflow(res->start, size - 1, &newend))
+		return -EINVAL;
+
+	if (newend > parent->end)
+		return -EINVAL;
+
+	/*
+	 * parent->children is the list_head that anchors the ordered list of
+	 * children. If res is not the last entry, the immediate next entry is
+	 * the only sibling we must check.
+	 */
+	if (res->sibling.next != &parent->children) {
+		next = list_next_entry(res, sibling);
+
+		if (newend >= next->start)
+			return -EBUSY;
+	}
+
+	res->end = newend;
+	return 0;
+}
+
 /*
  * release a region previously requested with request_*_region
  */
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 5baae0dae10a..8f9191d1c6be 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -272,6 +272,8 @@ static inline void resource_set_range(struct resource *res,
 	resource_set_size(res, size);
 }
 
+int resize_region(struct resource *res, resource_size_t size);
+
 #define region_is_gap(region) ((region)->flags & IORESOURCE_UNSET)
 
 struct resource *resource_iter_first(struct resource *current, struct resource *gap);
-- 
2.47.3



