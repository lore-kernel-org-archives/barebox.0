Delivery-date: Wed, 22 Nov 2023 18:42:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rFY-004etQ-10
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:42:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rFX-0002yt-SB
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:42:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XO6O+FCJczyR9mcWwAQQMEul5Gb4aA6ejvsqZBjOTC4=; b=V3CGucX5cb6joaoe6uR1qDat/Y
	2i7N9W7pCR52O6GJJxyLvsxjHkJ8VJL8z6ZiLYKQIVR3klnqQpnBHH/PsUPMtTdpMjcQJbDMhdxq8
	UdLz/iEL3uQLBNEBWVCcn6/av3HnfnUMhxRElZWgySoOI/yOXa10JWw5OmoSDB/EQ5zyub9Pd69G8
	ijft0wygRFzVACz/QRDAosccCL0cT/BQ0AG2dNSLu5q7iyX9XPXvg7a+9ExZNEtY/KJ67ZjGRyHJm
	yHcHPEpqRUpPCAES06+raWxWvXunHKhn/cEgZMGU4OoMnc5xTi54PdO0C13QlbRLkaZfwoxQxZYF4
	vuglJ6kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rED-002hpB-17;
	Wed, 22 Nov 2023 17:41:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rE2-002hgk-1e
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:41:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rE1-0002As-5O; Wed, 22 Nov 2023 18:41:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rE0-00ArWm-PD; Wed, 22 Nov 2023 18:41:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-001lAy-0n;
	Wed, 22 Nov 2023 18:30:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:29:44 +0100
Message-Id: <20231122172951.376531-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122172951.376531-1-a.fatoum@pengutronix.de>
References: <20231122172951.376531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_094122_731147_2D14D498 
X-CRM114-Status: GOOD (  25.86  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 13/20] include: linux/idr.h: implement more Linux API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upcoming sync of SCMI with the kernel will start using IDR API, which we
lack in barebox, so let's retrofit it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - factor out longer IDR functions into separate source file
    instead of header
  - add IDR Kconfig symbol
  - fix implementation of idr_remove, idr_destory, idr_for_each_entry
  - keep IDR sorted
---
 drivers/firmware/Kconfig           |   1 +
 drivers/firmware/arm_scmi/driver.c |   4 +-
 include/linux/idr.h                |  61 ++++++++----------
 lib/Kconfig                        |   3 +
 lib/Makefile                       |   1 +
 lib/idr.c                          | 100 +++++++++++++++++++++++++++++
 6 files changed, 133 insertions(+), 37 deletions(-)
 create mode 100644 lib/idr.c

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index b4244fb1db6a..ee91b2b7fa6d 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -27,6 +27,7 @@ config ARM_SCMI_PROTOCOL
 	tristate "ARM System Control and Management Interface (SCMI) Message Protocol"
 	depends on ARM || COMPILE_TEST
 	depends on ARM_SMCCC
