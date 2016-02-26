Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZLHB-00067H-MH
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 16:30:00 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 26 Feb 2016 17:29:25 +0100
Message-Id: <1456504168-1206-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1456504168-1206-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1456504168-1206-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/5] include: crypto: add simplified ablkcipher struct
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The struct is based on the Linux v4.5-rc5 crypto codebase.
As the crypto handling in barebox is implemented much simpler,
the struct is also shrunk to the bare minimum.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/crypto.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 include/crypto.h

diff --git a/include/crypto.h b/include/crypto.h
new file mode 100644
index 000000000000..d3c6a761a42e
--- /dev/null
+++ b/include/crypto.h
@@ -0,0 +1,29 @@
+/*
+ * Copyright (C) 2016 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ *
+ * simplified version of the Linux kernel header from include/linux/crypto.h
+ * 
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __CRYPTO_H__
+#define __CRYPTO_H__
+
+struct ablkcipher_request {
+	unsigned int nbytes;
+
+	void __iomem *info;
+
+	void __iomem *dst;
+	void __iomem *src;
+};
+
+#endif
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
