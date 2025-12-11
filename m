Delivery-date: Thu, 11 Dec 2025 21:53:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTney-00AQfs-08
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:53:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnex-0002pG-C2
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:53:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0anKDBVzOfmA9FHVpaGPmRPck/qKvD/vTiehUp+ngPg=; b=RCj5XzQRl1mReVlaLDPEyZW3ac
	qx8+T7Z6PwNH21RAj+uRqnGDk5bmsXjx5LImYxNSpQrGtoOp19nMzR7k1FJqo/h1rPWiNdAMgXQFX
	lZOlMTBjNLzVHRRvLYRRBIX8HMB7wc0cEqlcBEI69XD43HR5wA2eyLlAWwPlHNO8laqxvuy5Kdczm
	jw2wMWthTRVgfb+g4awkk7cuWnb5GBLUVYB+VS3NWtukSncyxyw3BSiFkAuJ7aQb6GNlsvuHy/IF8
	JQ8vUneTw1Mjt4BtYjJXTv9FPl+evTu8L7r06REJLpRfe4aDPQlAvC1QXwSxwA0IK2260C0sJA91X
	4veR6bAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneX-0000000HIAB-45aA;
	Thu, 11 Dec 2025 20:52:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneV-0000000HI7S-0aLE
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:52:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0002V9-IO; Thu, 11 Dec 2025 21:52:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-005BZ0-1E;
	Thu, 11 Dec 2025 21:52:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0000000CFbB-1BTn;
	Thu, 11 Dec 2025 21:52:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:50:03 +0100
Message-ID: <20251211205240.2836186-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
References: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_125243_180583_835121BC 
X-CRM114-Status: GOOD (  13.74  )
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
Subject: [PATCH 1/6] resource: implement resource walker
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently keep track of regions with the SDRAM by requesting a struct
resource from the memory bank. We will make additional use of that to
request memory handed out to EFI applications when barebox is being used
as EFI loader.

For that purpose, we need an easy way to walk the requested memory
region and especially the gaps between them.

Add a new resource_iter API for exactly this purpose.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/resource.c      | 112 +++++++++++++++++++++++++++++++++++++++++
 include/linux/ioport.h |   7 +++
 2 files changed, 119 insertions(+)

diff --git a/common/resource.c b/common/resource.c
index 152f5a502a1e..c8623b9c40a6 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -169,6 +169,118 @@ struct resource *request_ioport_region(const char *name,
 	return res;
 }
 
+static struct resource *
+resource_iter_gap(struct resource *parent, struct resource *before,
+		  struct resource *gap, struct resource *after)
+{
+	*gap = (struct resource) {};
+
+	gap->attrs = parent->attrs;
+	gap->type = parent->type;
+	gap->flags = IORESOURCE_UNSET | parent->flags;
+	gap->parent = parent;
+	INIT_LIST_HEAD(&gap->children);
+
+	if (before) {
+		gap->start = before->end + 1;
+		gap->sibling.prev = &before->sibling;
+	} else {
+		gap->start = parent->start;
+		gap->sibling.prev = &parent->children;
+	}
+
+	if (after) {
+		gap->end = after->start - 1;
+		gap->sibling.next = &after->sibling;
+	} else {
+		gap->end = parent->end;
+		gap->sibling.next = &parent->children;
+	}
+
+	return gap;
+}
+
+struct resource *
+resource_iter_first(struct resource *parent, struct resource *gap)
+{
+	struct resource *child;
+
+	if (!parent || region_is_gap(parent))
+		return NULL;
+
+	child = list_first_entry_or_null(&parent->children,
+					 struct resource, sibling);
+	if (!gap || (child && parent->start == child->start))
+		return child;
+
+	return resource_iter_gap(parent, NULL, gap, child);
+}
+
+struct resource *
+resource_iter_last(struct resource *parent, struct resource *gap)
+{
+	struct resource *child;
+
+	if (!parent || region_is_gap(parent))
+		return NULL;
+
+	child = list_last_entry_or_null(&parent->children,
+					struct resource, sibling);
+	if (!gap || (child && parent->end == child->end))
+		return child;
+
+	return resource_iter_gap(parent, child, gap, NULL);
+}
+
+struct resource *
+resource_iter_next(struct resource *current, struct resource *gap)
+{
+	struct resource *parent, *cursor, *next = NULL;
+
+	if (!current || !current->parent)
+		return NULL;
+
+	parent = current->parent;
+	if (current->end == parent->end)
+		return NULL;
+
+	cursor = current;
+	list_for_each_entry_continue(cursor, &parent->children, sibling) {
+		next = cursor;
+		break;
+	}
+
+	if (!gap || (next && resource_adjacent(current, next)))
+		return next;
+
+	return resource_iter_gap(parent, current, gap, next);
+}
+
+struct resource *
+resource_iter_prev(struct resource *current,
+		       struct resource *gap)
+{
+	struct resource *parent, *cursor, *prev = NULL;
+
+	if (!current || !current->parent)
+		return NULL;
+
+	parent = current->parent;
+	if (current->start == parent->start)
+		return NULL;
+
+	cursor = current;
+	list_for_each_entry_continue_reverse(cursor, &parent->children, sibling) {
+		prev = cursor;
+		break;
+	}
+
+	if (!gap || (prev && resource_adjacent(prev, current)))
+		return prev;
+
+	return resource_iter_gap(parent, prev, gap, current);
+}
+
 struct resource_entry *resource_list_create_entry(struct resource *res,
 						  size_t extra_size)
 {
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index e24984f7f722..1b5dfdcb373d 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -265,5 +265,12 @@ static inline void resource_set_range(struct resource *res,
 	resource_set_size(res, size);
 }
 
+#define region_is_gap(region) ((region)->flags & IORESOURCE_UNSET)
+
+struct resource *resource_iter_first(struct resource *current, struct resource *gap);
+struct resource *resource_iter_last(struct resource *current, struct resource *gap);
+struct resource *resource_iter_prev(struct resource *current, struct resource *gap);
+struct resource *resource_iter_next(struct resource *current, struct resource *gap);
+
 #endif /* __ASSEMBLY__ */
 #endif	/* _LINUX_IOPORT_H */
-- 
2.47.3



