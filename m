Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8OoS-0003bv-8d
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 08:16:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E5BD6A002A6
 for <barebox@lists.infradead.org>; Fri, 26 Jun 2015 10:17:50 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 26 Jun 2015 10:14:35 +0200
Message-Id: <1435306477-5949-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/3] boards: phytec-som-am335x: Get ready for EMMC boot
To: barebox@lists.infradead.org

Select correct instance when booting from a mmc interface.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/board.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index 74e39d7..7a87841 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -68,7 +68,10 @@ static int physom_devices_init(void)
 		of_device_enable_path("/chosen/environment-spi");
 		break;
 	case BOOTSOURCE_MMC:
-		omap_set_bootmmc_devname("mmc0");
+		if (bootsource_get_instance() == 0)
+			omap_set_bootmmc_devname("mmc0");
+		else
+			omap_set_bootmmc_devname("mmc1");
 		break;
 	default:
 		of_device_enable_path("/chosen/environment-nand");
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
