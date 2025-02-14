Delivery-date: Fri, 14 Feb 2025 11:13:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tishn-002E5t-1q
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:13:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tishl-0007ue-1y
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:13:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gC9ZJAyxM8EqWCJw5VSeVME7x4ylNR2HvUfEnLiDP1k=; b=0F4dMg3lCkVqtG53vnU6MGoznG
	K7zgiP70nUgeb5kPBw5Cywk8NBecL9+3TTVTm1ULVwaFA9V8a0zSyPDdCvNq+KvyONhjx3jmkMY+g
	bJ9CTldmDAwE/F6k6969oze8Eg7OCY1w04yMZ8dmr4Va1WK3rR2//eEspGBRqKAR7s2jr4bSyFgFH
	/YbhrEXOP8hesj95lfo+oWI6PZtBHcUeuAg9dwn0xkWXQ6sUbE8tcWbAwpi02JobN/24Q+KAzJTQU
	ZY42fKZxA5f0kO0QygwWWegQ8QSmo9uiSbh6MrG2i6qFjUi68ekJ9R1cFzfFZWsOrScgnq9a6Axxw
	2nzbOD8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tishJ-0000000ESka-16mk;
	Fri, 14 Feb 2025 10:13:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisg7-0000000ESX6-1om5
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:12:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisg3-0007Z5-I6; Fri, 14 Feb 2025 11:12:07 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisg3-000thk-1A;
	Fri, 14 Feb 2025 11:12:07 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisg3-00C4ID-0t;
	Fri, 14 Feb 2025 11:12:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:12:04 +0100
Message-Id: <20250214101206.2876051-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_021211_627543_BAB6E445 
X-CRM114-Status: GOOD (  28.33  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] lib: add scatterlist abstraction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With barebox using 1:1 memory mapping whenever possible, scatter-gather
DMA seems not that important. Many Linux APIs use struct scatterlist
as parameters though, so adding a basic support in barebox will make
easier to port these drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/scatterlist.h | 138 +++++++++++++++++++++++++++++++++++
 lib/Makefile                |   1 +
 lib/scatterlist.c           | 142 ++++++++++++++++++++++++++++++++++++
 3 files changed, 281 insertions(+)
 create mode 100644 include/linux/scatterlist.h
 create mode 100644 lib/scatterlist.c

diff --git a/include/linux/scatterlist.h b/include/linux/scatterlist.h
new file mode 100644
index 000000000000..4ac164b6d3f7
--- /dev/null
+++ b/include/linux/scatterlist.h
@@ -0,0 +1,138 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_SCATTERLIST_H
+#define _LINUX_SCATTERLIST_H
+
+#include <linux/types.h>
+#include <linux/string.h>
+#include <linux/bug.h>
+#include <asm/io.h>
+
+
+struct scatterlist {
+	void		*address;
+	unsigned int	flags:2;
+#define SG_CHAIN	0x01UL
+#define SG_END		0x02UL
+	unsigned int	length:30;
+};
+
+struct sg_table {
+	struct scatterlist *sgl;	/* the list */
+	unsigned int nents;		/* number of mapped entries */
+	unsigned int orig_nents;	/* original size of list */
+};
+
+/*
+ * Notes on SG table design.
+ *
+ * We use the the scatterlist struct to place the address AND encode
+ * information about the sg table as well. The two flag bits are reserved
+ * for this information.
+ *
+ * If bit 0 is set, then the address member is a pointer to the next sg
+ * table list. Otherwise the next entry is at sg + 1.
+ *
+ * If bit 1 is set, then this sg entry is the last element in a list.
+ *
+ * See sg_next().
+ *
+ */
+
+static inline unsigned int __sg_flags(struct scatterlist *sg)
+{
+	return sg->flags;
+}
+
+static inline bool sg_is_chain(struct scatterlist *sg)
+{
+	return __sg_flags(sg) & SG_CHAIN;
+}
+
+static inline bool sg_is_last(struct scatterlist *sg)
+{
+	return __sg_flags(sg) & SG_END;
+}
+
+static inline struct scatterlist *sg_chain_ptr(struct scatterlist *sg)
+{
+	return sg->address;
+}
+
+int sg_nents(struct scatterlist *sg);
+int sg_nents_for_len(struct scatterlist *sg, u64 len);
+
+/**
+ * sg_set_buf - Set sg entry to point at given data
+ * @sg:		 SG entry
+ * @buf:	 Data
+ * @buflen:	 Data length
+ *
+ **/
+static inline void sg_set_buf(struct scatterlist *sg, const void *buf,
+			      unsigned int buflen)
+{
+	sg->address = (void *)buf;
+	sg->length = buflen;
+}
+
+/*
+ * Loop over each sg element, following the pointer to a new list if necessary
+ */
+#define for_each_sg(sglist, sg, nr, __i)	\
+	for (__i = 0, sg = (sglist); __i < (nr); __i++, sg = sg_next(sg))
+
+/*
+ * Loop over each sg element in the given sg_table object.
+ */
+#define for_each_sgtable_sg(sgt, sg, i)		\
+	for_each_sg((sgt)->sgl, sg, (sgt)->orig_nents, i)
+
+/**
+ * sg_mark_end - Mark the end of the scatterlist
+ * @sg:		 SG entryScatterlist
+ *
+ * Description:
+ *   Marks the passed in sg entry as the termination point for the sg
+ *   table. A call to sg_next() on this entry will return NULL.
+ *
+ **/
+static inline void sg_mark_end(struct scatterlist *sg)
+{
+	/*
+	 * Set termination bit, clear potential chain bit
+	 */
+	sg->flags |= SG_END;
+	sg->flags &= ~SG_CHAIN;
+}
+
+/**
+ * sg_unmark_end - Undo setting the end of the scatterlist
+ * @sg:		 SG entryScatterlist
+ *
+ * Description:
+ *   Removes the termination marker from the given entry of the scatterlist.
+ *
+ **/
+static inline void sg_unmark_end(struct scatterlist *sg)
+{
+	sg->flags &= ~SG_END;
+}
+
+/**
+ * sg_init_marker - Initialize markers in sg table
+ * @sgl:	   The SG table
+ * @nents:	   Number of entries in table
+ *
+ **/
+static inline void sg_init_marker(struct scatterlist *sgl,
+				  unsigned int nents)
+{
+	sg_mark_end(&sgl[nents - 1]);
+}
+
+struct scatterlist *sg_next(struct scatterlist *);
+struct scatterlist *sg_last(struct scatterlist *s, unsigned int);
+void sg_init_table(struct scatterlist *, unsigned int);
+void sg_init_one(struct scatterlist *, const void *, unsigned int);
+
+#endif /* _LINUX_SCATTERLIST_H */
diff --git a/lib/Makefile b/lib/Makefile
index 46b42146cbc9..4e75f2467ac1 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_FIP)	+= fip.o tbbr_config.o
 obj-$(CONFIG_JSMN)	+= jsmn.o
 obj-$(CONFIG_BLOBGEN)	+= blobgen.o
 obj-y			+= stringlist.o
