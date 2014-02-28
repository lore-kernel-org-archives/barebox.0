Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJKcW-00069M-0v
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 10:24:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2014 11:24:19 +0100
Message-Id: <1393583061-796-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393583061-796-1-git-send-email-s.hauer@pengutronix.de>
References: <1393583061-796-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] fs: ubifs: Fix unused function warning
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/ubifs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index e2f9593..44a9e97 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -49,11 +49,13 @@ struct z_stream_s ubifs_zlib_stream;
 
 /* compress.c */
 
+#ifdef CONFIG_ZLIB
 static int ubifs_deflate_decompress(const u8 *src, unsigned int slen, u8 *dst,
 		unsigned int *dlen)
 {
 	return deflate_decompress(&ubifs_zlib_stream, src, slen, dst, dlen);
 }
+#endif
 
 /* All UBIFS compressors */
 struct ubifs_compressor ubifs_compressors[UBIFS_COMPR_TYPES_CNT] = {
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
