Delivery-date: Tue, 22 Jun 2021 09:55:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbG5-0007Cl-FL
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 09:55:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbG4-0006xR-En
	for lore@pengutronix.de; Tue, 22 Jun 2021 09:55:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+JT/+DpPhGqvGRxK0q14bCAt8XpAA/+ULHsodE1umDE=; b=31ZL3TB2L5I/fs
	bssia3CJRbl1PpKzbYpC69GV4Ocw3iWm7c7ymkc1aB6LpX4tPreWYYyI+qpIrP6gDG2ILj6lXGIvs
	zhFGQkMLiXIjvPKKAdrCY02hOrW/jAnsuGOwQZdb6ZdNzKq5xh8EqUdNvIn8RdkSZYmABHYwRT1tJ
	cElL5kJnHKM9ZfJJMQ6UO5oZhWp/BJwEZ0xOv9UDQHbidlg0E8Y5yCmQNfSIq2UODk1e29uSYAY/V
	ZFfSXFUsZRFI3AljA/tdKZKAYh/wYv3541RxcDXhB+X811d5MAwzVv5ZcmhxvGasSSdBu9xX/DLED
	/5YYpNP9FknMKDzcTYKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvbEj-0067PM-NX; Tue, 22 Jun 2021 07:54:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvbEe-0067O7-3L
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 07:54:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvbEb-0006dU-Ox; Tue, 22 Jun 2021 09:54:13 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvbEb-0001qQ-Gd; Tue, 22 Jun 2021 09:54:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 22 Jun 2021 09:54:13 +0200
Message-Id: <20210622075413.6659-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_005416_181453_AF9ACDDB 
X-CRM114-Status: GOOD (  13.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM64: Implement mem*_*io()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds memset_io(), memcpy_fromio() and memcpy_toio(). These have not
been defined for ARM64 previously. The code is directly taken from the
Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib64/Makefile |  2 +-
 arch/arm/lib64/io.c     | 98 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 99 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/lib64/io.c

diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index 69cb3d8ea1..a004af4867 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -6,5 +6,5 @@ obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o string.o
 extra-y += barebox.lds
 obj-pbl-y   += runtime-offset.o
 obj-pbl-y   += setjmp.o
-
+obj-y += io.o
 pbl-y	+= div0.o pbl.o
diff --git a/arch/arm/lib64/io.c b/arch/arm/lib64/io.c
new file mode 100644
index 0000000000..fdf2117cc8
--- /dev/null
+++ b/arch/arm/lib64/io.c
@@ -0,0 +1,98 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Based on arch/arm/kernel/io.c
+ *
+ * Copyright (C) 2012 ARM Ltd.
+ */
+
+#include <linux/export.h>
+#include <linux/types.h>
+#include <linux/kernel.h>
+#include <io.h>
+
+/*
+ * Copy data from IO memory space to "real" memory space.
+ */
+void memcpy_fromio(void *to, const volatile void __iomem *from, size_t count)
+{
+	while (count && !IS_ALIGNED((unsigned long)from, 8)) {
+		*(u8 *)to = __raw_readb(from);
+		from++;
+		to++;
+		count--;
+	}
+
+	while (count >= 8) {
+		*(u64 *)to = __raw_readq(from);
+		from += 8;
+		to += 8;
+		count -= 8;
+	}
+
+	while (count) {
+		*(u8 *)to = __raw_readb(from);
+		from++;
+		to++;
+		count--;
+	}
+}
+EXPORT_SYMBOL(memcpy_fromio);
+
+/*
+ * Copy data from "real" memory space to IO memory space.
+ */
+void memcpy_toio(volatile void __iomem *to, const void *from, size_t count)
+{
+	while (count && !IS_ALIGNED((unsigned long)to, 8)) {
+		__raw_writeb(*(u8 *)from, to);
+		from++;
+		to++;
+		count--;
+	}
+
+	while (count >= 8) {
+		__raw_writeq(*(u64 *)from, to);
+		from += 8;
+		to += 8;
+		count -= 8;
+	}
+
+	while (count) {
+		__raw_writeb(*(u8 *)from, to);
+		from++;
+		to++;
+		count--;
+	}
+}
+EXPORT_SYMBOL(memcpy_toio);
+
+/*
+ * "memset" on IO memory space.
+ */
+void memset_io(volatile void __iomem *dst, int c, size_t count)
+{
+	u64 qc = (u8)c;
+
+	qc |= qc << 8;
+	qc |= qc << 16;
+	qc |= qc << 32;
+
+	while (count && !IS_ALIGNED((unsigned long)dst, 8)) {
+		__raw_writeb(c, dst);
+		dst++;
+		count--;
+	}
+
+	while (count >= 8) {
+		__raw_writeq(qc, dst);
+		dst += 8;
+		count -= 8;
+	}
+
+	while (count) {
+		__raw_writeb(c, dst);
+		dst++;
+		count--;
+	}
+}
+EXPORT_SYMBOL(memset_io);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

