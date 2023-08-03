Delivery-date: Thu, 03 Aug 2023 12:52:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVwF-004wV2-0h
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:52:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVwA-0002H7-2G
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:52:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=goM2HM+ez+WhxRQYAQab4IDCqswk5jkkspA8syPUHcU=; b=NdoVCsp5kppDGT+dJWPEtQ9PSI
	Q+zuoOtbmMDdXpvVFlxzOVFqBghpGWGWvrpLdy9zEzWs3PYFT8Y4YAsyqrPooYW4j273nT8OJRdef
	AnygER2n8L5RIH53P1Q4/XFUdLOKBN3+rFHAXFlY6Y1gphnGLgIoZX/Le0QaBgVN/egmdAiHsxYa+
	ydgcOTGQR3e2NB8QyFnaV6PDhw9xZF5Yz2Q4aZrmi9U3ZWppsGFl2ryes4lOcLJJVzwgYgwD2kELu
	Wz7h7sT8BcR4UeCO6BMoqQmWTPSxB7bvjDbSdQAXEp6CiTt2YTAuoDJlcNlFyEqIBVpEWqKvDWGTS
	D6xfI74A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVux-007VGI-00;
	Thu, 03 Aug 2023 10:50:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuD-007UYm-2J
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000wr-Hh; Thu, 03 Aug 2023 12:50:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-000ovi-SB; Thu, 03 Aug 2023 12:50:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzL-JK; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:50 +0200
Message-Id: <20230803105003.4088205-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035009_769364_0AB8F51C 
X-CRM114-Status: GOOD (  22.22  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/22] lib: Add generic binary search function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add generic binary search function based on Linux-6.5-rc3.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/bsearch.h | 33 +++++++++++++++++++++++++++++++++
 include/linux/types.h   |  2 ++
 lib/Makefile            |  1 +
 lib/bsearch.c           | 34 ++++++++++++++++++++++++++++++++++
 4 files changed, 70 insertions(+)
 create mode 100644 include/linux/bsearch.h
 create mode 100644 lib/bsearch.c

diff --git a/include/linux/bsearch.h b/include/linux/bsearch.h
new file mode 100644
index 0000000000..26f6bd1f70
--- /dev/null
+++ b/include/linux/bsearch.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_BSEARCH_H
+#define _LINUX_BSEARCH_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+static __always_inline
+void *__inline_bsearch(const void *key, const void *base, size_t num, size_t size, cmp_func_t cmp)
+{
+	const char *pivot;
+	int result;
+
+	while (num > 0) {
+		pivot = base + (num >> 1) * size;
+		result = cmp(key, pivot);
+
+		if (result == 0)
+			return (void *)pivot;
+
+		if (result > 0) {
+			base = pivot + size;
+			num--;
+		}
+		num >>= 1;
+	}
+
+	return NULL;
+}
+
+extern void *bsearch(const void *key, const void *base, size_t num, size_t size, cmp_func_t cmp);
+
+#endif /* _LINUX_BSEARCH_H */
diff --git a/include/linux/types.h b/include/linux/types.h
index 5872bd8e38..aee9dfa87e 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -216,5 +216,7 @@ struct hlist_node {
 	struct hlist_node *next, **pprev;
 };
 
+typedef int (*cmp_func_t)(const void *a, const void *b);
+
 #endif
 #endif /* _LINUX_TYPES_H */
diff --git a/lib/Makefile b/lib/Makefile
index 921e5eedf4..7f308598cb 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -63,6 +63,7 @@ obj-y			+= wchar.o
 obj-y			+= libfile.o
 obj-y			+= bitmap.o
 obj-y			+= gcd.o
+obj-y			+= bsearch.o
 obj-pbl-y		+= hexdump.o
 obj-$(CONFIG_FONTS)	+= fonts/
 obj-$(CONFIG_BAREBOX_LOGO)     += logo/
diff --git a/lib/bsearch.c b/lib/bsearch.c
new file mode 100644
index 0000000000..0ddf304dae
--- /dev/null
+++ b/lib/bsearch.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * A generic implementation of binary search for the Linux kernel
+ *
+ * Copyright (C) 2008-2009 Ksplice, Inc.
+ * Author: Tim Abbott <tabbott@ksplice.com>
+ */
+
+#include <linux/export.h>
+#include <linux/bsearch.h>
+
+/*
+ * bsearch - binary search an array of elements
+ * @key: pointer to item being searched for
+ * @base: pointer to first element to search
+ * @num: number of elements
+ * @size: size of each element
+ * @cmp: pointer to comparison function
+ *
+ * This function does a binary search on the given array.  The
+ * contents of the array should already be in ascending sorted order
+ * under the provided comparison function.
+ *
+ * Note that the key need not have the same type as the elements in
+ * the array, e.g. key could be a string and the comparison function
+ * could compare the string with the struct's name field.  However, if
+ * the key and elements in the array are of the same type, you can use
+ * the same comparison function for both sort() and bsearch().
+ */
+void *bsearch(const void *key, const void *base, size_t num, size_t size, cmp_func_t cmp)
+{
+	return __inline_bsearch(key, base, num, size, cmp);
+}
+EXPORT_SYMBOL(bsearch);
-- 
2.39.2



