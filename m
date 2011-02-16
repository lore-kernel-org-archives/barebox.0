Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplsz-0001nP-9A
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:02 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:31 +0100
Message-Id: <1297880025-7184-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 06/20] MACH-S3C2440: Speed up NAND controller for this CPU
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

The S3C2440 provides 32 bit access to the NAND's data. Add specific read
routines to speed up data reading and writing.

These routines are stolen from the Linux kernel.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 drivers/mtd/nand/nand_s3c2410.c |   55 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 55 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index 76ea9db..df0b7c1 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -194,6 +194,57 @@ static void __nand_boot_init disable_nand_controller(void __iomem *host)
 
 /* ----------------------------------------------------------------------- */
 
+#ifdef CONFIG_CPU_S3C2440
+/**
+ * Read one block of data from the NAND port
+ * @param[in] mtd Instance data
+ * @param[out] buf buffer to write data to
+ * @param[in] len byte count
+ *
+ * This is a special block read variant for the S3C2440 CPU.
+ */
+static void s3c2440_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct s3c24x0_nand_host *host = nand_chip->priv;
+
+	readsl(host->base + NFDATA, buf, len >> 2);
+
+	/* cleanup any fractional read */
+	if (len & 3) {
+		buf += len & ~3;
+
+		for (; len & 3; len--)
+			*buf++ = readb(host->base + NFDATA);
+	}
+}
+
+/**
+ * Write one block of data to the NAND port
+ * @param[in] mtd Instance data
+ * @param[out] buf buffer to read data from
+ * @param[in] len byte count
+ *
+ * This is a special block write variant for the S3C2440 CPU.
+ */
+static void s3c2440_nand_write_buf(struct mtd_info *mtd, const uint8_t *buf,
+					int len)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct s3c24x0_nand_host *host = nand_chip->priv;
+
+	writesl(host->base + NFDATA, buf, len >> 2);
+
+	/* cleanup any fractional write */
+	if (len & 3) {
+		buf += len & ~3;
+
+		for (; len & 3; len--, buf++)
+			writeb(*buf, host->base + NFDATA);
+	}
+}
+#endif
+
 /**
  * Check the ECC and try to repair the data if possible
  * @param[in] mtd_info FIXME
@@ -390,6 +441,10 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 
 	chip->IO_ADDR_R = chip->IO_ADDR_W = IOMEM(dev->map_base + NFDATA);
 
+#ifdef CONFIG_CPU_S3C2440
+	chip->read_buf = s3c2440_nand_read_buf;
+	chip->write_buf = s3c2440_nand_write_buf;
+#endif
 	chip->cmd_ctrl = s3c24x0_nand_hwcontrol;
 	chip->dev_ready = s3c24x0_nand_devready;
 	chip->select_chip = s3c24x0_nand_select_chip;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
