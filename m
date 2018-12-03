Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTioN-0002DV-1W
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 07:38:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Dec 2018 08:37:59 +0100
Message-Id: <20181203073759.7864-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] Add pr_memory_display
To: Barebox List <barebox@lists.infradead.org>

pr_memory_display is a memory_display variant that takes a MSG_*
loglevel priority with which the hexdump is printed. Like the
normal pr_* function this is optimized out when the priority is
below the compile time priority.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory_display.c | 37 ++++++++++++++++++++++++++++++++-----
 include/printk.h        |  8 ++++++++
 2 files changed, 40 insertions(+), 5 deletions(-)

diff --git a/common/memory_display.c b/common/memory_display.c
index 03d418b33b..cd0eadf88d 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -4,11 +4,21 @@
 
 #define DISP_LINE_LEN	16
 
-int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab)
+
+int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbytes,
+			int size, int swab, const char *fmt, ...)
 {
 	unsigned long linebytes, i;
 	unsigned char *cp;
 	unsigned char line[sizeof("00000000: 0000 0000 0000 0000  0000 0000 0000 0000            ................")];
+	struct va_format vaf;
+	int ret;
+	va_list args;
+
+	va_start(args, fmt);
+
+	vaf.fmt = fmt;
+	vaf.va = &args;
 
 	/* Print the lines.
 	 *
@@ -98,11 +108,28 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 			cp++;
 		}
 
-		printf("%s\n", line);
+		if (level >= MSG_EMERG)
+			pr_print(level, "%pV%s\n", &vaf, line);
+		else
+			printf("%s\n", line);
+
 		nbytes -= linebytes;
-		if (ctrlc())
-			return -EINTR;
+		if (ctrlc()) {
+			ret = -EINTR;
+			goto out;
+		}
+
 	} while (nbytes > 0);
 
-	return 0;
+	va_end(args);
+	ret = 0;
+out:
+
+	return ret;
 }
+
+int memory_display(const void *addr, loff_t offs, unsigned nbytes,
+		   int size, int swab)
+{
+	return pr_memory_display(-1, addr, offs, nbytes, size, swab);
+}
\ No newline at end of file
diff --git a/include/printk.h b/include/printk.h
index 4843dadd76..aaad07552e 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -105,6 +105,14 @@ static inline int pr_print(int level, const char *format, ...)
 
 int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size,
 		   int swab);
+int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbytes,
+			int size, int swab, const char *format, ...);
+
+#define pr_memory_display(level, addr, offs, nbytes, size, swab) \
+	({	\
+		(level) <= LOGLEVEL ? __pr_memory_display((level), (addr), \
+				(offs), (nbytes), (size), (swab), pr_fmt("")) : 0; \
+	 })
 
 #define DUMP_PREFIX_OFFSET 0
 static inline void print_hex_dump(const char *level, const char *prefix_str,
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
