Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6m-0006Vf-Uy
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:50:03 +0200
Message-Id: <1404809417-21477-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/21] Add hex_byte_pack and hex_byte_pack_upper from kernel
To: barebox@lists.infradead.org

Utility functions needed by the UUID/GUID printf support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/kernel.h | 23 ++++++++++++++++++++++-
 lib/misc.c             |  2 ++
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 4322f01..c5ba99f 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -117,5 +117,26 @@
 }							\
 )
 
-#endif /* _LINUX_KERNEL_H */
+extern const char hex_asc[];
+#define hex_asc_lo(x)	hex_asc[((x) & 0x0f)]
+#define hex_asc_hi(x)	hex_asc[((x) & 0xf0) >> 4]
+
+static inline char *hex_byte_pack(char *buf, u8 byte)
+{
+	*buf++ = hex_asc_hi(byte);
+	*buf++ = hex_asc_lo(byte);
+	return buf;
+}
+
+extern const char hex_asc_upper[];
+#define hex_asc_upper_lo(x)	hex_asc_upper[((x) & 0x0f)]
+#define hex_asc_upper_hi(x)	hex_asc_upper[((x) & 0xf0) >> 4]
 
+static inline char *hex_byte_pack_upper(char *buf, u8 byte)
+{
+	*buf++ = hex_asc_upper_hi(byte);
+	*buf++ = hex_asc_upper_lo(byte);
+	return buf;
+}
+
+#endif /* _LINUX_KERNEL_H */
diff --git a/lib/misc.c b/lib/misc.c
index 0f3eb9a..9f2067c 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -113,3 +113,5 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 	return -1;
 }
 EXPORT_SYMBOL(parse_area_spec);
+
+const char hex_asc[] = "0123456789abcdef";
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
