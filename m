Delivery-date: Mon, 07 Feb 2022 16:16:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH5kv-008MOs-1U
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 16:16:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH5kt-0003Wb-PL
	for lore@pengutronix.de; Mon, 07 Feb 2022 16:16:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CdesK1PnH31QXxBXhVhUJRgmOmE7hsWQERhxWt9PL/0=; b=hDbH5Hw71vrH41
	6pw+0hpQqPSF4lV94yjGahCFBOl3RpDvoMSQbyJ4ElpBza8ZAHwvHG7MsAjzWcF1niZ89SK4U0Mta
	IZRrVjBsScuo8Koa6qcRDfCcJhKqFAHCj5qd+00LSg5dJgHJKL7EOzHi3vh7jw92ucQdBti1sE2WG
	i/O1GXcOCFI8acIKuUflBeJvI5IldEPkFEkEOaREZiJ/kQLa+B0IEcTBBqKMN5gZtbRuVci2PlhdY
	K9LLrLbtithy0t0yQDkD30MloqehpiqJX3wNBpZFx1WXqIB+XSDZmkkU8ncd8RaYl4VuKxxlyCd6s
	6gCeJxqtOuVotPqogksg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH5jL-00AeZZ-TI; Mon, 07 Feb 2022 15:15:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH5jH-00AeYS-S0
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 15:15:01 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nH5jG-00035x-Is; Mon, 07 Feb 2022 16:14:58 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nH5jG-003yAd-3H; Mon, 07 Feb 2022 16:14:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Feb 2022 16:14:57 +0100
Message-Id: <20220207151457.945796-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_071459_927168_D70306CE 
X-CRM114-Status: GOOD (  16.69  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ubifs: Add zstd support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

zstd shows a good compression rate and is faster than lzo. This adds
UBIFS support for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/Kconfig       |  5 ++++
 fs/ubifs/ubifs-media.h |  2 ++
 fs/ubifs/ubifs.c       | 52 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 59 insertions(+)

diff --git a/fs/ubifs/Kconfig b/fs/ubifs/Kconfig
index ae58c2b7f2..15fcec4459 100644
--- a/fs/ubifs/Kconfig
+++ b/fs/ubifs/Kconfig
@@ -17,4 +17,9 @@ config FS_UBIFS_COMPRESSION_ZLIB
 	select ZLIB
 	prompt "ZLIB compression support"
 
+config FS_UBIFS_COMPRESSION_ZSTD
+	bool
+	select ZSTD_DECOMPRESS
+	prompt "ZSTD compression support"
+
 endif
diff --git a/fs/ubifs/ubifs-media.h b/fs/ubifs/ubifs-media.h
index 8b7c184401..697b1b8906 100644
--- a/fs/ubifs/ubifs-media.h
+++ b/fs/ubifs/ubifs-media.h
@@ -348,12 +348,14 @@ enum {
  * UBIFS_COMPR_NONE: no compression
  * UBIFS_COMPR_LZO: LZO compression
  * UBIFS_COMPR_ZLIB: ZLIB compression
+ * UBIFS_COMPR_ZSTD: ZSTD compression
  * UBIFS_COMPR_TYPES_CNT: count of supported compression types
  */
 enum {
 	UBIFS_COMPR_NONE,
 	UBIFS_COMPR_LZO,
 	UBIFS_COMPR_ZLIB,
+	UBIFS_COMPR_ZSTD,
 	UBIFS_COMPR_TYPES_CNT,
 };
 
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index ced3d1f47f..88a4340a38 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -19,6 +19,7 @@
 #include <magicvar.h>
 #include <linux/stat.h>
 #include <linux/zlib.h>
+#include <linux/zstd.h>
 #include <linux/mtd/mtd.h>
 
 #include "ubifs.h"
@@ -33,6 +34,7 @@ struct ubifs_priv {
 
 static struct z_stream_s ubifs_zlib_stream;
 
+static ZSTD_DCtx *ubifs_zstd_cctx;
 
 /* compress.c */
 
@@ -48,6 +50,22 @@ static int gzip_decompress(const unsigned char *in, size_t in_len,
 }
 #endif
 
+#if defined(CONFIG_ZSTD_DECOMPRESS)
+static int zstd_decompress(const unsigned char *in, size_t in_len,
+			   unsigned char *out, size_t *out_len)
+{
+	size_t olen;
+
+	olen = ZSTD_decompressDCtx(ubifs_zstd_cctx, out, *out_len, in, in_len);
+	if (ZSTD_isError(olen))
+		return -EINVAL;
+
+	*out_len = olen;
+
+	return 0;
+}
+#endif
+
 /* Fake description object for the "none" compressor */
 static struct ubifs_compressor none_compr = {
 	.compr_type = UBIFS_COMPR_NONE,
@@ -74,6 +92,15 @@ static struct ubifs_compressor zlib_compr = {
 #endif
 };
 
+static struct ubifs_compressor zstd_compr = {
+	.compr_type = UBIFS_COMPR_ZSTD,
+	.name = "zstd",
+#ifdef CONFIG_ZSTD_DECOMPRESS
+	.capi_name = "zstd",
+	.decompress = zstd_decompress,
+#endif
+};
+
 /* All UBIFS compressors */
 struct ubifs_compressor *ubifs_compressors[UBIFS_COMPR_TYPES_CNT];
 
@@ -238,6 +265,10 @@ int __init ubifs_compressors_init(void)
 	if (err)
 		return err;
 
+	err = compr_init(&zstd_compr);
+	if (err)
+		return err;
+
 	err = compr_init(&none_compr);
 	if (err)
 		return err;
@@ -492,6 +523,21 @@ static int zlib_decomp_init(void)
 	return 0;
 }
 
+static int zstd_decomp_init(void)
+{
+	const size_t wksp_size = ZSTD_DCtxWorkspaceBound();
+	void *wksp = malloc(wksp_size);
+
+	if (!wksp)
+		return -ENOMEM;
+
+	ubifs_zstd_cctx = ZSTD_initDCtx(wksp, wksp_size);
+	if (!ubifs_zstd_cctx)
+		return -EINVAL;
+
+	return 0;
+}
+
 int ubifs_allow_encrypted;
 int ubifs_allow_authenticated_unauthenticated;
 
@@ -505,6 +551,12 @@ static int ubifs_init(void)
 			return ret;
 	}
 
+	if (IS_ENABLED(CONFIG_ZSTD_DECOMPRESS)) {
+		ret = zstd_decomp_init();
+		if (ret)
+			return ret;
+	}
+
 	globalvar_add_simple_bool("ubifs.allow_encrypted", &ubifs_allow_encrypted);
 	globalvar_add_simple_bool("ubifs.allow_authenticated_unauthenticated",
 				  &ubifs_allow_authenticated_unauthenticated);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

