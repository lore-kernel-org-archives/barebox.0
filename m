Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3p-0005Pf-7n
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:47 +0100
Message-Id: <1289400839-5937-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/13] NAND: reset chips before usage like the kernel does
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index b75a450..56fafb0 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -2215,6 +2215,12 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 	/* Select the device */
 	chip->select_chip(mtd, 0);
 
+	/*
+	 * Reset the chip, required by some chips (e.g. Micron MT29FxGxxxxx)
+	 * after power-up
+	 */
+	chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
+
 	/* Send the command for reading device ID */
 	chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
