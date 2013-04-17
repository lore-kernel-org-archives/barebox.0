Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USQhr-0002N6-FX
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 11:39:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Apr 2013 13:39:03 +0200
Message-Id: <1366198748-22717-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
References: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] memory commands: move memory_display to separate file
To: barebox@lists.infradead.org

memory_display is a function which should generally be available.
Currently it depends on memory command support being compiled in,
so move the function to a separate file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c          | 68 -------------------------------------------------
 common/Makefile         |  1 +
 common/memory_display.c | 64 ++++++++++++++++++++++++++++++++++++++++++++++
 include/common.h        |  2 +-
 4 files changed, 66 insertions(+), 69 deletions(-)
 create mode 100644 common/memory_display.c

diff --git a/commands/mem.c b/commands/mem.c
index f25c6b6..a4a1658 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -44,74 +44,6 @@ static char *rw_buf;
 
 static char *DEVMEM = "/dev/mem";
 
-/* Memory Display
- *
- * Syntax:
- *	md{.b, .w, .l} {addr} {len}
- */
-#define DISP_LINE_LEN	16
-
-int memory_display(char *addr, loff_t offs, ulong nbytes, int size, int swab)
-{
-	ulong linebytes, i;
-	u_char	*cp;
-
-	/* Print the lines.
-	 *
-	 * We buffer all read data, so we can make sure data is read only
-	 * once, and all accesses are with the specified bus width.
-	 */
-	do {
-		char	linebuf[DISP_LINE_LEN];
-		uint	*uip = (uint   *)linebuf;
-		ushort	*usp = (ushort *)linebuf;
-		u_char	*ucp = (u_char *)linebuf;
-		uint	count = 52;
-
-		printf("%08llx:", offs);
-		linebytes = (nbytes > DISP_LINE_LEN) ? DISP_LINE_LEN : nbytes;
-
-		for (i = 0; i < linebytes; i += size) {
-			if (size == 4) {
-				u32 res;
-				res = (*uip++ = *((uint *)addr));
-				if (swab)
-					res = __swab32(res);
-				count -= printf(" %08x", res);
-			} else if (size == 2) {
-				u16 res;
-				res = (*usp++ = *((ushort *)addr));
-				if (swab)
-					res = __swab16(res);
-				count -= printf(" %04x", res);
-			} else {
-				count -= printf(" %02x", (*ucp++ = *((u_char *)addr)));
-			}
-			addr += size;
-			offs += size;
-		}
-
-		while(count--)
-			putchar(' ');
-
-		cp = (u_char *)linebuf;
-		for (i=0; i<linebytes; i++) {
-			if ((*cp < 0x20) || (*cp > 0x7e))
-				putchar('.');
-			else
-				printf("%c", *cp);
-			cp++;
-		}
-		putchar('\n');
-		nbytes -= linebytes;
-		if (ctrlc()) {
-			return -EINTR;
-		}
-	} while (nbytes > 0);
-
-	return 0;
-}
-
 int open_and_lseek(const char *filename, int mode, loff_t pos)
 {
 	int fd, ret;
diff --git a/common/Makefile b/common/Makefile
index dcb07c2..9460172 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_OFTREE)		+= oftree.o
 
 obj-y += memory.o
+obj-y += memory_display.o
 obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
 obj-$(CONFIG_MALLOC_TLSF) += tlsf_malloc.o
 obj-$(CONFIG_MALLOC_TLSF) += tlsf.o
diff --git a/common/memory_display.c b/common/memory_display.c
new file mode 100644
index 0000000..eb188e1
--- /dev/null
+++ b/common/memory_display.c
@@ -0,0 +1,64 @@
+#include <common.h>
+
+#define DISP_LINE_LEN	16
+
+int memory_display(char *addr, loff_t offs, unsigned nbytes, int size, int swab)
+{
+	ulong linebytes, i;
+	u_char	*cp;
+
+	/* Print the lines.
+	 *
+	 * We buffer all read data, so we can make sure data is read only
+	 * once, and all accesses are with the specified bus width.
+	 */
+	do {
+		char linebuf[DISP_LINE_LEN];
+		uint32_t *uip = (uint   *)linebuf;
+		uint16_t *usp = (ushort *)linebuf;
+		uint8_t *ucp = (u_char *)linebuf;
+		unsigned count = 52;
+
+		printf("%08llx:", offs);
+		linebytes = (nbytes > DISP_LINE_LEN) ? DISP_LINE_LEN : nbytes;
+
+		for (i = 0; i < linebytes; i += size) {
+			if (size == 4) {
+				u32 res;
+				res = (*uip++ = *((uint *)addr));
+				if (swab)
+					res = __swab32(res);
+				count -= printf(" %08x", res);
+			} else if (size == 2) {
+				u16 res;
+				res = (*usp++ = *((ushort *)addr));
+				if (swab)
+					res = __swab16(res);
+				count -= printf(" %04x", res);
+			} else {
+				count -= printf(" %02x", (*ucp++ = *((u_char *)addr)));
+			}
+			addr += size;
+			offs += size;
+		}
+
+		while (count--)
+			putchar(' ');
+
+		cp = (uint8_t *)linebuf;
+		for (i = 0; i < linebytes; i++) {
+			if ((*cp < 0x20) || (*cp > 0x7e))
+				putchar('.');
+			else
+				printf("%c", *cp);
+			cp++;
+		}
+
+		putchar('\n');
+		nbytes -= linebytes;
+		if (ctrlc())
+			return -EINTR;
+	} while (nbytes > 0);
+
+	return 0;
+}
diff --git a/include/common.h b/include/common.h
index 2263c00..11904ab 100644
--- a/include/common.h
+++ b/include/common.h
@@ -219,7 +219,7 @@ int run_shell(void);
 #define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
 #define PAGE_ALIGN_DOWN(x) ((x) & ~(PAGE_SIZE - 1))
 
-int memory_display(char *addr, loff_t offs, ulong nbytes, int size, int swab);
+int memory_display(char *addr, loff_t offs, unsigned nbytes, int size, int swab);
 
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
