Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGjX-0005mx-8Y
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 17:59:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 19:59:15 +0200
Message-Id: <1343757556-11897-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343757556-11897-1-git-send-email-s.hauer@pengutronix.de>
References: <1343757556-11897-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/6] nor m25p80: optimize erase
To: barebox@lists.infradead.org

The driver currently erases blocks in 4kb chunks if 4kb support is
available. This patch uses bigger blocks for suitable areas to speed
up erasing areas.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/m25p80.c |   59 +++++++++++++++++++++++++++++++++++---------------
 drivers/nor/m25p80.h |    2 ++
 2 files changed, 44 insertions(+), 17 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 7ff4546..4b62e93 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -168,7 +168,7 @@ static int m25p_cmdsz(struct m25p *flash)
  *
  * Returns 0 if successful, non-zero otherwise.
  */
-static int erase_sector(struct m25p *flash, u32 offset)
+static int erase_sector(struct m25p *flash, u32 offset, u32 command)
 {
 	dev_dbg(&flash->spi->dev, "%s %dKiB at 0x%08x\n",
 		__func__, flash->erasesize / 1024, offset);
@@ -181,7 +181,7 @@ static int erase_sector(struct m25p *flash, u32 offset)
 	write_enable(flash);
 
 	/* Set up command buffer. */
-	flash->command[0] = flash->erase_opcode;
+	flash->command[0] = command;
 	m25p_addr2cmd(flash, offset, flash->command);
 
 	spi_write(flash->spi, flash->command, m25p_cmdsz(flash));
@@ -216,22 +216,45 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 		return 0;
 	}
 
-	/* REVISIT in some cases we could speed up erasing large regions
-	 * by using OPCODE_SE instead of OPCODE_BE_4K.  We may have set up
-	 * to use "small sector erase", but that's not always optimal.
-	 */
+	if (flash->erase_opcode_4k) {
+		while (len && (addr & (flash->sector_size - 1))) {
+			if (ctrlc())
+				return -EINTR;
+			if (erase_sector(flash, addr, flash->erase_opcode_4k))
+				return -EIO;
+			addr += flash->erasesize;
+			len -= flash->erasesize;
+		}
 
-	/* "sector"-at-a-time erase */
-	while (len) {
-		if (ctrlc())
-			return -EINTR;
-		if (erase_sector(flash, addr))
-			return -EIO;
+		while (len >= flash->sector_size) {
+			if (ctrlc())
+				return -EINTR;
+			if (erase_sector(flash, addr, flash->erase_opcode))
+				return -EIO;
+			addr += flash->sector_size;
+			len -= flash->sector_size;
+		}
 
-		if (len <= flash->erasesize)
-			break;
-		addr += flash->erasesize;
-		len -= flash->erasesize;
+		while (len) {
+			if (ctrlc())
+				return -EINTR;
+			if (erase_sector(flash, addr, flash->erase_opcode_4k))
+				return -EIO;
+			addr += flash->erasesize;
+			len -= flash->erasesize;
+		}
+	} else {
+		while (len) {
+			if (ctrlc())
+				return -EINTR;
+			if (erase_sector(flash, addr, flash->erase_opcode))
+				return -EIO;
+
+			if (len <= flash->erasesize)
+				break;
+			addr += flash->erasesize;
+			len -= flash->erasesize;
+		}
 	}
 
 	return 0;
@@ -753,6 +776,7 @@ static int m25p_probe(struct device_d *dev)
 	flash->info = info;
 	flash->size = info->sector_size * info->n_sectors;
 	flash->erasesize = info->sector_size;
+	flash->sector_size = info->sector_size;
 	flash->cdev.size = info->sector_size * info->n_sectors;
 	flash->cdev.dev = dev;
 	flash->cdev.ops = &m25p80_ops;
@@ -773,7 +797,8 @@ static int m25p_probe(struct device_d *dev)
 
 	/* prefer "small sector" erase if possible */
 	if (info->flags & SECT_4K) {
-		flash->erase_opcode = OPCODE_BE_4K;
+		flash->erase_opcode_4k = OPCODE_BE_4K;
+		flash->erase_opcode = OPCODE_SE;
 		flash->erasesize = 4096;
 	} else {
 		flash->erase_opcode = OPCODE_SE;
diff --git a/drivers/nor/m25p80.h b/drivers/nor/m25p80.h
index 3f9dd9c..ce48ba7 100644
--- a/drivers/nor/m25p80.h
+++ b/drivers/nor/m25p80.h
@@ -58,9 +58,11 @@ struct m25p {
 	struct cdev		cdev;
 	char			*name;
 	u32			erasesize;
+	u32			sector_size;
 	u16			page_size;
 	u16			addr_width;
 	u8			erase_opcode;
+	u8			erase_opcode_4k;
 	u8			*command;
 	u32			size;
 };
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
