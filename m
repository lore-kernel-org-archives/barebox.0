Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4UjA-0007dZ-B2
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 13:47:04 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 15 Jun 2015 15:46:40 +0200
Message-Id: <1434376000-21757-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] crypto: digest: provide static inline no-ops if digest is
 disabled
To: barebox@lists.infradead.org

Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/digest.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/digest.h b/include/digest.h
index 7c6711b32a56..3a9d305963ef 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -59,6 +59,7 @@ struct digest {
 /*
  * digest functions
  */
+#ifdef CONFIG_DIGEST
 int digest_algo_register(struct digest_algo *d);
 void digest_algo_unregister(struct digest_algo *d);
 void digest_algo_prints(const char *prefix);
@@ -76,6 +77,16 @@ int digest_file(struct digest *d, const char *filename,
 int digest_file_by_name(const char *algo, const char *filename,
 			unsigned char *hash,
 			const unsigned char *sig);
+#else
+static inline struct digest *digest_alloc(const char *name)
+{
+	return NULL;
+}
+
+static inline void digest_free(struct digest *d)
+{
+}
+#endif
 
 static inline int digest_init(struct digest *d)
 {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
