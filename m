Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xIb-00033H-QY
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:41:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:41:00 +0200
Message-Id: <1434962466-23590-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434962466-23590-1-git-send-email-s.hauer@pengutronix.de>
References: <1434962466-23590-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] mtd: cfi-flash: remove unnecessary ifdefs
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 98ce791..762a6c6 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -168,19 +168,15 @@ static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint o
 {
 	uchar *addr;
 	ulong retval;
-
-#ifdef DEBUG
 	int x;
-#endif
+
 	addr = flash_make_addr (info, sect, offset);
 
-#ifdef DEBUG
 	dev_dbg(info->dev, "long addr is at %p info->portwidth = %d\n", addr,
 	       info->portwidth);
-	for (x = 0; x < 4 * info->portwidth; x++) {
+	for (x = 0; x < 4 * info->portwidth; x++)
 		dev_dbg(info->dev, "addr[%x] = 0x%x\n", x, flash_read8(addr + x));
-	}
-#endif
+
 #if defined __LITTLE_ENDIAN
 	retval = ((flash_read8(addr) << 16) |
 		  (flash_read8(addr + info->portwidth) << 24) |
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
