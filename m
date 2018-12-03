Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTioB-0002Ct-6i
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 07:38:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Dec 2018 08:37:58 +0100
Message-Id: <20181203073759.7864-2-s.hauer@pengutronix.de>
In-Reply-To: <20181203073759.7864-1-s.hauer@pengutronix.de>
References: <20181203073759.7864-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] memory_display: move prototype to include/printk.h
To: Barebox List <barebox@lists.infradead.org>

It's where the kernel has the print_hex_dump prototypes aswell, it's a
better match for these.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/common.h | 10 ----------
 include/printk.h | 11 +++++++++++
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/include/common.h b/include/common.h
index f52c7e430c..11d26cb3db 100644
--- a/include/common.h
+++ b/include/common.h
@@ -112,16 +112,6 @@ void shutdown_barebox(void);
 #define PAGE_ALIGN(s)	ALIGN(s, PAGE_SIZE)
 #define PAGE_ALIGN_DOWN(x) ALIGN_DOWN(x, PAGE_SIZE)
 
-int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab);
-
-#define DUMP_PREFIX_OFFSET 0
-static inline void print_hex_dump(const char *level, const char *prefix_str,
-		int prefix_type, int rowsize, int groupsize,
-		const void *buf, size_t len, bool ascii)
-{
-	memory_display(buf, 0, len, 4, 0);
-}
-
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
 #define RW_BUF_SIZE	(unsigned)4096
diff --git a/include/printk.h b/include/printk.h
index 858e800543..4843dadd76 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -103,6 +103,17 @@ static inline int pr_print(int level, const char *format, ...)
 	}							\
 })
 
+int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size,
+		   int swab);
+
+#define DUMP_PREFIX_OFFSET 0
+static inline void print_hex_dump(const char *level, const char *prefix_str,
+		int prefix_type, int rowsize, int groupsize,
+		const void *buf, size_t len, bool ascii)
+{
+	memory_display(buf, 0, len, 4, 0);
+}
+
 struct log_entry {
 	struct list_head list;
 	char *msg;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
