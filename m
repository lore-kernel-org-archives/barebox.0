Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTioB-0002Cw-6E
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 07:38:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Dec 2018 08:37:57 +0100
Message-Id: <20181203073759.7864-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] memory_display: Print whole line at once
To: Barebox List <barebox@lists.infradead.org>

Instead of using many printf assemble a printed line first and
print it at once. This has the purpose of being able to pick
different output functions in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory_display.c | 35 ++++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/common/memory_display.c b/common/memory_display.c
index 30821cced4..03d418b33b 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -8,6 +8,7 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 {
 	unsigned long linebytes, i;
 	unsigned char *cp;
+	unsigned char line[sizeof("00000000: 0000 0000 0000 0000  0000 0000 0000 0000            ................")];
 
 	/* Print the lines.
 	 *
@@ -20,9 +21,9 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 		uint32_t *uip = (uint32_t *)linebuf;
 		uint16_t *usp = (uint16_t *)linebuf;
 		uint8_t *ucp = (uint8_t *)linebuf;
-		unsigned count = 52;
+		unsigned char *pos = line;
 
-		printf("%08llx:", offs);
+		pos += sprintf(pos, "%08llx:", offs);
 		linebytes = (nbytes > DISP_LINE_LEN) ? DISP_LINE_LEN : nbytes;
 
 		for (i = 0; i < linebytes; i += size) {
@@ -34,9 +35,9 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 					res = __swab64(res);
 				if (data_abort_unmask()) {
 					res = 0xffffffffffffffffULL;
-					count -= printf(" xxxxxxxxxxxxxxxx");
+					pos += sprintf(pos, " xxxxxxxxxxxxxxxx");
 				} else {
-					count -= printf(" %016llx", res);
+					pos += sprintf(pos, " %016llx", res);
 				}
 				*ullp++ = res;
 			} else if (size == 4) {
@@ -47,9 +48,9 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 					res = __swab32(res);
 				if (data_abort_unmask()) {
 					res = 0xffffffff;
-					count -= printf(" xxxxxxxx");
+					pos += sprintf(pos, " xxxxxxxx");
 				} else {
-					count -= printf(" %08x", res);
+					pos += sprintf(pos, " %08x", res);
 				}
 				*uip++ = res;
 			} else if (size == 2) {
@@ -59,12 +60,12 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 				if (swab)
 					res = __swab16(res);
 				if (i > 1 && i % 8 == 0)
-					count -= printf(" ");
+					pos += sprintf(pos, " ");
 				if (data_abort_unmask()) {
 					res = 0xffff;
-					count -= printf(" xxxx");
+					pos += sprintf(pos, " xxxx");
 				} else {
-					count -= printf(" %04x", res);
+					pos += sprintf(pos, " %04x", res);
 				}
 				*usp++ = res;
 			} else {
@@ -72,12 +73,12 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 				data_abort_mask();
 				res = *((uint8_t *)addr);
 				if (i > 1 && i % 8 == 0)
-					count -= printf(" ");
+					pos += sprintf(pos, " ");
 				if (data_abort_unmask()) {
 					res = 0xff;
-					count -= printf(" xx");
+					pos += sprintf(pos, " xx");
 				} else {
-					count -= printf(" %02x", res);
+					pos += sprintf(pos, " %02x", res);
 				}
 				*ucp++ = res;
 			}
@@ -85,19 +86,19 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 			offs += size;
 		}
 
-		while (count--)
-			putchar(' ');
+		pos += sprintf(pos, "%*s", 61 - (pos - line), "");
 
 		cp = linebuf;
 		for (i = 0; i < linebytes; i++) {
 			if ((*cp < 0x20) || (*cp > 0x7e))
-				putchar('.');
+				sprintf(pos, ".");
 			else
-				printf("%c", *cp);
+				sprintf(pos, "%c", *cp);
+			pos++;
 			cp++;
 		}
 
-		putchar('\n');
+		printf("%s\n", line);
 		nbytes -= linebytes;
 		if (ctrlc())
 			return -EINTR;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
