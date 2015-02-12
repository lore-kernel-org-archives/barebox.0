Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1W9-0008JS-Qj
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:41:50 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id 8E5FA26C2007
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:09 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:42 +0100
Message-Id: <1423777200-22965-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 06/24] AHCI: convert to streaming DMA ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/ata/ahci.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 1894e47..e4310fc 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -31,7 +31,6 @@
 #include <linux/ctype.h>
 #include <linux/err.h>
 #include <disks.h>
-#include <asm/mmu.h>
 #include <ata_drive.h>
 #include <linux/sizes.h>
 #include <clock.h>
@@ -170,7 +169,11 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 		return -EIO;
 
 	if (wbuf)
-		dma_flush_range((unsigned long)wbuf, (unsigned long)wbuf + buf_len);
+		dma_sync_single_for_device((unsigned long)wbuf, buf_len,
+					   DMA_TO_DEVICE);
+	if (rbuf)
+		dma_sync_single_for_device((unsigned long)rbuf, buf_len,
+					   DMA_FROM_DEVICE);
 
 	memcpy((unsigned char *)ahci_port->cmd_tbl, fis, fis_len);
 
@@ -187,8 +190,12 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 	if (ret)
 		return -ETIMEDOUT;
 
+	if (wbuf)
+		dma_sync_single_for_cpu((unsigned long)wbuf, buf_len,
+					DMA_TO_DEVICE);
 	if (rbuf)
-		dma_inv_range((unsigned long)rbuf, (unsigned long)rbuf + buf_len);
+		dma_sync_single_for_cpu((unsigned long)rbuf, buf_len,
+					DMA_FROM_DEVICE);
 
 	return 0;
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
