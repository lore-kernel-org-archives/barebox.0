Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uf3sF-0001Xh-5B
 for barebox@lists.infradead.org; Wed, 22 May 2013 07:54:16 +0000
Received: from mailout-de.gmx.net ([10.1.76.29]) by mrigmx.server.lan
 (mrigmx001) with ESMTP (Nemesis) id 0Mfl1O-1Ur4yg2zEC-00NBFt for
 <barebox@lists.infradead.org>; Wed, 22 May 2013 09:53:50 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 22 May 2013 09:53:39 +0200
Message-Id: <1369209220-14529-2-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1369209220-14529-1-git-send-email-linux@rempel-privat.de>
References: <1369209220-14529-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 1/2 v2] cfi_flash: add shift option for some cfi memory chips
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <bug-track@fisher-privat.net>

From: Oleksij Rempel <bug-track@fisher-privat.net>

Many cfi chips support 16 and 8 bit modes. Most important
difference is use of so called "Q15/A-1" pin. In 16bit mode this
pin is used for data IO. In 8bit mode, it is an address input
which add one more least significant bit (LSB). In this case
we should shift all adresses by one:
For example 0xaa << 1 = 0x154

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/mtd/nor/cfi_flash.c | 23 +++++++++++++++++++----
 drivers/mtd/nor/cfi_flash.h |  4 +++-
 2 files changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 0cfac2d..4b4e29d 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -240,10 +240,10 @@ static void flash_read_cfi (struct flash_info *info, void *buf,
 		p[i] = flash_read_uchar(info, start + i);
 }
 
-static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
+static int flash_detect_width (struct flash_info *info, struct cfi_qry *qry)
 {
 	int cfi_offset;
-	debug ("flash detect cfi\n");
+
 
 	for (info->portwidth = CFG_FLASH_CFI_WIDTH;
 	     info->portwidth <= FLASH_CFI_64BIT; info->portwidth <<= 1) {
@@ -264,8 +264,8 @@ static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
 					info->cfi_offset=flash_offset_cfi[cfi_offset];
 					debug ("device interface is %d\n",
 						info->interface);
-					debug ("found port %d chip %d ",
-						info->portwidth, info->chipwidth);
+					debug ("found port %d chip %d chip_lsb %d ",
+						info->portwidth, info->chipwidth, info->chip_lsb);
 					debug ("port %d bits chip %d bits\n",
 						info->portwidth << CFI_FLASH_SHIFT_WIDTH,
 						info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
@@ -278,6 +278,21 @@ static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
 	return 0;
 }
 
+static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
+{
+	int ret;
+
+	debug ("flash detect cfi\n");
+
+	info->chip_lsb = 0;
+	ret = flash_detect_width (info, qry);
+	if (!ret) {
+		info->chip_lsb = 1;
+		ret = flash_detect_width (info, qry);
+	}
+	return ret;
+}
+
 /*
  * The following code cannot be run from FLASH!
  */
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
index bcf5c40..2a2454c 100644
--- a/drivers/mtd/nor/cfi_flash.h
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -57,6 +57,8 @@ struct flash_info {
 
 	uchar	portwidth;		/* the width of the port		*/
 	uchar	chipwidth;		/* the width of the chip		*/
+	uchar	chip_lsb;		/* extra Least Significant Bit in the	*/
+					/*   address of chip.			*/
 	ushort	buffer_size;		/* # of bytes in write buffer		*/
 	ulong	erase_blk_tout;		/* maximum block erase timeout		*/
 	ulong	write_tout;		/* maximum write timeout		*/
@@ -298,7 +300,7 @@ static inline u64 flash_read64(void *addr)
  */
 static inline uchar *flash_make_addr (struct flash_info *info, flash_sect_t sect, uint offset)
 {
-	return ((uchar *) (info->start[sect] + (offset * info->portwidth)));
+	return ((uchar *) (info->start[sect] + ((offset * info->portwidth) << info->chip_lsb)));
 }
 
 uchar flash_read_uchar (struct flash_info *info, uint offset);
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
