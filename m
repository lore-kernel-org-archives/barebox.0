Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp18.mail.ru ([94.100.176.155])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKZYO-0000WG-S4
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 18:24:34 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 18 Apr 2012 22:25:10 +0400
Message-Id: <1334773510-13806-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Allow use platform_ide driver without ALT-registers
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/ata/intf_platform_ide.c |   12 +++++++++---
 1 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 1955a9c..af20e05 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -64,10 +64,16 @@ static void platform_ide_setup_port(void *reg_base, void *alt_base,
 	ioaddr->status_addr = reg_base + (IDE_REG_STATUS << shift);
 	ioaddr->command_addr = reg_base + (IDE_REG_CMD << shift);
 
-	ioaddr->altstatus_addr = alt_base + (IDE_REG_ALT_STATUS << shift);
-	ioaddr->ctl_addr = alt_base + (IDE_REG_DEV_CTL << shift);
-
-	ioaddr->alt_dev_addr = alt_base + (IDE_REG_DRV_ADDR << shift);
+	if (alt_base) {
+		ioaddr->altstatus_addr = alt_base + (IDE_REG_ALT_STATUS << shift);
+		ioaddr->ctl_addr = alt_base + (IDE_REG_DEV_CTL << shift);
+
+		ioaddr->alt_dev_addr = alt_base + (IDE_REG_DRV_ADDR << shift);
+	} else {
+		ioaddr->altstatus_addr = ioaddr->status_addr;
+		ioaddr->ctl_addr = ioaddr->status_addr;
+		/* ioaddr->alt_dev_addr not used in driver */
+	}
 }
 
 static int platform_ide_probe(struct device_d *dev)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
