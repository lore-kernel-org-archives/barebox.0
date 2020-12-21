Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kr98J-0000mO-OS
 for barebox@lists.infradead.org; Mon, 21 Dec 2020 00:33:04 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 21 Dec 2020 01:32:50 +0100
Message-Id: <20201221003251.83042-2-ahmad@a3f.at>
In-Reply-To: <20201221003251.83042-1-ahmad@a3f.at>
References: <20201221003251.83042-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] fixup! usb: dwc2: Add support for optional usb phy
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de

Linux doesn't seem to enforce a fixed order between phy_init and
phy_power_on. The Linux dwc2 driver does power_on and then phy_init,
which is the inverse of what barebox is currently doing.

The PHYs normally used with dwc2 are written with this in mind.
For example, our stm32-usbphyc driver fails to disable:

  ERROR: stm32-usbphyc 5a006000.usbphyc@5a006000.of: PLL not reset
  ERROR: phy1: phy exit failed --> -5

Because Linux does exit -> power_off, but barebox does power_off ->
exit.

Issue was raised upstream:
https://lore.kernel.org/lkml/6cd01e79-fdc0-3bd4-32b5-a85142533f8a@pengutronix.de/T/#t

Until this is settled, swap the order to follow what Linux does.
This is suboptimal, because it means controller drivers have different
order of the operations and that you can't combine arbitrary PHYs and
controllers, but it seems unlikely we will support combinations that
aren't supported by Linux in the first place anyway.

Cc: Jules Maselbas <jmaselbas@kalray.eu>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/usb/dwc2/dwc2.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 65b92b542efc..8f7440471c31 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -78,12 +78,13 @@ static int dwc2_probe(struct device_d *dev)
 		goto clk_disable;
 	}
 
-	ret = phy_init(dwc2->phy);
+	ret = phy_power_on(dwc2->phy);
 	if (ret)
 		goto clk_disable;
-	ret = phy_power_on(dwc2->phy);
+
+	ret = phy_init(dwc2->phy);
 	if (ret)
-		goto err_phy_power;
+		goto phy_power_off;
 
 	ret = dwc2_check_core_version(dwc2);
 	if (ret)
@@ -119,9 +120,9 @@ static int dwc2_probe(struct device_d *dev)
 
 	return 0;
 error:
-	phy_power_off(dwc2->phy);
-err_phy_power:
 	phy_exit(dwc2->phy);
+phy_power_off:
+	phy_power_off(dwc2->phy);
 clk_disable:
 	clk_disable(dwc2->clk);
 clk_put:
@@ -139,8 +140,8 @@ static void dwc2_remove(struct device_d *dev)
 	dwc2_host_uninit(dwc2);
 	dwc2_gadget_uninit(dwc2);
 
-	phy_power_off(dwc2->phy);
 	phy_exit(dwc2->phy);
+	phy_power_off(dwc2->phy);
 }
 
 static const struct of_device_id dwc2_platform_dt_ids[] = {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
