Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6gz9-0005cK-2I
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:07:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:07:05 +0200
Message-Id: <1375794428-29577-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
References: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] move print_hex_dump function to include/common.h
To: barebox@lists.infradead.org

print_hex_dump is a standard kernel function, so move it outside
the ubi header files to make it usable for other code derived from
the kernel aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/ubi-barebox.h | 8 --------
 include/common.h              | 8 ++++++++
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
index 58c8a62..03069d0 100644
--- a/drivers/mtd/ubi/ubi-barebox.h
+++ b/drivers/mtd/ubi/ubi-barebox.h
@@ -32,14 +32,6 @@
 #define CONFIG_MTD_UBI_WL_THRESHOLD	4096
 #define UBI_IO_DEBUG			0
 
-#define DUMP_PREFIX_OFFSET 0
-static inline void print_hex_dump(const char *level, const char *prefix_str,
-		int prefix_type, int rowsize, int groupsize,
-		const void *buf, size_t len, bool ascii)
-{
-	memory_display(buf, 0, len, 4, 0);
-}
-
 /* upd.c */
 static inline unsigned long copy_from_user(void *dest, const void *src,
 					   unsigned long count)
diff --git a/include/common.h b/include/common.h
index e813726..5126f23 100644
--- a/include/common.h
+++ b/include/common.h
@@ -222,6 +222,14 @@ int run_shell(void);
 
 int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab);
 
+#define DUMP_PREFIX_OFFSET 0
+static inline void print_hex_dump(const char *level, const char *prefix_str,
+		int prefix_type, int rowsize, int groupsize,
+		const void *buf, size_t len, bool ascii)
+{
+	memory_display(buf, 0, len, 4, 0);
+}
+
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
 int open_and_lseek(const char *filename, int mode, loff_t pos);
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
