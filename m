Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxvN-0003zi-Kk
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:45:08 +0000
Received: by mail-pf0-x243.google.com with SMTP id d5so17400480pfe.1
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:44:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:44:28 -0700
Message-Id: <20170619144431.20843-4-andrew.smirnov@gmail.com>
In-Reply-To: <20170619144431.20843-1-andrew.smirnov@gmail.com>
References: <20170619144431.20843-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] mtd: dataflash: Replace pr_debug,
 printk with dev_* functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

Lion's share of calls to pr_debug in this driver follow the pattern of
pr_debug("%s <message>", dev_name(<dev>), <arguments>), which should
be semantically identical to dev_dbg(<dev>, "<message>", <arguments>),
so replace such occurencies to simplify the code.

Convert the small minority of pr_debug that do not follow pattern from
above to use dev_dbg as well, for the sake of consistency.

Convert similar patter of printk(KERN_ERR, "%s: ...", dev_name(...),
...) to use dev_err instead.

No functional change intended.

This is a backport of kernel commit
02f62864f6cebbbbff6bb611fddf78c1d05a9747

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/devices/mtd_dataflash.c | 75 ++++++++++++++++---------------------
 1 file changed, 33 insertions(+), 42 deletions(-)

diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index f47553a..96dd35e 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -123,8 +123,7 @@ static int dataflash_waitready(struct spi_device *spi)
 	for (;;) {
 		status = dataflash_status(spi);
 		if (status < 0) {
-			pr_debug("%s: status %d?\n",
-					dev_name(&spi->dev), status);
+			dev_dbg(&spi->dev, "status %d?\n", status);
 			status = 0;
 		}
 
@@ -150,9 +149,8 @@ static int dataflash_erase(struct mtd_info *mtd, struct erase_info *instr)
 	u8			*command;
 	u32			rem;
 
-	pr_debug("%s: erase addr=0x%llx len 0x%llx\n",
-	      dev_name(&spi->dev), (long long)instr->addr,
-	      (long long)instr->len);
+	dev_dbg(&spi->dev, "erase addr=0x%llx len 0x%llx\n",
+		(long long)instr->addr, (long long)instr->len);
 
 	div_u64_rem(instr->len, priv->page_size, &rem);
 	if (rem)
@@ -186,7 +184,7 @@ static int dataflash_erase(struct mtd_info *mtd, struct erase_info *instr)
 		command[2] = (u8)(pageaddr >> 8);
 		command[3] = 0;
 
-		pr_debug("ERASE %s: (%x) %x %x %x [%i]\n",
+		dev_dbg(&spi->dev, "ERASE %s: (%x) %x %x %x [%i]\n",
 			do_block ? "block" : "page",
 			command[0], command[1], command[2], command[3],
 			pageaddr);
@@ -195,8 +193,8 @@ static int dataflash_erase(struct mtd_info *mtd, struct erase_info *instr)
 		(void) dataflash_waitready(spi);
 
 		if (status < 0) {
-			printk(KERN_ERR "%s: erase %x, err %d\n",
-				dev_name(&spi->dev), pageaddr, status);
+			dev_err(&spi->dev, "erase %x, err %d\n",
+				pageaddr, status);
 			/* REVISIT:  can retry instr->retries times; or
 			 * giveup and instr->fail_addr = instr->addr;
 			 */
@@ -236,8 +234,8 @@ static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
 	u8			*command;
 	int			status;
 
-	pr_debug("%s: read 0x%x..0x%x\n", dev_name(&priv->spi->dev),
-			(unsigned)from, (unsigned)(from + len));
+	dev_dbg(&priv->spi->dev, "read 0x%x..0x%x\n",
+		(unsigned)from, (unsigned)(from + len));
 
 	/* Calculate flash page/byte address */
 	addr = (((unsigned)from / priv->page_size) << priv->page_offset)
@@ -245,7 +243,7 @@ static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
 
 	command = priv->command;
 
-	pr_debug("READ: (%x) %x %x %x\n",
+	dev_dbg(&priv->spi->dev, "READ: (%x) %x %x %x\n",
 		command[0], command[1], command[2], command[3]);
 
 	spi_message_init(&msg);
@@ -276,8 +274,7 @@ static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
 		*retlen = msg.actual_length - 8;
 		status = 0;
 	} else
-		pr_debug("%s: read %x..%x --> %d\n",
-			dev_name(&priv->spi->dev),
+		dev_dbg(&priv->spi->dev, "read %x..%x --> %d\n",
 			(unsigned)from, (unsigned)(from + len),
 			status);
 	return status;
@@ -303,8 +300,8 @@ static int dataflash_write(struct mtd_info *mtd, loff_t to, size_t len,
 	int			status = -EINVAL;
 	u8			*command;
 
-	pr_debug("%s: write 0x%x..0x%x\n",
-		dev_name(&spi->dev), (unsigned)to, (unsigned)(to + len));
+	dev_dbg(&spi->dev, "write 0x%x..0x%x\n",
+		(unsigned)to, (unsigned)(to + len));
 
 	spi_message_init(&msg);
 
@@ -322,7 +319,7 @@ static int dataflash_write(struct mtd_info *mtd, loff_t to, size_t len,
 		writelen = len;
 
 	while (remaining > 0) {
-		pr_debug("write @ %i:%i len=%i\n",
+		dev_dbg(&spi->dev, "write @ %i:%i len=%i\n",
 			pageaddr, offset, writelen);
 
 		/* REVISIT:
@@ -350,13 +347,13 @@ static int dataflash_write(struct mtd_info *mtd, loff_t to, size_t len,
 			command[2] = (addr & 0x0000FF00) >> 8;
 			command[3] = 0;
 
-			pr_debug("TRANSFER: (%x) %x %x %x\n",
+			dev_dbg(&spi->dev, "TRANSFER: (%x) %x %x %x\n",
 				command[0], command[1], command[2], command[3]);
 
 			status = spi_sync(spi, &msg);
 			if (status < 0)
-				pr_debug("%s: xfer %u -> %d\n",
-					dev_name(&spi->dev), addr, status);
+				dev_dbg(&spi->dev, "xfer %u -> %d\n",
+					addr, status);
 
 			(void) dataflash_waitready(priv->spi);
 		}
@@ -368,7 +365,7 @@ static int dataflash_write(struct mtd_info *mtd, loff_t to, size_t len,
 		command[2] = (addr & 0x0000FF00) >> 8;
 		command[3] = (addr & 0x000000FF);
 
-		pr_debug("PROGRAM: (%x) %x %x %x\n",
+		dev_dbg(&spi->dev, "PROGRAM: (%x) %x %x %x\n",
 			command[0], command[1], command[2], command[3]);
 
 		x[1].tx_buf = writebuf;
@@ -377,8 +374,8 @@ static int dataflash_write(struct mtd_info *mtd, loff_t to, size_t len,
 		status = spi_sync(spi, &msg);
 		spi_transfer_del(x + 1);
 		if (status < 0)
-			pr_debug("%s: pgm %u/%u -> %d\n",
-				dev_name(&spi->dev), addr, writelen, status);
+			dev_dbg(&spi->dev, "pgm %u/%u -> %d\n",
+				addr, writelen, status);
 
 		(void) dataflash_waitready(priv->spi);
 
@@ -392,20 +389,20 @@ static int dataflash_write(struct mtd_info *mtd, loff_t to, size_t len,
 		command[2] = (addr & 0x0000FF00) >> 8;
 		command[3] = 0;
 
-		pr_debug("COMPARE: (%x) %x %x %x\n",
+		dev_dbg(&spi->dev, "COMPARE: (%x) %x %x %x\n",
 			command[0], command[1], command[2], command[3]);
 
 		status = spi_sync(spi, &msg);
 		if (status < 0)
-			pr_debug("%s: compare %u -> %d\n",
-				dev_name(&spi->dev), addr, status);
+			dev_dbg(&spi->dev, "compare %u -> %d\n",
+				addr, status);
 
 		status = dataflash_waitready(priv->spi);
 
 		/* Check result of the compare operation */
 		if (status & (1 << 6)) {
-			printk(KERN_ERR "%s: compare page %u, err %d\n",
-				dev_name(&spi->dev), pageaddr, status);
+			dev_err(&spi->dev, "compare page %u, err %d\n",
+				pageaddr, status);
 			remaining = 0;
 			status = -EIO;
 			break;
@@ -735,8 +732,7 @@ static struct flash_info * jedec_probe(struct spi_device *spi)
 	 */
 	ret = spi_write_then_read(spi, &code, 1, id, 3);
 	if (ret < 0) {
-		pr_debug("%s: error %d reading JEDEC ID\n",
-			dev_name(&spi->dev), ret);
+		dev_dbg(&spi->dev, "error %d reading JEDEC ID\n", ret);
 		return ERR_PTR(ret);
 	}
 
@@ -753,16 +749,14 @@ static struct flash_info * jedec_probe(struct spi_device *spi)
 			i < ARRAY_SIZE(dataflash_data);
 			i++, info++) {
 		if (info->jedec_id == jedec) {
-			pr_debug("%s: OTP, sector protect%s\n",
-				dev_name(&spi->dev),
-				(info->flags & SUP_POW2PS)
-					? ", binary pagesize" : ""
-				);
+			dev_dbg(&spi->dev, "OTP, sector protect%s\n",
+				(info->flags & SUP_POW2PS) ?
+				", binary pagesize" : "");
 			if (info->flags & SUP_POW2PS) {
 				status = dataflash_status(spi);
 				if (status < 0) {
-					pr_debug("%s: status error %d\n",
-						dev_name(&spi->dev), status);
+					dev_dbg(&spi->dev, "status error %d\n",
+						status);
 					return ERR_PTR(status);
 				}
 				if (status & 0x1) {
@@ -827,8 +821,7 @@ static int dataflash_probe(struct device_d *dev)
 	 */
 	status = dataflash_status(spi);
 	if (status <= 0 || status == 0xff) {
-		pr_debug("%s: status error %d\n",
-				dev_name(&spi->dev), status);
+		dev_dbg(&spi->dev, "status error %d\n", status);
 		if (status == 0 || status == 0xff)
 			status = -ENODEV;
 		return status;
@@ -863,14 +856,12 @@ static int dataflash_probe(struct device_d *dev)
 		break;
 	/* obsolete AT45DB1282 not (yet?) supported */
 	default:
-		pr_debug("%s: unsupported device (%x)\n", dev_name(&spi->dev),
-				status & 0x3c);
+		dev_dbg(&spi->dev, "unsupported device (%x)\n", status & 0x3c);
 		status = -ENODEV;
 	}
 
 	if (status < 0)
-		pr_debug("%s: add_dataflash --> %d\n", dev_name(&spi->dev),
-				status);
+		dev_dbg(&spi->dev, "add_dataflash --> %d\n", status);
 
 	return status;
 }
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
