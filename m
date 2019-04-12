Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEtD7-0006Gg-RI
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 10:15:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Apr 2019 12:14:58 +0200
Message-Id: <20190412101502.11904-4-s.hauer@pengutronix.de>
In-Reply-To: <20190412101502.11904-1-s.hauer@pengutronix.de>
References: <20190412101502.11904-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] include: crypto: import des.h from kernel
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Import just the DES defines part from the v4.0 Linux Kernel
crypto des header.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/crypto/des.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 include/crypto/des.h

diff --git a/include/crypto/des.h b/include/crypto/des.h
new file mode 100644
index 0000000000..58fdaaa99d
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
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
