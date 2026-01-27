Delivery-date: Tue, 27 Jan 2026 09:46:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeie-005q5p-0I
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 09:46:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeic-000117-Fb
	for lore@pengutronix.de; Tue, 27 Jan 2026 09:46:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eGuA+wWx+PHdnxw8OGMC/TuzIpKzu90uOzeeCiBAJBY=; b=b/nKxcsMi3nncY3BUvk6hPbUjO
	ynBtPYSAlW4jRJFZQkmUeJCiy3yV1cXO7V7p0EwDv66Et2Cyc3OkpCYL/qVxefAcwoRXNUwPaPv4T
	fzZF7m2s/VRekLIde939NG7C5hTCycwKB8CSBklvwY/my1O4xI/t36q/+rvxQI6jydwjdNPz22aLX
	/tOTHwCTY018NRlf5+7cY0S5v20B03w+ilqwyGaON2cLHFzXn51RR3+ncV+SZoOgA1Ib3ocAm0fQB
	jT4ImJu1kbA7+ARNgEjJHNBzkAY5VyHwc1klSJSOmuoXTF4PNlO4c8UvuwjozE14wR07mdYGq2Pkq
	jCP0zt+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkei3-0000000DrSS-0hPx;
	Tue, 27 Jan 2026 08:46:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehu-0000000DrDz-1lZJ
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 08:45:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000WX-Sj; Tue, 27 Jan 2026 09:45:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-002ig8-16;
	Tue, 27 Jan 2026 09:45:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-0000000FmwP-0NNm;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:19 +0100
Message-ID: <20260127084546.3751357-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_004554_847907_83370122 
X-CRM114-Status: GOOD (  13.47  )
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
Subject: [PATCH 09/15] resource: implement resize_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

resize_region allows enlarging or reducing a region end while checking
for conflicts. This is less effort than removing a region and
reallocating it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/resource.c      | 45 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/ioport.h |  2 ++
 2 files changed, 47 insertions(+)

diff --git a/common/resource.c b/common/resource.c
index e391d268e0bb..39867da63b69 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -92,6 +92,51 @@ struct resource *__request_region(struct resource *parent,
 	return new;
 }
 
+int resize_region(struct resource *res, resource_size_t size)
+{
+	struct resource *parent;
+	struct resource *next;
+	resource_size_t newend;
+
+	if (!res)
+		return 0;
+	if (!size)
+		return release_region(res);
+
+	if (size == resource_size(res))
+		return 0;
+
+	if (size < resource_size(res)) {
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



