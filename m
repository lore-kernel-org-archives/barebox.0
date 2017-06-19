Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxvK-0003ze-OI
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:45:07 +0000
Received: by mail-pg0-x243.google.com with SMTP id e187so7589743pgc.3
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:44:42 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:44:26 -0700
Message-Id: <20170619144431.20843-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] mtd: dataflash: Replace C99 types with their kernel
 counterparts
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

No functional change intended.

This is a backport of kernel commit
c41e43c6faf68a9b70afdb0dfee45d196c27031b

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/devices/mtd_dataflash.c | 40 ++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index fa31b61..cdbb194 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -85,7 +85,7 @@
 
 
 struct dataflash {
-	uint8_t			command[4];
+	u8			command[4];
 	char			name[24];
 
 	unsigned		partitioned:1;
@@ -146,8 +146,8 @@ static int dataflash_erase(struct mtd_info *mtd, struct erase_info *instr)
 	struct spi_transfer	x;
 	struct spi_message	msg;
 	unsigned		blocksize = priv->page_size << 3;
-	uint8_t			*command;
-	uint32_t		rem;
+	u8			*command;
+	u32			rem;
 
 	pr_debug("%s: erase addr=0x%llx len 0x%llx\n",
 	      dev_name(&spi->dev), (long long)instr->addr,
@@ -181,8 +181,8 @@ static int dataflash_erase(struct mtd_info *mtd, struct erase_info *instr)
 		pageaddr = pageaddr << priv->page_offset;
 
 		command[0] = do_block ? OP_ERASE_BLOCK : OP_ERASE_PAGE;
-		command[1] = (uint8_t)(pageaddr >> 16);
-		command[2] = (uint8_t)(pageaddr >> 8);
+		command[1] = (u8)(pageaddr >> 16);
+		command[2] = (u8)(pageaddr >> 8);
 		command[3] = 0;
 
 		pr_debug("ERASE %s: (%x) %x %x %x [%i]\n",
@@ -232,7 +232,7 @@ static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
 	struct spi_transfer	x[2];
 	struct spi_message	msg;
 	unsigned int		addr;
-	uint8_t			*command;
+	u8			*command;
 	int			status;
 
 	pr_debug("%s: read 0x%x..0x%x\n", dev_name(&priv->spi->dev),
@@ -264,9 +264,9 @@ static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
 	 * fewer "don't care" bytes.  Both buffers stay unchanged.
 	 */
 	command[0] = OP_READ_CONTINUOUS;
-	command[1] = (uint8_t)(addr >> 16);
-	command[2] = (uint8_t)(addr >> 8);
-	command[3] = (uint8_t)(addr >> 0);
+	command[1] = (u8)(addr >> 16);
+	command[2] = (u8)(addr >> 8);
+	command[3] = (u8)(addr >> 0);
 	/* plus 4 "don't care" bytes */
 
 	status = spi_sync(priv->spi, &msg);
@@ -300,7 +300,7 @@ static int dataflash_write(struct mtd_info *mtd, loff_t to, size_t len,
 	size_t			remaining = len;
 	u_char			*writebuf = (u_char *) buf;
 	int			status = -EINVAL;
-	uint8_t			*command;
+	u8			*command;
 
 	pr_debug("%s: write 0x%x..0x%x\n",
 		dev_name(&spi->dev), (unsigned)to, (unsigned)(to + len));
@@ -446,11 +446,11 @@ static int dataflash_get_otp_info(struct mtd_info *mtd,
 }
 
 static ssize_t otp_read(struct spi_device *spi, unsigned base,
-		uint8_t *buf, loff_t off, size_t len)
+		u8 *buf, loff_t off, size_t len)
 {
 	struct spi_message	m;
 	size_t			l;
-	uint8_t			*scratch;
+	u8			*scratch;
 	struct spi_transfer	t;
 	int			status;
 
@@ -525,7 +525,7 @@ static int dataflash_write_user_otp(struct mtd_info *mtd,
 {
 	struct spi_message	m;
 	const size_t		l = 4 + 64;
-	uint8_t			*scratch;
+	u8			*scratch;
 	struct spi_transfer	t;
 	struct dataflash	*priv = mtd->priv;
 	int			status;
@@ -667,14 +667,14 @@ struct flash_info {
 	/* JEDEC id has a high byte of zero plus three data bytes:
 	 * the manufacturer id, then a two byte device id.
 	 */
-	uint32_t	jedec_id;
+	u32	jedec_id;
 
 	/* The size listed here is what works with OP_ERASE_PAGE. */
 	unsigned	nr_pages;
-	uint16_t	pagesize;
-	uint16_t	pageoffset;
+	u16		pagesize;
+	u16		pageoffset;
 
-	uint16_t	flags;
+	u16		flags;
 #define SUP_POW2PS	0x0002		/* supports 2^N byte pages */
 #define IS_POW2PS	0x0001		/* uses 2^N byte pages */
 };
@@ -717,9 +717,9 @@ static struct flash_info dataflash_data [] = {
 static struct flash_info * jedec_probe(struct spi_device *spi)
 {
 	int			tmp;
-	uint8_t			code = OP_READ_ID;
-	uint8_t			id[3];
-	uint32_t		jedec;
+	u8			code = OP_READ_ID;
+	u8			id[3];
+	u32			jedec;
 	struct flash_info	*info;
 	int status;
 
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