+	select IDR
 	help
 	  ARM System Control and Management Interface (SCMI) protocol is a
 	  set of operating system-independent software interfaces that are
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index dcd15528f394..98f672746527 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -988,7 +988,7 @@ static void scmi_create_protocol_devices(struct device_node *np,
  */
 int scmi_protocol_device_request(const struct scmi_device_id *id_table)
 {
-	int ret = 0;
+	int id, ret = 0;
 	struct list_head *phead = NULL;
 	struct scmi_requested_dev *rdev;
 	struct scmi_info *info;
@@ -1001,7 +1001,7 @@ int scmi_protocol_device_request(const struct scmi_device_id *id_table)
 	 * Search for the matching protocol rdev list and then search
 	 * of any existent equally named device...fails if any duplicate found.
 	 */
-	__idr_for_each_entry(&scmi_requested_devices, idr) {
+	idr_for_each_entry(&scmi_requested_devices, idr, id) {
 		struct list_head *head = idr->ptr;
 		if (!phead) {
 			/* A list found registered in the IDR is never empty */
diff --git a/include/linux/idr.h b/include/linux/idr.h
index 12494b1f01cb..9939085d0e8d 100644
--- a/include/linux/idr.h
+++ b/include/linux/idr.h
@@ -24,19 +24,31 @@ struct idr {
 #define DEFINE_IDR(name)	\
 	struct idr name = { .list = LIST_HEAD_INIT((name).list) }
 
-#define __idr_for_each_entry(head, idr) \
-	list_for_each_entry((idr), &(head)->list, list)
+/**
+ * idr_for_each_entry() - Iterate over an IDR's elements of a given type.
+ * @_idr: IDR handle.
+ * @_entry: The type * to use as cursor
+ * @_id: Entry ID.
+ *
+ * @_entry and @_id do not need to be initialized before the loop, and
+ * after normal termination @_entry is left with the value NULL.  This
+ * is convenient for a "not found" value.
+ */
+#define idr_for_each_entry(_idr, _entry, _id)				\
+	for (struct idr *iter =						\
+	     list_first_entry_or_null(&(_idr)->list, struct idr, list);	\
+	     (iter && iter != (_idr)) || (_entry = NULL);	\
+	     iter = list_next_entry(iter, list))			\
+	if ((_entry = iter->ptr, _id = iter->id, true))
 
-static inline struct idr *__idr_find(struct idr *head, int id)
+struct idr *__idr_find(struct idr *head, int lookup_id);
+
+int idr_for_each(const struct idr *idr,
+		 int (*fn)(int id, void *p, void *data), void *data);
+
+static inline int idr_is_empty(const struct idr *idr)
 {
-	struct idr *idr;
-
-	__idr_for_each_entry(head, idr) {
-		if (idr->id == id)
-			return idr;
-	}
-
-	return NULL;
+	return list_empty(&idr->list);
 }
 
 static inline void *idr_find(struct idr *head, int id)
@@ -46,36 +58,15 @@ static inline void *idr_find(struct idr *head, int id)
 	return idr ? idr->ptr : NULL;
 }
 
-static inline int idr_alloc_one(struct idr *head, void *ptr, int start)
-{
-	struct idr *idr;
-
-	if (__idr_find(head, start))
-		return -EBUSY;
-
-	idr = malloc(sizeof(*idr));
-	if (!idr)
-		return -ENOMEM;
-
-	idr->id = start;
-	idr->ptr = ptr;
-
-	list_add(&idr->list, &head->list);
-
-	return start;
-}
+int idr_alloc_one(struct idr *head, void *ptr, int start);
 
 static inline void idr_init(struct idr *idr)
 {
 	INIT_LIST_HEAD(&idr->list);
 }
 
-static inline void idr_remove(struct idr *head, int id)
-{
-	struct idr *idr = __idr_find(head, id);
+void idr_destroy(struct idr *idr);
 
-	list_del(&idr->list);
-	free(idr);
-}
+void idr_remove(struct idr *idr, int id);
 
 #endif /* __IDR_H__ */
diff --git a/lib/Kconfig b/lib/Kconfig
index fbc9fff8654c..71715ef6e8ad 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -226,6 +226,9 @@ config GENERIC_ALLOCATOR
 	help
 	  Support is curently limited to allocaing a complete mmio-sram at once.
 
+config IDR
+	bool
+
 endmenu
 
 source "lib/Kconfig.hardening"
diff --git a/lib/Makefile b/lib/Makefile
index 8fd950040381..38204c8273e5 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -28,6 +28,7 @@ obj-y			+= cmdlinepart.o
 obj-y			+= recursive_action.o
 obj-y			+= make_directory.o
 obj-y			+= math.o
+obj-$(CONFIG_IDR)	+= idr.o
 obj-y			+= math/
 obj-y			+= uuid.o
 obj-$(CONFIG_XXHASH)	+= xxhash.o
diff --git a/lib/idr.c b/lib/idr.c
new file mode 100644
index 000000000000..10a714ac03f0
--- /dev/null
+++ b/lib/idr.c
@@ -0,0 +1,100 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * 2002-10-18  written by Jim Houston jim.houston@ccur.com
+ *	Copyright (C) 2002 by Concurrent Computer Corporation
+ */
+
+#include <errno.h>
+#include <linux/idr.h>
+
+struct idr *__idr_find(struct idr *head, int lookup_id)
+{
+	struct idr *cursor;
+
+	list_for_each_entry(cursor, &head->list, list) {
+		if (cursor->id == lookup_id)
+			return cursor;
+	}
+
+	return NULL;
+}
+
+/**
+ * idr_for_each() - Iterate through all stored pointers.
+ * @idr: IDR handle.
+ * @fn: Function to be called for each pointer.
+ * @data: Data passed to callback function.
+ *
+ * The callback function will be called for each entry in @idr, passing
+ * the ID, the entry and @data.
+ *
+ * If @fn returns anything other than %0, the iteration stops and that
+ * value is returned from this function.
+ */
+int idr_for_each(const struct idr *idr,
+		 int (*fn)(int id, void *p, void *data), void *data)
+{
+	const struct idr *pos, *tmp;
+	int ret;
+
+	list_for_each_entry_safe(pos, tmp, &idr->list, list) {
+		ret = fn(pos->id, pos->ptr, data);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int idr_compare(struct list_head *a, struct list_head *b)
+{
+	int id_a = list_entry(a, struct idr, list)->id;
+	int id_b = list_entry(b, struct idr, list)->id;
+
+	return __compare3(id_a, id_b);
+}
+
+int idr_alloc_one(struct idr *head, void *ptr, int start)
+{
+	struct idr *idr;
+
+	if (__idr_find(head, start))
+		return -EBUSY;
+
+	idr = malloc(sizeof(*idr));
+	if (!idr)
+		return -ENOMEM;
+
+	idr->id = start;
+	idr->ptr = ptr;
+
+	list_add_sort(&idr->list, &head->list, idr_compare);
+
+	return start;
+}
+
+static void __idr_remove(struct idr *idr)
+{
+	list_del(&idr->list);
+	free(idr);
+}
+
+void idr_remove(struct idr *head, int id)
+{
+	struct idr *idr = __idr_find(head, id);
+	if (!idr)
+		return;
+
+	__idr_remove(idr);
+}
+
+void idr_destroy(struct idr *idr)
+{
+	struct idr *pos, *tmp;
+
+	if (!idr)
+		return;
+
+	list_for_each_entry_safe(pos, tmp, &idr->list, list)
+		__idr_remove(pos);
+}
-- 
2.39.2



