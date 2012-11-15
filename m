Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYy0f-0006s4-Ro
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 11:53:31 +0000
Received: from mail629.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 79582FFB1B5
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2012 13:01:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 15 Nov 2012 12:51:22 +0100
Message-Id: <1352980282-24731-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] mx53-loco: fix phy reset
To: barebox@lists.infradead.org

the phy reset neet to be done before the fec driver is registered
as we accesst the phy at the fec probe time

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/freescale-mx53-loco/board.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 45c05c2..216d26a 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -187,6 +187,7 @@ static int loco_devices_init(void)
 {
 
 	imx53_iim_register_fec_ethaddr();
+	loco_fec_reset();
 	imx53_add_fec(&fec_info);
 	imx53_add_mmc0(&loco_sd1_data);
 	imx53_add_mmc2(&loco_sd3_data);
@@ -196,8 +197,6 @@ static int loco_devices_init(void)
 	if (IS_ENABLED(CONFIG_USB_EHCI))
 		loco_ehci_init();
 
-	loco_fec_reset();
-
 	set_silicon_rev(imx_silicon_revision());
 
 	armlinux_set_bootparams((void *)0x70000100);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
