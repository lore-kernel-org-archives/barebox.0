Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbay-00081O-VH
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:34:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:34:26 +0100
Message-Id: <1354800870-28385-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] ata: Use dma_alloc for buffer
To: barebox@lists.infradead.org

ATA devices using DMA may need a sufficiently aligned buffer, so use
dma_alloc instead of regular malloc.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index a1df4bd..923be9a 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -24,6 +24,7 @@
 #include <block.h>
 #include <ata_drive.h>
 #include <disks.h>
+#include <dma.h>
 
 #define ata_id_u32(id,n)        \
         (((uint32_t) (id)[(n) + 1] << 16) | ((uint32_t) (id)[(n)]))
@@ -266,7 +267,7 @@ int ata_port_register(struct ata_port *port)
 	struct ata_port_operations *ops = port->ops;
 	struct device_d *dev = port->dev;
 
-	port->id = xzalloc(SECTOR_SIZE);
+	port->id = dma_alloc(SECTOR_SIZE);
 
 	port->blk.dev = dev;
 	port->blk.ops = &ata_ops;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
