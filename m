Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLivT-00058O-HK
 for barebox@lists.infradead.org; Thu, 24 May 2018 05:36:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 May 2018 07:36:21 +0200
Message-Id: <20180524053621.995-2-s.hauer@pengutronix.de>
In-Reply-To: <20180524053621.995-1-s.hauer@pengutronix.de>
References: <20180524053621.995-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] imx-usb-loader: dump memory bytewise on verification
 mismatch
To: Barebox List <barebox@lists.infradead.org>

dump_long only prints the full words and does not print the unaligned
rest. This means that some bytes (and maybe actually the interesting
ones) may not be printed. Use dump_bytes instead which does not have
this problem.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 26 ++------------------------
 1 file changed, 2 insertions(+), 24 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 684e3f8a06..9a690e49c8 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -329,28 +329,6 @@ static libusb_device *find_imx_dev(libusb_device **devs, const struct mach_id **
 	return NULL;
 }
 
-static void dump_long(const void *src, unsigned cnt, unsigned addr)
-{
-	const unsigned *p = (unsigned *)src;
-
-	while (cnt >= 32) {
-		printf("%08x: %08x %08x %08x %08x  %08x %08x %08x %08x\n",
-				addr, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]);
-		p += 8;
-		cnt -= 32;
-		addr += 32;
-	}
-	if (cnt) {
-		printf("%08x:", addr);
-		while (cnt >= 4) {
-			printf(" %08x", p[0]);
-			p++;
-			cnt -= 4;
-		}
-		printf("\n");
-	}
-}
-
 static void dump_bytes(const void *src, unsigned cnt, unsigned addr)
 {
 	const unsigned char *p = src;
@@ -1177,9 +1155,9 @@ static int verify_memory(const void *buf, unsigned len, unsigned addr)
 
 		if (memcmp(buf + offset, readbuf + offset, now)) {
 			printf("mismatch at offset 0x%08x. expected:\n", offset);
-			dump_long(buf + offset, now, addr + offset);
+			dump_bytes(buf + offset, now, addr + offset);
 			printf("read:\n");
-			dump_long(readbuf + offset, now, addr + offset);
+			dump_bytes(readbuf + offset, now, addr + offset);
 			ret = -EINVAL;
 			mismatch++;
 			if (mismatch > 4)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
