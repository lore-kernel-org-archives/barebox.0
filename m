Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0lvu-0005Mc-CL
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 11:38:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 12:38:19 +0100
Message-Id: <20190304113823.21535-3-s.hauer@pengutronix.de>
In-Reply-To: <20190304113823.21535-1-s.hauer@pengutronix.de>
References: <20190304113823.21535-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] crc: Add PBL variant for crc_itu_t()
To: Barebox List <barebox@lists.infradead.org>

Enable crc_itu_t() for PBL. For the PBL use the slower-but-smaller
variant without table.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Makefile |  2 +-
 include/crc.h   | 16 ++++++++++++++++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index 0014b0f4ce..3402f57255 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -1,5 +1,5 @@
 obj-$(CONFIG_CRC32)	+= crc32.o
-obj-$(CONFIG_CRC_ITU_T)	+= crc-itu-t.o
+obj-pbl-$(CONFIG_CRC_ITU_T)	+= crc-itu-t.o
 obj-$(CONFIG_CRC7)	+= crc7.o
 obj-$(CONFIG_DIGEST)	+= digest.o
 obj-$(CONFIG_DIGEST_CRC32_GENERIC)	+= crc32_digest.o
diff --git a/include/crc.h b/include/crc.h
index 317f6f5494..a67388f732 100644
--- a/include/crc.h
+++ b/include/crc.h
@@ -13,10 +13,26 @@ extern u16 const crc_itu_t_table[256];
 
 extern u16 crc_itu_t(u16 crc, const u8 *buffer, size_t len);
 
+#ifdef __PBL__
+static inline u16 crc_itu_t_byte(u16 crc, const u8 data)
+{
+	int i;
+
+	crc = crc ^ data << 8;
+	for (i = 0; i < 8; ++i) {
+		if (crc & 0x8000)
+			crc = crc << 1 ^ 0x1021;
+		else
+			crc = crc << 1;
+	}
+	return crc;
+}
+#else
 static inline u16 crc_itu_t_byte(u16 crc, const u8 data)
 {
 	return (crc << 8) ^ crc_itu_t_table[((crc >> 8) ^ data) & 0xff];
 }
+#endif
 
 uint32_t crc32(uint32_t, const void *, unsigned int);
 uint32_t crc32_no_comp(uint32_t, const void *, unsigned int);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
