Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9X-00065B-Jp
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:35 +0200
Message-Id: <1432809284-17362-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1432809284-17362-1-git-send-email-s.hauer@pengutronix.de>
References: <1432809284-17362-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] memory_display: Use consistent types
To: Barebox List <barebox@lists.infradead.org>

memory_display uses three different types for 32bit variables, three
types for 16bit variables and three types for 8bit variables. Clean up
this mess and use one type per variable width.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory_display.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/common/memory_display.c b/common/memory_display.c
index 7b1d35e..1ad0f05 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -6,8 +6,8 @@
 
 int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab)
 {
-	ulong linebytes, i;
-	u_char	*cp;
+	unsigned long linebytes, i;
+	unsigned char *cp;
 
 	/* Print the lines.
 	 *
@@ -15,10 +15,10 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 	 * once, and all accesses are with the specified bus width.
 	 */
 	do {
-		char linebuf[DISP_LINE_LEN];
-		uint32_t *uip = (uint   *)linebuf;
-		uint16_t *usp = (ushort *)linebuf;
-		uint8_t *ucp = (u_char *)linebuf;
+		unsigned char linebuf[DISP_LINE_LEN];
+		uint32_t *uip = (uint32_t *)linebuf;
+		uint16_t *usp = (uint16_t *)linebuf;
+		uint8_t *ucp = (uint8_t *)linebuf;
 		unsigned count = 52;
 
 		printf("%08llx:", offs);
@@ -26,9 +26,9 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 
 		for (i = 0; i < linebytes; i += size) {
 			if (size == 4) {
-				u32 res;
+				uint32_t res;
 				data_abort_mask();
-				res = *((uint *)addr);
+				res = *((uint32_t *)addr);
 				if (swab)
 					res = __swab32(res);
 				if (data_abort_unmask()) {
@@ -39,9 +39,9 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 				}
 				*uip++ = res;
 			} else if (size == 2) {
-				u16 res;
+				uint16_t res;
 				data_abort_mask();
-				res = *((ushort *)addr);
+				res = *((uint16_t *)addr);
 				if (swab)
 					res = __swab16(res);
 				if (data_abort_unmask()) {
@@ -52,9 +52,9 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 				}
 				*usp++ = res;
 			} else {
-				u8 res;
+				uint8_t res;
 				data_abort_mask();
-				res = *((u_char *)addr);
+				res = *((uint8_t *)addr);
 				if (data_abort_unmask()) {
 					res = 0xff;
 					count -= printf(" xx");
@@ -70,7 +70,7 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 		while (count--)
 			putchar(' ');
 
-		cp = (uint8_t *)linebuf;
+		cp = linebuf;
 		for (i = 0; i < linebytes; i++) {
 			if ((*cp < 0x20) || (*cp > 0x7e))
 				putchar('.');
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
