Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PrqU6-0005qk-6J
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 11:32:51 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 22 Feb 2011 12:32:46 +0100
Message-Id: <1298374366-6956-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1298374366-6956-1-git-send-email-mkl@pengutronix.de>
References: <1298374366-6956-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH V2 3/3] atmel_nand: add support for flash based bad block table
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Inspired by Simon Polette's kernel commit
f4fa697c26bcd9e942de26bad970f4de1da5a49b.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---

Changes since V1:
- better commit message

 arch/arm/mach-at91/include/mach/board.h |    1 +
 drivers/mtd/nand/atmel_nand.c           |    5 +++++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 1ab05ad..34a3966 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -34,6 +34,7 @@ struct atmel_nand_data {
 	u8		ale;		/* address line number connected to ALE */
 	u8		cle;		/* address line number connected to CLE */
 	u8		bus_width_16;	/* buswidth is 16 bit */
+	u8		flash_bbt;	/* use a flash based bbt */
 	u8		ecc_mode;	/* NAND_ECC_* */
 };
 
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index e8f85fc..85e4b24 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -436,6 +436,11 @@ static int __init atmel_nand_probe(struct device_d *dev)
 		}
 	}
 
+	if (host->board->flash_bbt) {
+		printk(KERN_INFO "atmel_nand: Use On Flash BBT\n");
+		nand_chip->options |= NAND_USE_FLASH_BBT;
+	}
+
 	/* first scan to find the device and get the page size */
 	if (nand_scan_ident(mtd, 1)) {
 		res = -ENXIO;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
