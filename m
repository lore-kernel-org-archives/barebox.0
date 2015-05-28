Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9c-00066C-Du
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:36 +0200
Message-Id: <1432809284-17362-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] memory_display: Add 64bit support
To: Barebox List <barebox@lists.infradead.org>

Add support for showing hexdumps in 64bit width.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory_display.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/common/memory_display.c b/common/memory_display.c
index 1ad0f05..ea91985 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -16,6 +16,7 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 	 */
 	do {
 		unsigned char linebuf[DISP_LINE_LEN];
+		uint64_t *ullp = (uint64_t *)linebuf;
 		uint32_t *uip = (uint32_t *)linebuf;
 		uint16_t *usp = (uint16_t *)linebuf;
 		uint8_t *ucp = (uint8_t *)linebuf;
@@ -25,7 +26,20 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
 		linebytes = (nbytes > DISP_LINE_LEN) ? DISP_LINE_LEN : nbytes;
 
 		for (i = 0; i < linebytes; i += size) {
-			if (size == 4) {
+			if (size == 8) {
+				uint64_t res;
+				data_abort_mask();
+				res = *((uint64_t *)addr);
+				if (swab)
+					res = __swab64(res);
+				if (data_abort_unmask()) {
+					res = 0xffffffffffffffffULL;
+					count -= printf(" xxxxxxxxxxxxxxxx");
+				} else {
+					count -= printf(" %016llx", res);
+				}
+				*ullp++ = res;
+			} else if (size == 4) {
 				uint32_t res;
 				data_abort_mask();
 				res = *((uint32_t *)addr);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
