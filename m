Delivery-date: Fri, 06 Jun 2025 10:59:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSut-004K6o-0l
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:59:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSup-0003gO-2d
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:59:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U0L8GbT6SPxBHhchVa1HBBCVtRKPMC1K28dueCkQoZk=; b=ZhhZ2TPF8K109+aZRIRnqw/nwR
	C1S5dbsU1EkFI9dhUFurd1T8N2nvr7WXpLy5AE9RsD+WsO29NCc5lM3IbuDYg1CidGgXB/5qkXN97
	uvRIq/vFARYJYuRcba1kkZzde+IKbLnJ8BYGVXhHGdUFLa49EKAEjaRRP8mQCrcPlGr54WRnhahBt
	dDWqyaEEDCfxVkoQ2bSxhw5EaZu5uAiryhNs6kTVOAW7Czc8FH7dTNLuU7uNHp0wRZmI4XCN4dc6h
	0J8SU2/g1IRALv0kfXtsNcZYEIgazWPzTLaC5i/D7E3Cq+OGQ9YkDrtsCHS4bftBNBOavUjyzmi7f
	QXlum6tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu5-0000000HSNe-38fl;
	Fri, 06 Jun 2025 08:58:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu0-0000000HSK8-3Kcw
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:58:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNStz-0002si-8m; Fri, 06 Jun 2025 10:58:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 10:58:06 +0200
Message-Id: <20250606085813.2183260-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606085813.2183260-1-a.fatoum@barebox.org>
References: <20250606085813.2183260-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_015816_986910_21880B0A 
X-CRM114-Status: GOOD (  22.87  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/10] lib: idr: implement Linux idr_alloc/_u32 API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

idr_alloc_one is a barebox invention that was adequate for the use case
in the ARM SCMI driver, but is not enough for incoming 9PFS support.

Reimplement it int terms of idr_alloc like in Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/firmware/arm_scmi/bus.c    |   5 +-
 drivers/firmware/arm_scmi/driver.c |  10 ++-
 include/linux/idr.h                |   5 +-
 lib/idr.c                          | 116 ++++++++++++++++++++++++-----
 test/self/idr.c                    |   5 ++
 5 files changed, 115 insertions(+), 26 deletions(-)

diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index 0d7c404ae5ed..cf58b7088281 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -114,8 +114,9 @@ static int scmi_protocol_device_request(const struct scmi_device_id *id_table)
 		}
 		INIT_LIST_HEAD(phead);
 
-		ret = idr_alloc_one(&scmi_requested_devices, (void *)phead,
-				id_table->protocol_id);
+		ret = idr_alloc(&scmi_requested_devices, (void *)phead,
+				id_table->protocol_id,
+				id_table->protocol_id + 1, GFP_KERNEL);
 		if (ret != id_table->protocol_id) {
 			pr_err("Failed to save SCMI device - ret:%d\n", ret);
 			kfree(rdev);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index e602f7a4404a..0048cc012223 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -173,7 +173,8 @@ int scmi_protocol_register(const struct scmi_protocol *proto)
 	}
 
 	spin_lock(&protocol_lock);