+obj-y			+= scatterlist.o
 obj-y			+= cmdlinepart.o
 obj-y			+= recursive_action.o
 obj-y			+= make_directory.o
diff --git a/lib/scatterlist.c b/lib/scatterlist.c
new file mode 100644
index 000000000000..f7b06013a552
--- /dev/null
+++ b/lib/scatterlist.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2007 Jens Axboe <jens.axboe@oracle.com>
+ *
+ * Scatterlist handling helpers.
+ */
+
+#include <linux/export.h>
+#include <linux/scatterlist.h>
+#include <linux/errno.h>
+
+/**
+ * sg_next - return the next scatterlist entry in a list
+ * @sg:		The current sg entry
+ *
+ * Description:
+ *   Usually the next entry will be @sg@ + 1, but if this sg element is part
+ *   of a chained scatterlist, it could jump to the start of a new
+ *   scatterlist array.
+ *
+ **/
+struct scatterlist *sg_next(struct scatterlist *sg)
+{
+	if (sg_is_last(sg))
+		return NULL;
+
+	sg++;
+	if (unlikely(sg_is_chain(sg)))
+		sg = sg_chain_ptr(sg);
+
+	return sg;
+}
+EXPORT_SYMBOL(sg_next);
+
+/**
+ * sg_nents - return total count of entries in scatterlist
+ * @sg:		The scatterlist
+ *
+ * Description:
+ * Allows to know how many entries are in sg, taking into account
+ * chaining as well
+ *
+ **/
+int sg_nents(struct scatterlist *sg)
+{
+	int nents;
+	for (nents = 0; sg; sg = sg_next(sg))
+		nents++;
+	return nents;
+}
+EXPORT_SYMBOL(sg_nents);
+
+/**
+ * sg_nents_for_len - return total count of entries in scatterlist
+ *                    needed to satisfy the supplied length
+ * @sg:		The scatterlist
+ * @len:	The total required length
+ *
+ * Description:
+ * Determines the number of entries in sg that are required to meet
+ * the supplied length, taking into account chaining as well
+ *
+ * Returns:
+ *   the number of sg entries needed, negative error on failure
+ *
+ **/
+int sg_nents_for_len(struct scatterlist *sg, u64 len)
+{
+	int nents;
+	u64 total;
+
+	if (!len)
+		return 0;
+
+	for (nents = 0, total = 0; sg; sg = sg_next(sg)) {
+		nents++;
+		total += sg->length;
+		if (total >= len)
+			return nents;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL(sg_nents_for_len);
+
+/**
+ * sg_last - return the last scatterlist entry in a list
+ * @sgl:	First entry in the scatterlist
+ * @nents:	Number of entries in the scatterlist
+ *
+ * Description:
+ *   Should only be used casually, it (currently) scans the entire list
+ *   to get the last entry.
+ *
+ *   Note that the @sgl@ pointer passed in need not be the first one,
+ *   the important bit is that @nents@ denotes the number of entries that
+ *   exist from @sgl@.
+ *
+ **/
+struct scatterlist *sg_last(struct scatterlist *sgl, unsigned int nents)
+{
+	struct scatterlist *sg, *ret = NULL;
+	unsigned int i;
+
+	for_each_sg(sgl, sg, nents, i)
+		ret = sg;
+
+	BUG_ON(!sg_is_last(ret));
+	return ret;
+}
+EXPORT_SYMBOL(sg_last);
+
+/**
+ * sg_init_table - Initialize SG table
+ * @sgl:	   The SG table
+ * @nents:	   Number of entries in table
+ *
+ * Notes:
+ *   If this is part of a chained sg table, sg_mark_end() should be
+ *   used only on the last table part.
+ *
+ **/
+void sg_init_table(struct scatterlist *sgl, unsigned int nents)
+{
+	memset(sgl, 0, sizeof(*sgl) * nents);
+	sg_init_marker(sgl, nents);
+}
+EXPORT_SYMBOL(sg_init_table);
+
+/**
+ * sg_init_one - Initialize a single entry sg list
+ * @sg:		 SG entry
+ * @buf:	 Virtual address for IO
+ * @buflen:	 IO length
+ *
+ **/
+void sg_init_one(struct scatterlist *sg, const void *buf, unsigned int buflen)
+{
+	sg_init_table(sg, 1);
+	sg_set_buf(sg, buf, buflen);
+}
+EXPORT_SYMBOL(sg_init_one);
-- 
2.39.5



