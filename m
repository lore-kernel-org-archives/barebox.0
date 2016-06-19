Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp37.i.mail.ru ([94.100.177.97])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEhqS-0003yT-AD
 for barebox@lists.infradead.org; Sun, 19 Jun 2016 18:53:22 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 19 Jun 2016 21:52:52 +0300
Message-Id: <1466362372-4248-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] crypto: crc32: Optimize dynamic CRC table generation
To: barebox@lists.infradead.org

In barebox we have an option for dynamic formation of the CRC32
table (DYNAMIC_CRC_TABLE), but the source code declares a static
array which is simply filled with data, the resulting code becomes
even more than without DYNAMIC_CRC_TABLE option, due to the BSS usage.
CONFIG_DYNAMIC_CRC_TABLE=n
   text    data     bss     dec     hex filename
   1884       0       0    1884     75c crc32.o
CONFIG_DYNAMIC_CRC_TABLE=y
   text    data     bss     dec     hex filename
   1066       4    1024    2094     82e crc32.o

This patch provides dynamic buffer allocation for the CRC table,
which saves about 1 Kbyte, as it should be.
CONFIG_DYNAMIC_CRC_TABLE=y
   text    data     bss     dec     hex filename
   1062       0       4    1066     42a crc32.o

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 crypto/crc32.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/crypto/crc32.c b/crypto/crc32.c
index 3bff6fe..c510c31 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -24,9 +24,7 @@
 
 #ifdef CONFIG_DYNAMIC_CRC_TABLE
 
-static int crc_table_empty = 1;
-static ulong crc_table[256];
-static void make_crc_table(void);
+static ulong *crc_table;
 
 /*
   Generate a table for a byte-wise 32-bit CRC calculation on the polynomial:
@@ -65,6 +63,8 @@ static void make_crc_table(void)
   for (n = 0; n < sizeof(p)/sizeof(char); n++)
     poly |= 1L << (31 - p[n]);
 
+  crc_table = malloc(sizeof(ulong) * 256);
+
   for (n = 0; n < 256; n++)
   {
     c = (ulong)n;
@@ -72,7 +72,6 @@ static void make_crc_table(void)
       c = c & 1 ? poly ^ (c >> 1) : c >> 1;
     crc_table[n] = c;
   }
-  crc_table_empty = 0;
 }
 #else
 /* ========================================================================
@@ -147,8 +146,8 @@ STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
     const unsigned char *buf = _buf;
 
 #ifdef CONFIG_DYNAMIC_CRC_TABLE
-    if (crc_table_empty)
-      make_crc_table();
+	if (!crc_table)
+		make_crc_table();
 #endif
     crc = crc ^ 0xffffffffL;
     while (len >= 8)
@@ -173,8 +172,8 @@ STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
    const unsigned char *buf = _buf;
 
 #ifdef CONFIG_DYNAMIC_CRC_TABLE
-    if (crc_table_empty)
-      make_crc_table();
+	if (!crc_table)
+		make_crc_table();
 #endif
     while (len >= 8)
     {
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