-	ret = idr_alloc_one(&scmi_protocols, (void *)proto, proto->id);
+	ret = idr_alloc(&scmi_protocols, (void *)proto, proto->id, proto->id + 1,
+			GFP_KERNEL);
 	spin_unlock(&protocol_lock);
 	if (ret != proto->id) {
 		pr_err("unable to allocate SCMI idr slot for 0x%x - err %d\n",
@@ -1090,7 +1091,7 @@ scmi_alloc_init_protocol_instance(struct scmi_info *info,
 	if (ret)
 		goto clean;
 
-	ret = idr_alloc_one(&info->protocols, pi, proto->id);
+	ret = idr_alloc(&info->protocols, pi, proto->id, proto->id + 1, GFP_KERNEL);
 	if (ret != proto->id)
 		goto clean;
 
@@ -1444,7 +1445,7 @@ static int scmi_chan_setup(struct scmi_info *info, struct device_node *of_node,
 	}
 
 idr_alloc:
-	ret = idr_alloc_one(idr, cinfo, prot_id);
+	ret = idr_alloc(idr, cinfo, prot_id, prot_id + 1, GFP_KERNEL);
 	if (ret != prot_id) {
 		dev_err(info->dev,
 			"unable to allocate SCMI idr slot err %d\n", ret);
@@ -1693,7 +1694,8 @@ static int scmi_probe(struct device *dev)
 		 * Save this valid DT protocol descriptor amongst
 		 * @active_protocols for this SCMI instance/
 		 */
-		ret = idr_alloc_one(&info->active_protocols, child, prot_id);
+		ret = idr_alloc(&info->active_protocols, child,
+				prot_id, prot_id + 1, GFP_KERNEL);
 		if (ret != prot_id) {
 			dev_err(dev, "SCMI protocol %d already activated. Skip\n",
 				prot_id);
diff --git a/include/linux/idr.h b/include/linux/idr.h
index 9939085d0e8d..8573a2b05ee6 100644
--- a/include/linux/idr.h
+++ b/include/linux/idr.h
@@ -14,6 +14,7 @@
 
 #include <errno.h>
 #include <linux/list.h>
+#include <linux/gfp.h>
 
 struct idr {
 	int			id;
@@ -58,7 +59,9 @@ static inline void *idr_find(struct idr *head, int id)
 	return idr ? idr->ptr : NULL;
 }
 
-int idr_alloc_one(struct idr *head, void *ptr, int start);
+int idr_alloc(struct idr *, void *ptr, int start, int end, gfp_t);
+int __must_check idr_alloc_u32(struct idr *, void *ptr, u32 *id,
+				unsigned long max, gfp_t);
 
 static inline void idr_init(struct idr *idr)
 {
diff --git a/lib/idr.c b/lib/idr.c
index a25e46b17b95..03bb6eadd533 100644
--- a/lib/idr.c
+++ b/lib/idr.c
@@ -6,8 +6,10 @@
 
 #include <errno.h>
 #include <linux/idr.h>
-#include <malloc.h>
+#include <linux/bug.h>
+#include <linux/limits.h>
 #include <linux/minmax.h>
+#include <xfuncs.h>
 
 struct idr *__idr_find(struct idr *head, int lookup_id)
 {
@@ -48,31 +50,107 @@ int idr_for_each(const struct idr *idr,
 	return 0;
 }
 
-static int idr_compare(struct list_head *a, struct list_head *b)
-{
-	int id_a = list_entry(a, struct idr, list)->id;
-	int id_b = list_entry(b, struct idr, list)->id;
-
-	return __compare3(id_a, id_b);
-}
-
-int idr_alloc_one(struct idr *head, void *ptr, int start)
+static struct idr *__idr_alloc(void *ptr, u32 start)
 {
 	struct idr *idr;
 
-	if (__idr_find(head, start))
-		return -EBUSY;
-
-	idr = malloc(sizeof(*idr));
-	if (!idr)
-		return -ENOMEM;
-
+	idr = xmalloc(sizeof(*idr));
 	idr->id = start;
 	idr->ptr = ptr;
 
-	list_add_sort(&idr->list, &head->list, idr_compare);
+	return idr;
+}
 
-	return start;
+/**
+ * idr_alloc_u32() - Allocate an ID.
+ * @head: IDR handle.
+ * @ptr: Pointer to be associated with the new ID.
+ * @nextid: Pointer to an ID.
+ * @max: The maximum ID to allocate (inclusive).
+ * @gfp: Memory allocation flags.
+ *
+ * Allocates an unused ID in the range specified by @nextid and @max.
+ * Note that @max is inclusive whereas the @end parameter to idr_alloc()
+ * is exclusive. The new ID is assigned to @nextid before the pointer
+ * is inserted into the IDR.
+ *
+ * Return: 0 if an ID was allocated, -ENOMEM if memory allocation failed,
+ * or -ENOSPC if no free IDs could be found.  If an error occurred,
+ * @nextid is unchanged.
+ */
+int idr_alloc_u32(struct idr *head, void *ptr, u32 *nextid,
+		  unsigned long max, gfp_t gfp)
+{
+	struct idr *idr, *prev, *next;
+
+	if (list_empty(&head->list)) {
+		idr = __idr_alloc(ptr, *nextid);
+		list_add_tail(&idr->list, &head->list);
+		return 0;
+	}
+
+	next = list_first_entry(&head->list, struct idr, list);
+	if (*nextid < next->id) {
+		idr = __idr_alloc(ptr, *nextid);
+		list_add(&idr->list, &head->list);
+		return 0;
+	}
+
+	prev = list_last_entry(&head->list, struct idr, list);
+	if (prev->id < max) {
+		*nextid = max_t(u32, prev->id + 1, *nextid);
+		idr = __idr_alloc(ptr, *nextid);
+		list_add_tail(&idr->list, &head->list);
+		return 0;
+	}
+
+	list_for_each_entry_safe(prev, next, &head->list, list) {
+		/* at the end of the list */
+		if (&next->list == &head->list)
+			break;
+
+		if (prev->id > max)
+			break;
+		if (next->id < *nextid)
+			continue;
+
+		*nextid = max_t(u32, prev->id + 1, *nextid);
+		idr = __idr_alloc(ptr, *nextid);
+		list_add(&idr->list, &prev->list);
+		return 0;
+	}
+
+	return -ENOSPC;
+}
+
+/**
+ * idr_alloc() - Allocate an ID.
+ * @head: IDR handle.
+ * @ptr: Pointer to be associated with the new ID.
+ * @start: The minimum ID (inclusive).
+ * @end: The maximum ID (exclusive).
+ * @gfp: Memory allocation flags.
+ *
+ * Allocates an unused ID in the range specified by @start and @end.  If
+ * @end is <= 0, it is treated as one larger than %INT_MAX.  This allows
+ * callers to use @start + N as @end as long as N is within integer range.
+ *
+ * Return: The newly allocated ID, -ENOMEM if memory allocation failed,
+ * or -ENOSPC if no free IDs could be found.
+ */
+int idr_alloc(struct idr *head, void *ptr, int start, int end, gfp_t gfp)
+{
+	u32 id = start;
+	int ret;
+
+	if (WARN_ON_ONCE(start < 0))
+		return -EINVAL;
+
+	ret = idr_alloc_u32(head, ptr, &id, end > 0 ? end - 1 : INT_MAX, gfp);
+	if (ret)
+		return ret;
+
+	return id;
 }
 
 static void __idr_remove(struct idr *idr)
diff --git a/test/self/idr.c b/test/self/idr.c
index bb902b041bb4..cc3217bb06e4 100644
--- a/test/self/idr.c
+++ b/test/self/idr.c
@@ -42,6 +42,11 @@ static int count_idr(int id, void *p, void *data)
 	return 0;
 }
 
+static inline int idr_alloc_one(struct idr *idr, void *ptr, int id)
+{
+	return idr_alloc_u32(idr, ptr, &id, id + 1, GFP_KERNEL) ?: id;
+}
+
 static void test_idr(void)
 {
 	void *ptr;
-- 
2.39.5



