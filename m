Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxS-0005LJ-Tm
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:29 +0100
Message-Id: <1458040534-6171-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/16] mtd: ubi: Use mtd_peb_check_all_ff
To: Barebox List <barebox@lists.infradead.org>

Use mtd-peb function for checking for a all-ff buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/io.c | 39 ++-------------------------------------
 1 file changed, 2 insertions(+), 37 deletions(-)

diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index 801c0eb..4495996 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -83,6 +83,7 @@
  */
 
 #include <linux/err.h>
+#include <mtd/mtd-peb.h>
 #include "ubi.h"
 
 static int self_check_not_bad(const struct ubi_device *ubi, int pnum);
@@ -1361,44 +1362,8 @@ out_free:
  */
 int ubi_self_check_all_ff(struct ubi_device *ubi, int pnum, int offset, int len)
 {
-	size_t read;
-	int err;
-	void *buf;
-	loff_t addr = (loff_t)pnum * ubi->peb_size + offset;
-
 	if (!ubi_dbg_chk_io(ubi))
 		return 0;
 
-	buf = kmalloc(len, GFP_KERNEL);
-	if (!buf) {
-		ubi_err("cannot allocate memory to check for 0xFFs");
-		return 0;
-	}
-
-	err = mtd_read(ubi->mtd, addr, len, &read, buf);
-	if (err && !mtd_is_bitflip(err)) {
-		ubi_err("error %d while reading %d bytes from PEB %d:%d, read %zd bytes",
-			err, len, pnum, offset, read);
-		goto error;
-	}
-
-	err = mtd_buf_all_ff(buf, len);
-	if (err == 0) {
-		ubi_err("flash region at PEB %d:%d, length %d does not contain all 0xFF bytes",
-			pnum, offset, len);
-		goto fail;
-	}
-
-	vfree(buf);
-	return 0;
-
-fail:
-	ubi_err("self-check failed for PEB %d", pnum);
-	ubi_msg("hex dump of the %d-%d region", offset, offset + len);
-	print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1, buf, len, 1);
-	err = -EINVAL;
-error:
-	dump_stack();
-	vfree(buf);
-	return err;
+	return mtd_peb_check_all_ff(ubi->mtd, pnum, offset, len, 1);
 }
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
