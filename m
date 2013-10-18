Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VX9zd-0002iM-E2
 for barebox@lists.infradead.org; Fri, 18 Oct 2013 13:21:30 +0000
Received: from mail247.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id F0084FFB1A1
 for <barebox@lists.infradead.org>; Fri, 18 Oct 2013 15:21:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 18 Oct 2013 15:22:44 +0200
Message-Id: <1382102564-31486-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] fs: bpkfs: add missing include
To: barebox@lists.infradead.org

was not include when applying bpkfs patch

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/bpkfs.h | 68 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 include/bpkfs.h

diff --git a/include/bpkfs.h b/include/bpkfs.h
new file mode 100644
index 0000000..ccb56c1
--- /dev/null
+++ b/include/bpkfs.h
@@ -0,0 +1,68 @@
+/*
+ * Copyright (c) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * under GPLv2 only
+ */
+
+#ifndef __BPKFS_H__
+#define __BPKFS_H__
+
+#include <linux/types.h>
+#include <linux/list.h>
+
+#define BPKFS_TYPE_BL	0x50424c00
+#define BPKFS_TYPE_BLV	0x50424c56
+#define BPKFS_TYPE_DSC	0x44456343
+#define BPKFS_TYPE_KER	0x504b4552
+#define BPKFS_TYPE_RFS	0x50524653
+#define BPKFS_TYPE_FMV	0x46575600
+
+struct bpkfs_header {
+	uint32_t magic;
+	uint32_t version;
+	uint64_t size;
+	uint32_t crc;
+	uint64_t spare;
+} __attribute__ ((packed)) ;
+
+struct bpkfs_data_header {
+	uint32_t type;
+	uint64_t size;
+	uint32_t crc;
+	uint32_t hw_id;
+	uint32_t spare;
+} __attribute__ ((packed)) ;
+
+struct bpkfs_handle_hw {
+	char *name;
+	uint32_t hw_id;
+
+	struct list_head list_data;
+	struct list_head list_hw_id;
+};
+
+struct bpkfs_handle_data {
+	char *name;
+	uint32_t type;
+	uint32_t hw_id;
+	uint64_t size;
+
+	int fd;
+	size_t offset; /* offset in the image */
+	size_t pos; /* pos in the data */
+	uint32_t crc;
+
+	char data[8];
+
+	struct list_head list;
+};
+
+struct bpkfs_handle {
+	struct bpkfs_header header;
+	int nb_data_entries;
+	char *filename;
+
+	struct list_head list;
+};
+
+#endif /* __BPKFS_H__ */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
