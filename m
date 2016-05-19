Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp49.i.mail.ru ([94.100.177.109])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3Rbn-0004hc-UF
 for barebox@lists.infradead.org; Thu, 19 May 2016 17:19:41 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 19 May 2016 20:19:08 +0300
Message-Id: <1463678348-9046-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ATA: platform_ide: Fix patch "driver: replace
 dev_request_mem_region with dev_request_mem_resource" dev_request_mem_region
 with dev_request_mem_resource" The driver trying to use memory resource,
 then IO resource. The ALT register is optional.
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/ata/intf_platform_ide.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index c3af083..15f5c0a 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -104,17 +104,13 @@ static int platform_ide_probe(struct device_d *dev)
 	}
 
 	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	reg_base = IOMEM(iores->start);
-
-	if (!IS_ERR(reg_base)) {
+	if (!IS_ERR(iores)) {
+		reg_base = IOMEM(iores->start);
 		mmio = 1;
 		iores = dev_request_mem_resource(dev, 1);
-		if (IS_ERR(iores))
-			return PTR_ERR(iores);
-		alt_base = IOMEM(iores->start);
-		if (IS_ERR(alt_base))
+		if (!IS_ERR(iores))
+			alt_base = IOMEM(iores->start);
+		else
 			alt_base = NULL;
 	} else {
 		reg = dev_get_resource(dev, IORESOURCE_IO, 0);
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
