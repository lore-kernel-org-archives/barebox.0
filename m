Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QXD3K-0008Je-TN
	for barebox@lists.infradead.org; Thu, 16 Jun 2011 13:56:11 +0000
Received: by wwb39 with SMTP id 39so1129868wwb.18
	for <barebox@lists.infradead.org>; Thu, 16 Jun 2011 06:56:07 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Thu, 16 Jun 2011 15:55:56 +0200
Message-Id: <1308232556-12394-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] macb: add support for board specific get_ethaddr function
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/include/mach/board.h |    2 ++
 drivers/net/macb.c                      |    2 +-
 2 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 89c1746..89caebb 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -21,6 +21,7 @@
 #ifndef __ASM_ARCH_BOARD_H
 #define __ASM_ARCH_BOARD_H

+#include <net.h>
 #include <linux/mtd/mtd.h>

 void atmel_nand_load_image(void *dest, int size, int pagesize, int blocksize);
@@ -47,6 +48,7 @@ void at91_add_device_nand(struct atmel_nand_data *data);
 struct at91_ether_platform_data {
 	unsigned int flags;
 	int phy_addr;
+	int (*get_ethaddr)(struct eth_device*, unsigned char *adr);
 };

 void at91_add_device_eth(struct at91_ether_platform_data *data);
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index df3b6af..bc6618b 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -431,7 +431,7 @@ static int macb_probe(struct device_d *dev)
 	edev->send = macb_send;
 	edev->recv = macb_recv;
 	edev->halt = macb_halt;
-	edev->get_ethaddr = macb_get_ethaddr;
+	edev->get_ethaddr = pdata->get_ethaddr ? pdata->get_ethaddr : macb_get_ethaddr;
 	edev->set_ethaddr = macb_set_ethaddr;

 	macb->miidev.read = macb_phy_read;
--
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
