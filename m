Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQZHL-0001hG-1M
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 12:42:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Jan 2017 13:42:00 +0100
Message-Id: <20170109124200.10652-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] scripts: mxsimage: Fix build with OpenSSL 1.1.x
To: Barebox List <barebox@lists.infradead.org>

The EVP_MD_CTX and EVP_CIPHER_CTX are made opaque since 1.1.x , so instead
of embedding them directly into struct sb_image_ctx and initializing them
using EVP_*_CTX_init(), we use pointers and allocate the crypto contexts
using EVP_*_CTX_new().

This is an adoption of the U-Boot commit 7bae13b7579a6b from Marek Vasut

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/mxsimage.c | 104 +++++++++++++++++++++++++++++++++++------------------
 1 file changed, 70 insertions(+), 34 deletions(-)

diff --git a/scripts/mxsimage.c b/scripts/mxsimage.c
index 2b1a5f38b..bcbbf0000 100644
--- a/scripts/mxsimage.c
+++ b/scripts/mxsimage.c
@@ -354,8 +354,8 @@ struct sb_image_ctx {
 	struct sb_dcd_ctx		*dcd_head;
 	struct sb_dcd_ctx		*dcd_tail;
 
-	EVP_CIPHER_CTX			cipher_ctx;
-	EVP_MD_CTX			md_ctx;
+	EVP_CIPHER_CTX			*cipher_ctx;
+	EVP_MD_CTX			*md_ctx;
 	uint8_t				digest[32];
 	struct sb_key_dictionary_key	sb_dict_key;
 
@@ -430,24 +430,26 @@ uint32_t pbl_crc32(uint32_t in_crc, const char *buf, uint32_t len)
  */
 static int sb_aes_init(struct sb_image_ctx *ictx, uint8_t *iv, int enc)
 {
-	EVP_CIPHER_CTX *ctx = &ictx->cipher_ctx;
+	EVP_CIPHER_CTX *ctx;
 	int ret;
 
 	/* If there is no init vector, init vector is all zeroes. */
 	if (!iv)
 		iv = ictx->image_key;
 
-	EVP_CIPHER_CTX_init(ctx);
+	ctx = EVP_CIPHER_CTX_new();
 	ret = EVP_CipherInit(ctx, EVP_aes_128_cbc(), ictx->image_key, iv, enc);
-	if (ret == 1)
+	if (ret == 1) {
 		EVP_CIPHER_CTX_set_padding(ctx, 0);
+		ictx->cipher_ctx = ctx;
+	}
 	return ret;
 }
 
 static int sb_aes_crypt(struct sb_image_ctx *ictx, uint8_t *in_data,
 			uint8_t *out_data, int in_len)
 {
-	EVP_CIPHER_CTX *ctx = &ictx->cipher_ctx;
+	EVP_CIPHER_CTX *ctx = ictx->cipher_ctx;
 	int ret, outlen;
 	uint8_t *outbuf;
 
@@ -472,13 +474,13 @@ err:
 
 static int sb_aes_deinit(EVP_CIPHER_CTX *ctx)
 {
-	return EVP_CIPHER_CTX_cleanup(ctx);
+	return EVP_CIPHER_CTX_reset(ctx);
 }
 
 static int sb_aes_reinit(struct sb_image_ctx *ictx, int enc)
 {
 	int ret;
-	EVP_CIPHER_CTX *ctx = &ictx->cipher_ctx;
+	EVP_CIPHER_CTX *ctx = ictx->cipher_ctx;
 	struct sb_boot_image_header *sb_header = &ictx->payload;
 	uint8_t *iv = sb_header->iv;
 
@@ -533,7 +535,7 @@ static int sb_get_time(time_t time, struct tm *tm)
 
 static void sb_encrypt_sb_header(struct sb_image_ctx *ictx)
 {
-	EVP_MD_CTX *md_ctx = &ictx->md_ctx;
+	EVP_MD_CTX *md_ctx = ictx->md_ctx;
 	struct sb_boot_image_header *sb_header = &ictx->payload;
 	uint8_t *sb_header_ptr = (uint8_t *)sb_header;
 
@@ -544,7 +546,7 @@ static void sb_encrypt_sb_header(struct sb_image_ctx *ictx)
 
 static void sb_encrypt_sb_sections_header(struct sb_image_ctx *ictx)
 {
-	EVP_MD_CTX *md_ctx = &ictx->md_ctx;
+	EVP_MD_CTX *md_ctx = ictx->md_ctx;
 	struct sb_section_ctx *sctx = ictx->sect_head;
 	struct sb_sections_header *shdr;
 	uint8_t *sb_sections_header_ptr;
@@ -564,7 +566,7 @@ static void sb_encrypt_sb_sections_header(struct sb_image_ctx *ictx)
 
 static void sb_encrypt_key_dictionary_key(struct sb_image_ctx *ictx)
 {
-	EVP_MD_CTX *md_ctx = &ictx->md_ctx;
+	EVP_MD_CTX *md_ctx = ictx->md_ctx;
 
 	sb_aes_crypt(ictx, ictx->image_key, ictx->sb_dict_key.key,
 		     sizeof(ictx->sb_dict_key.key));
@@ -573,7 +575,7 @@ static void sb_encrypt_key_dictionary_key(struct sb_image_ctx *ictx)
 
 static void sb_decrypt_key_dictionary_key(struct sb_image_ctx *ictx)
 {
-	EVP_MD_CTX *md_ctx = &ictx->md_ctx;
+	EVP_MD_CTX *md_ctx = ictx->md_ctx;
 
 	EVP_DigestUpdate(md_ctx, &ictx->sb_dict_key, sizeof(ictx->sb_dict_key));
 	sb_aes_crypt(ictx, ictx->sb_dict_key.key, ictx->image_key,
@@ -583,7 +585,7 @@ static void sb_decrypt_key_dictionary_key(struct sb_image_ctx *ictx)
 static void sb_encrypt_tag(struct sb_image_ctx *ictx,
 		struct sb_cmd_ctx *cctx)
 {
-	EVP_MD_CTX *md_ctx = &ictx->md_ctx;
+	EVP_MD_CTX *md_ctx = ictx->md_ctx;
 	struct sb_command *cmd = &cctx->payload;
 
 	sb_aes_crypt(ictx, (uint8_t *)cmd,
@@ -594,8 +596,8 @@ static void sb_encrypt_tag(struct sb_image_ctx *ictx,
 static int sb_encrypt_image(struct sb_image_ctx *ictx)
 {
 	/* Start image-wide crypto. */
-	EVP_MD_CTX_init(&ictx->md_ctx);
-	EVP_DigestInit(&ictx->md_ctx, EVP_sha1());
+	ictx->md_ctx = EVP_MD_CTX_new();
+	EVP_DigestInit(ictx->md_ctx, EVP_sha1());
 
 	/*
 	 * SB image header.
@@ -636,7 +638,7 @@ static int sb_encrypt_image(struct sb_image_ctx *ictx)
 			} else if (ccmd->header.tag == ROM_LOAD_CMD) {
 				sb_aes_crypt(ictx, cctx->data, cctx->data,
 					     cctx->length);
-				EVP_DigestUpdate(&ictx->md_ctx, cctx->data,
+				EVP_DigestUpdate(ictx->md_ctx, cctx->data,
 						 cctx->length);
 			}
 
@@ -651,11 +653,12 @@ static int sb_encrypt_image(struct sb_image_ctx *ictx)
 	 */
 	sb_aes_reinit(ictx, 1);
 
-	EVP_DigestFinal(&ictx->md_ctx, ictx->digest, NULL);
+	EVP_DigestFinal(ictx->md_ctx, ictx->digest, NULL);
+	EVP_MD_CTX_free(ictx->md_ctx);
 	sb_aes_crypt(ictx, ictx->digest, ictx->digest, sizeof(ictx->digest));
 
 	/* Stop the encryption session. */
-	sb_aes_deinit(&ictx->cipher_ctx);
+	sb_aes_deinit(ictx->cipher_ctx);
 
 	return 0;
 }
@@ -1588,7 +1591,7 @@ static int sb_postfill_image_header(struct sb_image_ctx *ictx)
 	struct sb_boot_image_header *hdr = &ictx->payload;
 	struct sb_section_ctx *sctx = ictx->sect_head;
 	uint32_t kd_size, sections_blocks;
-	EVP_MD_CTX md_ctx;
+	EVP_MD_CTX *md_ctx;
 
 	/* The main SB header size in blocks. */
 	hdr->image_blocks = hdr->header_blocks;
@@ -1625,13 +1628,14 @@ static int sb_postfill_image_header(struct sb_image_ctx *ictx)
 		hdr->key_dictionary_block + kd_size / SB_BLOCK_SIZE;
 
 	/* Compute header digest. */
-	EVP_MD_CTX_init(&md_ctx);
+	md_ctx = EVP_MD_CTX_new();
 
-	EVP_DigestInit(&md_ctx, EVP_sha1());
-	EVP_DigestUpdate(&md_ctx, hdr->signature1,
+	EVP_DigestInit(md_ctx, EVP_sha1());
+	EVP_DigestUpdate(md_ctx, hdr->signature1,
 			 sizeof(struct sb_boot_image_header) -
 			 sizeof(hdr->digest));
-	EVP_DigestFinal(&md_ctx, hdr->digest, NULL);
+	EVP_DigestFinal(md_ctx, hdr->digest, NULL);
+	EVP_MD_CTX_free(md_ctx);
 
 	return 0;
 }
@@ -1884,12 +1888,12 @@ static int sb_verify_image_header(struct sb_image_ctx *ictx,
 	struct tm tm;
 	int sz, ret = 0;
 	unsigned char digest[20];
-	EVP_MD_CTX md_ctx;
+	EVP_MD_CTX *md_ctx;
 	unsigned long size;
 
 	/* Start image-wide crypto. */
-	EVP_MD_CTX_init(&ictx->md_ctx);
-	EVP_DigestInit(&ictx->md_ctx, EVP_sha1());
+	ictx->md_ctx = EVP_MD_CTX_new();
+	EVP_DigestInit(ictx->md_ctx, EVP_sha1());
 
 	soprintf(ictx, "---------- Verifying SB Image Header ----------\n");
 
@@ -1900,12 +1904,13 @@ static int sb_verify_image_header(struct sb_image_ctx *ictx,
 	}
 
 	/* Compute header digest. */
-	EVP_MD_CTX_init(&md_ctx);
-	EVP_DigestInit(&md_ctx, EVP_sha1());
-	EVP_DigestUpdate(&md_ctx, hdr->signature1,
+	md_ctx = EVP_MD_CTX_new();
+	EVP_DigestInit(md_ctx, EVP_sha1());
+	EVP_DigestUpdate(md_ctx, hdr->signature1,
 			 sizeof(struct sb_boot_image_header) -
 			 sizeof(hdr->digest));
-	EVP_DigestFinal(&md_ctx, digest, NULL);
+	EVP_DigestFinal(md_ctx, digest, NULL);
+	EVP_MD_CTX_free(md_ctx);
 
 	sb_aes_init(ictx, NULL, 1);
 	sb_encrypt_sb_header(ictx);
@@ -2023,7 +2028,7 @@ static int sb_verify_image_header(struct sb_image_ctx *ictx,
 static void sb_decrypt_tag(struct sb_image_ctx *ictx,
 		struct sb_cmd_ctx *cctx)
 {
-	EVP_MD_CTX *md_ctx = &ictx->md_ctx;
+	EVP_MD_CTX *md_ctx = ictx->md_ctx;
 	struct sb_command *cmd = &cctx->payload;
 
 	sb_aes_crypt(ictx, (uint8_t *)&cctx->c_payload,
@@ -2080,7 +2085,7 @@ static int sb_verify_command(struct sb_image_ctx *ictx,
 
 		*tsize += size;
 
-		EVP_DigestUpdate(&ictx->md_ctx, cctx->data, asize);
+		EVP_DigestUpdate(ictx->md_ctx, cctx->data, asize);
 		sb_aes_crypt(ictx, cctx->data, cctx->data, asize);
 
 		if (ccmd->load.crc32 != pbl_crc32(0,
@@ -2269,7 +2274,8 @@ static int sb_verify_image_end(struct sb_image_ctx *ictx,
 	}
 
 	/* Check the image digest. */
-	EVP_DigestFinal(&ictx->md_ctx, ictx->digest, NULL);
+	EVP_DigestFinal(ictx->md_ctx, ictx->digest, NULL);
+	EVP_MD_CTX_free(ictx->md_ctx);
 
 	/* Decrypt the image digest from the input image. */
 	sb_aes_reinit(ictx, 0);
@@ -2286,6 +2292,36 @@ static int sb_verify_image_end(struct sb_image_ctx *ictx,
 	return ret;
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
 
 static int sb_build_tree_from_img(struct sb_image_ctx *ictx)
 {
@@ -2340,7 +2376,7 @@ err_verify:
 	soprintf(ictx, "Verification %s\n", ret ? "FAILED" : "PASSED");
 
 	/* Stop the encryption session. */
-	sb_aes_deinit(&ictx->cipher_ctx);
+	sb_aes_deinit(ictx->cipher_ctx);
 
 	fclose(fp);
 	return ret;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
