Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZLHB-00067E-MF
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 16:30:02 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 26 Feb 2016 17:29:24 +0100
Message-Id: <1456504168-1206-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/5] include: crypto: import des.h from kernel
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Import just the DES defines part from the v4.0 Linux Kernel
crypto des header.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/crypto/des.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 include/crypto/des.h

diff --git a/include/crypto/des.h b/include/crypto/des.h
new file mode 100644
index 000000000000..58fdaaa99d7b
--- /dev/null
+++ b/include/crypto/des.h
@@ -0,0 +1,16 @@
+/* 
+ * DES & Triple DES EDE Cipher Algorithms.
+ */
+
+#ifndef __CRYPTO_DES_H
+#define __CRYPTO_DES_H
+
+#define DES_KEY_SIZE		8
+#define DES_EXPKEY_WORDS	32
+#define DES_BLOCK_SIZE		8
+
+#define DES3_EDE_KEY_SIZE	(3 * DES_KEY_SIZE)
+#define DES3_EDE_EXPKEY_WORDS	(3 * DES_EXPKEY_WORDS)
+#define DES3_EDE_BLOCK_SIZE	DES_BLOCK_SIZE
+
+#endif /* __CRYPTO_DES_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
