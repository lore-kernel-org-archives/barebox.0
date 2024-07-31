Delivery-date: Wed, 31 Jul 2024 10:05:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LN-004jWk-25
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 10:05:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LL-0004No-Vs
	for lore@pengutronix.de; Wed, 31 Jul 2024 10:05:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kG+g1omFhoevNKsZaEIkLDMrTeL9fx83igpkYxYcRPE=; b=GpQmwpifhzQobvUk9rVxQg+zY6
	vLijQeIHDlynY5WykaPEQ7dSLns72QngB1ZNW4vRr6yHVlwwMQ/upS1vttjjprpaGWWmOmh4bwlWu
	VlCh0MT0RB4RhiP2HN8Bc5M+XkKC6O1Fam9SNgAvgfef/D3tK/PWrp8UD1QIDqY4/REFoHdklqKf9
	wtjT2frkEQ81Fzz7/ruwdELSFVCamdtadf+Suq+Fmfy+IDOR5/arG+GzaSr7Da8J07LjUwcM3LqmD
	cqA3BdixURCG5CSLthRxb1YQH5j2VjP8TaVNMcaw8WV4ueTOi847DaZox2KkMFLuI1h80GMzssj9W
	msrPShtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kn-00000000F6j-1JCU;
	Wed, 31 Jul 2024 08:05:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ke-00000000F3S-2z5F
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 08:05:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-0003y6-EE; Wed, 31 Jul 2024 10:05:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-003Tfd-1S; Wed, 31 Jul 2024 10:05:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kc-001Wt2-34;
	Wed, 31 Jul 2024 10:05:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 10:05:02 +0200
Message-Id: <20240731080510.364706-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731080510.364706-1-a.fatoum@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_010512_963315_F39173B3 
X-CRM114-Status: GOOD (  17.25  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/10] cdev: factor out range identical/overlap check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

region_overlap_size introduced here was introduced before to <common.h>
in commit 60d2fe688e ("introduce region_overlap() function").

This was removed again in commit 04e2aa516e ("common.h: move and
rename lregion_overlap()") and commit 81ca755487 ("common.h: remove
unused region_overlap()") moved lregion_overlap into its the translation
unit of its single call site.

As we now have two users and will add a third, let's create a new
range.h header and move the definition there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch (Sascha)
---
 common/partitions.c | 16 ++++---------
 fs/devfs-core.c     | 19 ++-------------
 include/range.h     | 57 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 63 insertions(+), 29 deletions(-)
 create mode 100644 include/range.h

diff --git a/common/partitions.c b/common/partitions.c
index d46ed4080597..8e6bf16e73f1 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -16,6 +16,7 @@
 #include <filetype.h>
 #include <linux/err.h>
 #include <partitions.h>
+#include <range.h>
 
 static LIST_HEAD(partition_parser_list);
 
@@ -164,15 +165,6 @@ int partition_table_write(struct partition_desc *pdesc)
 	return pdesc->parser->write(pdesc);
 }
 
-static bool overlap(uint64_t s1, uint64_t e1, uint64_t s2, uint64_t e2)
-{
-	if (e1 < s2)
-		return false;
-	if (s1 > e2)
-		return false;
-	return true;
-}
-
 int partition_create(struct partition_desc *pdesc, const char *name,
 		     const char *fs_type, uint64_t lba_start, uint64_t lba_end)
 {
@@ -192,9 +184,9 @@ int partition_create(struct partition_desc *pdesc, const char *name,
 	}
 
 	list_for_each_entry(part, &pdesc->partitions, list) {
-		if (overlap(part->first_sec,
-				part->first_sec + part->size - 1,
-				lba_start, lba_end)) {
+		if (region_overlap_end(part->first_sec,
+				       part->first_sec + part->size - 1,
+				       lba_start, lba_end)) {
 			pr_err("new partition %llu-%llu overlaps with partition %s (%llu-%llu)\n",
 			       lba_start, lba_end, part->name, part->first_sec,
 				part->first_sec + part->size - 1);
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 2715193c6956..0bb363d0a9ff 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -25,6 +25,7 @@
 #include <linux/fs.h>
 #include <linux/mtd/mtd.h>
 #include <unistd.h>
+#include <range.h>
 #include <fs.h>
 
 LIST_HEAD(cdev_list);
@@ -433,22 +434,6 @@ int devfs_remove(struct cdev *cdev)
 	return 0;
 }
 
-static bool region_identical(loff_t starta, loff_t lena,
-			     loff_t startb, loff_t lenb)
-{
-	return starta == startb && lena == lenb;
-}
-
-static bool region_overlap(loff_t starta, loff_t lena,
-			   loff_t startb, loff_t lenb)
-{
-	if (starta + lena <= startb)
-		return 0;
-	if (startb + lenb <= starta)
-		return 0;
-	return 1;
-}
-
 /**
  * check_overlap() - check overlap with existing partitions
  * @cdev: parent cdev
@@ -482,7 +467,7 @@ static struct cdev *check_overlap(struct cdev *cdev, const char *name, loff_t of
 			goto identical;
 		}
 
-		if (region_overlap(cpart_offset, cpart->size, offset, size)) {
+		if (region_overlap_size(cpart_offset, cpart->size, offset, size)) {
 			ret = -EINVAL;
 			goto conflict;
 		}
diff --git a/include/range.h b/include/range.h
new file mode 100644
index 000000000000..f72849044d0b
--- /dev/null
+++ b/include/range.h
@@ -0,0 +1,57 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _RANGE_H__
+#define _RANGE_H__
+
+#include <linux/types.h>
+
+/**
+ * region_overlap_end - check whether a pair of [start, end] ranges overlap
+ *
+ * @starta: start of the first range
+ * @enda:   end of the first range (inclusive)
+ * @startb: start of the second range
+ * @endb:   end of the second range (inclusive)
+ */
+static inline bool region_overlap_end(u64 starta, u64 enda,
+				      u64 startb, u64 endb)
+{
+	if (enda < startb)
+		return false;
+	if (endb < starta)
+		return false;
+	return true;
+}
+
+/**
+ * region_overlap_end - check whether a pair of [start, end] ranges overlap
+ *
+ * @starta: start of the first range
+ * @lena:   length of the first range
+ * @startb: start of the second range
+ * @lenb:   length of the second range
+ */
+static inline bool region_overlap_size(u64 starta, u64 lena,
+				       u64 startb, u64 lenb)
+{
+	if (!lena || !lenb)
+		return false;
+
+	return region_overlap_end(starta, starta + lena - 1,
+				  startb, startb + lenb - 1);
+}
+
+/**
+ * region_overlap_end - check whether a pair of [start, end] ranges overlap
+ *
+ * @starta:  start of the first range
+ * @extenta: end or length of the first range
+ * @startb:  start of the first range
+ * @extentb: end or length of the second range
+ */
+static inline bool region_identical(u64 starta, u64 extenta,
+				    u64 startb, u64 extentb)
+{
+	return starta == startb && extenta == extentb;
+}
+
+#endif
-- 
2.39.2



