Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WMyj3-00033h-D3
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 11:50:34 +0000
Received: from s246.sam-solutions.net ([217.21.35.55])
 by s250.sam-solutions.net with esmtps (TLSv1:RC4-MD5:128) (Exim 4.77)
 (envelope-from <D.Lavnikevich@sam-solutions.com>) id 1WMyii-00037A-QU
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 14:50:12 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Date: Mon, 10 Mar 2014 14:39:52 +0300
Message-ID: <1394451593-3090-4-git-send-email-d.lavnikevich@sam-solutions.com>
In-Reply-To: <1394451593-3090-1-git-send-email-d.lavnikevich@sam-solutions.com>
References: <1394451593-3090-1-git-send-email-d.lavnikevich@sam-solutions.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] nand: mxs: Check for up to 4 NAND chips
To: barebox@lists.infradead.org
Cc: Grigory Milev <g.milev@sam-solutions.com>, Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

Since i.MX6 has only one R/B actual pin, if there are several R/B
signals (from different NAND chips) they must be connected to this
pin.

Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Signed-off-by: Grigory Milev <g.milev@sam-solutions.com>
---
 drivers/mtd/nand/nand_mxs.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index d1e4b57..237a423 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -33,6 +33,7 @@
 #include <dma/apbh-dma.h>
 #include <stmp-device.h>
 #include <asm/mmu.h>
+#include <mach/generic.h>
 
 #define	MX28_BLOCK_SFTRST				(1 << 31)
 #define	MX28_BLOCK_CLKGATE				(1 << 30)
@@ -427,7 +428,13 @@ static int mxs_nand_device_ready(struct mtd_info *mtd)
 
 	if (nand_info->version > GPMI_VERSION_TYPE_MX23) {
 		tmp = readl(gpmi_regs + GPMI_STAT);
-		tmp >>= (GPMI_STAT_READY_BUSY_OFFSET + nand_info->cur_chip);
+		/* i.MX6 has only one R/B actual pin, so if there are several
+		   R/B signals they must be all connected to this pin */
+		if (cpu_is_mx6())
+			tmp >>= GPMI_STAT_READY_BUSY_OFFSET;
+		else
+			tmp >>= (GPMI_STAT_READY_BUSY_OFFSET +
+					 nand_info->cur_chip);
 	} else {
 		tmp = readl(gpmi_regs + GPMI_DEBUG);
 		tmp >>= (GPMI_DEBUG_READY0_OFFSET + nand_info->cur_chip);
@@ -1304,7 +1311,7 @@ static int mxs_nand_probe(struct device_d *dev)
 	nand->ecc.strength	= 8;
 
 	/* first scan to find the device and get the page size */
-	err = nand_scan_ident(mtd, 1, NULL);
+	err = nand_scan_ident(mtd, 4, NULL);
 	if (err)
 		goto err2;
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
