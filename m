Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXM-0000kl-O8
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 15:16:24 +0200
Message-Id: <1278335795-16289-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/12] crc32: activate crc32_no_comp (needed for jffs2 and UBI)
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/common.h |    4 ++--
 lib/crc32.c      |   11 ++++++-----
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/include/common.h b/include/common.h
index 319535b..0edc778 100644
--- a/include/common.h
+++ b/include/common.h
@@ -109,8 +109,8 @@ unsigned long long	simple_strtoull(const char *cp,char **endp,unsigned int base)
 long	simple_strtol(const char *cp,char **endp,unsigned int base);
 
 /* lib_generic/crc32.c */
-ulong crc32 (ulong, const unsigned char *, uint);
-ulong crc32_no_comp (ulong, const unsigned char *, uint);
+uint32_t crc32(uint32_t, const void*, unsigned int);
+uint32_t crc32_no_comp(uint32_t, const void*, unsigned int);
 
 /* common/console.c */
 int	ctrlc (void);
diff --git a/lib/crc32.c b/lib/crc32.c
index be35366..3481782 100644
--- a/lib/crc32.c
+++ b/lib/crc32.c
@@ -132,8 +132,10 @@ static const ulong crc_table[256] = {
 #define DO8(buf)  DO4(buf); DO4(buf);
 
 /* ========================================================================= */
-ulong crc32(ulong crc, const unsigned char *buf, uint len)
+uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
 {
+    const unsigned char *buf = _buf;
+
 #ifdef CONFIG_DYNAMIC_CRC_TABLE
     if (crc_table_empty)
       make_crc_table();
@@ -153,13 +155,13 @@ ulong crc32(ulong crc, const unsigned char *buf, uint len)
 EXPORT_SYMBOL(crc32);
 #endif
 
-#if 0
-
 /* No ones complement version. JFFS2 (and other things ?)
  * don't use ones compliment in their CRC calculations.
  */
-uLong crc32_no_comp(uLong crc, const Bytef *buf, uint len)
+uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
 {
+   const unsigned char *buf = _buf;
+
 #ifdef CONFIG_DYNAMIC_CRC_TABLE
     if (crc_table_empty)
       make_crc_table();
@@ -176,4 +178,3 @@ uLong crc32_no_comp(uLong crc, const Bytef *buf, uint len)
     return crc;
 }
 
-#endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
