Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fiJy5-00053C-JV
 for barebox@lists.infradead.org; Wed, 25 Jul 2018 13:36:43 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Wed, 25 Jul 2018 15:36:06 +0200
Message-Id: <20180725133618.1510-2-r.hieber@pengutronix.de>
In-Reply-To: <20180725133618.1510-1-r.hieber@pengutronix.de>
References: <20180725133618.1510-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 01/13] scripts: mxsimage: Allow unencrypted images
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

Normally MXS SoCs only allow to boot images which have been
encrypted with a zero key. If the ENABLE_UNENCTRYPTED_BOOT fuse
is blown then the SoC also allows to boot unencrypted images.
Add an option to the mxsimage tool to generate such images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---

Notes:
    submitted by Sascha in https://www.mail-archive.com/barebox@lists.infradead.org/msg26936.html,
    but not applied yet.
    Typo in subject fixed by me.

 scripts/mxsimage.c | 53 +++++++++++++++++++++++++++++-----------------
 1 file changed, 33 insertions(+), 20 deletions(-)

diff --git a/scripts/mxsimage.c b/scripts/mxsimage.c
index 5c2c3079de..8a63d76939 100644
--- a/scripts/mxsimage.c
+++ b/scripts/mxsimage.c
@@ -337,6 +337,7 @@ struct sb_image_ctx {
 	/* Image configuration */
 	unsigned int			verbose_boot:1;
 	unsigned int			silent_dump:1;
+	unsigned int			encrypted:1;
 	const char			*input_filename;
 	const char			*output_filename;
 	const char			*cfg_filename;
@@ -484,6 +485,12 @@ static int sb_aes_crypt(struct sb_image_ctx *ictx, uint8_t *in_data,
 	int ret, outlen;
 	uint8_t *outbuf;
 
+	if (!ictx->encrypted) {
+		if (out_data && in_data != out_data)
+			memcpy(out_data, in_data, in_len);
+		return 0;
+	}
+
 	outbuf = malloc(in_len);
 	if (!outbuf)
 		return -ENOMEM;
@@ -645,7 +652,8 @@ static int sb_encrypt_image(struct sb_image_ctx *ictx)
 	 * Key dictionary.
 	 */
 	sb_aes_reinit(ictx, 1);
-	sb_encrypt_key_dictionary_key(ictx);
+	if (ictx->encrypted)
+		sb_encrypt_key_dictionary_key(ictx);
 
 	/*
 	 * Section tags.
@@ -1609,10 +1617,10 @@ static int sb_prefill_image_header(struct sb_image_ctx *ictx)
 	hdr->timestamp_us = sb_get_timestamp() * 1000000;
 
 	/* FIXME -- add proper config option */
-	hdr->flags = ictx->verbose_boot ? SB_IMAGE_FLAG_VERBOSE : 0,
+	hdr->flags = ictx->verbose_boot ? SB_IMAGE_FLAG_VERBOSE : 0;
 
 	/* FIXME -- We support only default key */
-	hdr->key_count = 1;
+	hdr->key_count = ictx->encrypted ? 1 : 0;
 
 	return 0;
 }
@@ -2450,7 +2458,7 @@ static int sb_build_image(struct sb_image_ctx *ictx)
 	/* Calculate image size. */
 	uint32_t size = sizeof(*sb_header) +
 		ictx->sect_count * sizeof(struct sb_sections_header) +
-		sizeof(*sb_dict_key) + sizeof(ictx->digest);
+		sizeof(*sb_dict_key) * sb_header->key_count + sizeof(ictx->digest);
 
 	sctx = ictx->sect_head;
 	while (sctx) {
@@ -2473,8 +2481,10 @@ static int sb_build_image(struct sb_image_ctx *ictx)
 		sctx = sctx->sect;
 	};
 
-	memcpy(iptr, sb_dict_key, sizeof(*sb_dict_key));
-	iptr += sizeof(*sb_dict_key);
+	if (ictx->encrypted) {
+		memcpy(iptr, sb_dict_key, sizeof(*sb_dict_key));
+		iptr += sizeof(*sb_dict_key);
+	}
 
 	sctx = ictx->sect_head;
 	while (sctx) {
@@ -2516,27 +2526,20 @@ static int sb_build_image(struct sb_image_ctx *ictx)
 	return 0;
 }
 
-static int mxsimage_generate(const char *configfile, const char *imagefile)
+static int mxsimage_generate(struct sb_image_ctx *ctx)
 {
 	int ret;
-	struct sb_image_ctx ctx;
-
-	memset(&ctx, 0, sizeof(ctx));
 
-	ctx.cfg_filename = configfile;
-	ctx.output_filename = imagefile;
-	ctx.verbose_boot = 1;
-
-	ret = sb_build_tree_from_cfg(&ctx);
+	ret = sb_build_tree_from_cfg(ctx);
 	if (ret)
 		goto fail;
 
-	ret = sb_encrypt_image(&ctx);
+	ret = sb_encrypt_image(ctx);
 	if (!ret)
-		ret = sb_build_image(&ctx);
+		ret = sb_build_image(ctx);
 
 fail:
-	sb_free_image(&ctx);
+	sb_free_image(ctx);
 
 	return ret;
 }
@@ -2546,8 +2549,12 @@ int main(int argc, char *argv[])
 	int ret;
 	int opt;
 	char *configfile = NULL, *outfile = NULL, *verify = NULL;
+	struct sb_image_ctx ctx = {
+		.encrypted = 1,
+		.verbose_boot = 1,
+	};
 
-	while ((opt = getopt(argc, argv, "p:b:c:o:v:")) != -1) {
+	while ((opt = getopt(argc, argv, "p:b:c:o:v:u")) != -1) {
 		switch (opt) {
 		case 'p':
 			prepfile = optarg;
@@ -2564,6 +2571,9 @@ int main(int argc, char *argv[])
 		case 'v':
 			verify = optarg;
 			break;
+		case 'u':
+			ctx.encrypted = 0;
+			break;
 		default:
 			exit(1);
 		}
@@ -2587,7 +2597,10 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	ret = mxsimage_generate(configfile, outfile);
+	ctx.cfg_filename = configfile;
+	ctx.output_filename = outfile;
+
+	ret = mxsimage_generate(&ctx);
 	if (ret)
 		exit(1);
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
