Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb7Oy-0006RL-VW
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 08:10:25 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id p078AID6001476
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Fri, 7 Jan 2011 02:10:20 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Fri,  7 Jan 2011 13:40:14 +0530
Message-Id: <1294387814-22442-1-git-send-email-premi@ti.com>
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
Subject: [PATCH] omap: echi: fix compile error
To: barebox@lists.infradead.org

This patch fixes the compiler error:
  CC      drivers/usb/host/ehci-omap.o
drivers/usb/host/ehci-omap.c: In function 'ehci_omap_init':
drivers/usb/host/ehci-omap.c:204: error: 'CPU_ES2P1' undeclar
ed (first use in this function)
drivers/usb/host/ehci-omap.c:204: error: (Each undeclared ide
ntifier is reported only once
drivers/usb/host/ehci-omap.c:204: error: for each function it
 appears in.)
make[3]: *** [drivers/usb/host/ehci-omap.o] Error 1

Problem reported by: Cory Walker (cwalker32@gmail.com)

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
Should have caught it earlier while sending earlier patches for
OMAP36XX support, but missed building for Beagle; and EHCI wasn't
selected in default configuration for OMAP3EVM.

 drivers/usb/host/ehci-omap.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/usb/host/ehci-omap.c b/drivers/usb/host/ehci-omap.c
index 05f1628..94aa356 100644
--- a/drivers/usb/host/ehci-omap.c
+++ b/drivers/usb/host/ehci-omap.c
@@ -201,7 +201,7 @@ int ehci_omap_init(struct omap_hcd *omap)
 		v &= ~OMAP_UHH_HOSTCONFIG_P3_CONNECT_STATUS;
 
 	/* Bypass the TLL module for PHY mode operation */
-	 if (get_cpu_rev() <= CPU_ES2P1) {
+	 if (get_cpu_rev() <= OMAP34XX_ES2_1) {
 		if ((omap->port_mode[0] == EHCI_HCD_OMAP_MODE_PHY) ||
 			(omap->port_mode[1] == EHCI_HCD_OMAP_MODE_PHY) ||
 				(omap->port_mode[2] == EHCI_HCD_OMAP_MODE_PHY))
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
