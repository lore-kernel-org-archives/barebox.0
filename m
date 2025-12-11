Delivery-date: Thu, 11 Dec 2025 21:53:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnez-00AQgH-0Y
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:53:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTney-0002qi-F0
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:53:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yvo52tusEmooD+TacIy9RgRNIqcvF+P8mOkwbsJH2lU=; b=Rt9pKLiWPIR7WbT/RaZchLmk9A
	dlho8t+Ka0ESkNeBrYPlx+Ie1j8oOuXNRLM0dp1qp/0NQaK2bKVzIIhC2mo7CVGQMLW0RfEX1V9iM
	EJfmMNW+iiwgpXEi6jYeoz6UUe/ofCiKtdSWf8FsR2lktDQME+swaaLohShwtGmZL/1mLgfeOO8Vm
	J+Aje551YLUkciz8hvi2U6wPKmc3m5olsZyCXGxQlVijvpbWbhMYoc8vFykT2p7CoHJKAL1dHWYLG
	K9w6VwcVCFaTzBxNS3rBUQADt6bz7iZKond7RejXVXi7ATAUQIOO42Ls5FnHT6Tp+E8KJKX9OHs+j
	TCpc0Qlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneY-0000000HIB7-3WSm;
	Thu, 11 Dec 2025 20:52:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneV-0000000HI7Y-1Di4
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:52:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0002VZ-Qy; Thu, 11 Dec 2025 21:52:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-005BZG-1y;
	Thu, 11 Dec 2025 21:52:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0000000CFbB-2ANr;
	Thu, 11 Dec 2025 21:52:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:50:08 +0100
Message-ID: <20251211205240.2836186-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
References: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_125243_341491_8AB30216 
X-CRM114-Status: GOOD (  12.87  )
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
Subject: [PATCH 6/6] resource: implement release_region_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For EFI loader use, we will need the ability to free only part of a
previously requested region.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/resource.c      | 134 +++++++++++++++++++++++++++++++++++++++++
 include/linux/ioport.h |   5 ++
 2 files changed, 139 insertions(+)

diff --git a/common/resource.c b/common/resource.c
index c8623b9c40a6..078dc9f2ff2d 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -107,6 +107,140 @@ int release_region(struct resource *res)
 	return 0;
 }
 
+static int yes_free(struct resource *res, void *data)
+{
+	return 1;
+}
+
+/*
+ * release a region previously requested with request_*_region
+ */
+int release_region_range(struct resource *parent,
+			 resource_size_t start, resource_size_t size,
+			 int (*should_free)(struct resource *res, void *data),
+			 void *data)
+{
+	resource_size_t end = start + size - 1;
+	struct resource *r, *tmp;
+	int ret, err = 0;
+
+	if (end < parent->start || start > parent->end)
+		return 0;
+
+	if (!should_free)
+		should_free = yes_free;
+
+	list_for_each_entry_safe(r, tmp, &parent->children, sibling) {
+		if (end < r->start || start > r->end)
+			continue;
+
+		/*
+		 * CASE 1: fully covered
+		 *
+		 *   r:    |----------------|
+		 *   cut: |xxxxxxxxxxxxxxxxxxx|
+		 *
+		 *   remove fully
+		 */
+		if (start <= r->start && r->end <= end) {
+			ret = should_free(r, data);
+			if (ret < 0)
+				return ret;
+			if (ret == 0)
+				continue;
+
+			ret = release_region(r);
+			if (ret)
+				err = ret;
+			continue;
+		}
+
+		/*
+		 * CASE 2: trim head
+		 *
+		 *   r:    |----------------|
+		 *   cut: |xxxxx|
+		 *   new pieces:
+		 *       left  = removed
+		 *       right = end+1   .. r.end
+		 */
+		if (start <= r->start && r->end > end) {
+			ret = should_free(r, data);
+			if (ret < 0)
+				return ret;
+			if (ret == 0)
+				continue;
+
+			if (list_empty(&r->children))
+				r->start = end + 1;
+			else
+				err = -EBUSY;
+			continue;
+		}
+
+		/*
+		 * CASE 3: trim tail
+		 *
+		 *   r:    |----------------|
+		 *   cut:                |xxxxx|
+		 *   new pieces:
+		 *       left  = r.start .. start-1
+		 *       right = removed
+		 */
+		if (start > r->start && r->end <= end) {
+			ret = should_free(r, data);
+			if (ret < 0)
+				return ret;
+			if (ret == 0)
+				continue;
+
+			if (list_empty(&r->children))
+				r->end = start - 1;
+			else
+				err = -EBUSY;
+			continue;
+		}
+
+		/*
+		 * CASE 4: split
+		 *
+		 *   r:    |----------------|
+		 *   cut:       |xxxxx|
+		 *   new pieces:
+		 *       left  = r.start .. start-1
+		 *       right = end+1   .. r.end
+		 */
+		if (start > r->start && r->end > end) {
+			struct resource *right;
+
+			ret = should_free(r, data);
+			if (ret < 0)
+				return ret;
+			if (ret == 0)
+				continue;
+
+			if (!list_empty(&r->children)) {
+				err = -EBUSY;
+				continue;
+			}
+
+			right = xzalloc(sizeof(*right));
+			init_resource(right, r->name);
+
+			right->start = end + 1;
+			right->end = r->end;
+			right->parent = parent;
+			right->flags = r->flags;
+
+			r->end = start - 1;
+
+			list_add(&right->sibling, &r->sibling);
+			continue;
+		}
+	}
+
+	return WARN_ON(err);
+}
 
 /*
  * merge two adjacent sibling regions.
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 1d8686d51e81..2a190e96b1a7 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -209,6 +209,11 @@ int __merge_regions(const char *name,
 
 int release_region(struct resource *res);
 
+int release_region_range(struct resource *parent,
+			 resource_size_t start, resource_size_t size,
+			 int (*should_free)(struct resource *res, void *data),
+			 void *data);
+
 extern struct resource iomem_resource;
 extern struct resource ioport_resource;
 
-- 
2.47.3



