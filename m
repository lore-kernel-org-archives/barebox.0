Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cYZRA-000339-Kz
 for barebox@lists.infradead.org; Tue, 31 Jan 2017 14:29:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jan 2017 15:29:12 +0100
Message-Id: <1485872952-8386-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] scripts: mxsimage: Fix build with OpenSSL < 1.1.x
To: Barebox List <barebox@lists.infradead.org>
Cc: lst@pengutronix.de, ukl@pengutronix.de

Move the compatibility wrapper functions up so that they
are defined before they are used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/mxsimage.c | 62 +++++++++++++++++++++++++++---------------------------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/scripts/mxsimage.c b/scripts/mxsimage.c
index bcbbf00..5c2c307 100644
--- a/scripts/mxsimage.c
+++ b/scripts/mxsimage.c
@@ -410,6 +410,37 @@ static void make_crc_table(void)
 	crc_table_valid = 1;
 }
 
+/*
+ * OpenSSL 1.1.0 and newer compatibility functions:
+ * https://wiki.openssl.org/index.php/1.1_API_Changes
+ */
+#if OPENSSL_VERSION_NUMBER < 0x10100000L
+static void *OPENSSL_zalloc(size_t num)
+{
+	void *ret = OPENSSL_malloc(num);
+
+	if (ret != NULL)
+		memset(ret, 0, num);
+	return ret;
+}
+
+EVP_MD_CTX *EVP_MD_CTX_new(void)
+{
+	return OPENSSL_zalloc(sizeof(EVP_MD_CTX));
+}
+
+void EVP_MD_CTX_free(EVP_MD_CTX *ctx)
+{
+	EVP_MD_CTX_cleanup(ctx);
+	OPENSSL_free(ctx);
+}
+
+int EVP_CIPHER_CTX_reset(EVP_CIPHER_CTX *ctx)
+{
+	return EVP_CIPHER_CTX_cleanup(ctx);
+}
+#endif
+
 uint32_t pbl_crc32(uint32_t in_crc, const char *buf, uint32_t len)
 {
 	uint32_t crc32_val;
@@ -2292,37 +2323,6 @@ static int sb_verify_image_end(struct sb_image_ctx *ictx,
 	return ret;
 }
 
-/*
- * OpenSSL 1.1.0 and newer compatibility functions:
- * https://wiki.openssl.org/index.php/1.1_API_Changes
- */
-#if OPENSSL_VERSION_NUMBER < 0x10100000L
-static void *OPENSSL_zalloc(size_t num)
-{
-	void *ret = OPENSSL_malloc(num);
-
-	if (ret != NULL)
-		memset(ret, 0, num);
-	return ret;
-}
-
-EVP_MD_CTX *EVP_MD_CTX_new(void)
-{
-	return OPENSSL_zalloc(sizeof(EVP_MD_CTX));
-}
-
-void EVP_MD_CTX_free(EVP_MD_CTX *ctx)
-{
-	EVP_MD_CTX_cleanup(ctx);
-	OPENSSL_free(ctx);
-}
-
-int EVP_CIPHER_CTX_reset(EVP_CIPHER_CTX *ctx)
-{
-	return EVP_CIPHER_CTX_cleanup(ctx);
-}
-#endif
-
 static int sb_build_tree_from_img(struct sb_image_ctx *ictx)
 {
 	long filesize;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
