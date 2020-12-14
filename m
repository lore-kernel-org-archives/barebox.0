Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kolep-0000Is-Lm
 for barebox@lists.infradead.org; Mon, 14 Dec 2020 11:04:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id AF9A71A42F5
 for <barebox@lists.infradead.org>; Mon, 14 Dec 2020 11:04:43 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KIOG9T1M
 for barebox@lists.infradead.org;
 Mon, 14 Dec 2020 11:04:43 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 89EB51A428D
 for <barebox@lists.infradead.org>; Mon, 14 Dec 2020 11:04:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 6435F27E042D
 for <barebox@lists.infradead.org>; Mon, 14 Dec 2020 12:04:43 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 14 Dec 2020 12:03:57 +0100
Message-Id: <20201214110357.20469-1-jmaselbas@kalray.eu>
In-Reply-To: <20201210103104.3816-1-jmaselbas@kalray.eu>
References: <20201210103104.3816-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2] fixup! usb: dwc2: Add support for optional usb phy
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

In this fixup I've changed to call order for phy initialisation:
phy_init and then phy_power_on. Same for the deinitiailisation:
phy_power_off then phy_exit. Which seems to be the correct way.

Also fix the exit path.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/dwc2.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 5e95e8b22..98f9b30b6 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -56,13 +56,12 @@ static int dwc2_probe(struct device_d *dev)
 		return ret;
 	}
 
-	if (dwc2->phy) {
-		ret = phy_power_on(dwc2->phy);
-		if (ret == 0)
-			ret = phy_init(dwc2->phy);
-		if (ret)
-			goto error;
-	}
+	ret = phy_init(dwc2->phy);
+	if (ret)
+		goto err_phy_init;
+	ret = phy_power_on(dwc2->phy);
+	if (ret)
+		goto err_phy_power;
 
 	ret = dwc2_check_core_version(dwc2);
 	if (ret)
@@ -93,9 +92,15 @@ static int dwc2_probe(struct device_d *dev)
 	else
 		ret = dwc2_set_mode(dwc2, dwc2->dr_mode);
 
+	if (ret)
+		goto error;
+
+	return 0;
 error:
-	if (dwc2->phy)
-		phy_power_off(dwc2->phy);
+	phy_power_off(dwc2->phy);
+err_phy_power:
+	phy_exit(dwc2->phy);
+err_phy_init:
 
 	return ret;
 }
@@ -103,16 +108,12 @@ error:
 static void dwc2_remove(struct device_d *dev)
 {
 	struct dwc2 *dwc2 = dev->priv;
-	int ret;
 
 	dwc2_host_uninit(dwc2);
 	dwc2_gadget_uninit(dwc2);
 
-	if (dwc2->phy) {
-		ret = phy_exit(dwc2->phy);
-		if (ret == 0)
-			phy_power_off(dwc2->phy);
-	}
+	phy_power_off(dwc2->phy);
+	phy_exit(dwc2->phy);
 }
 
 static const struct of_device_id dwc2_platform_dt_ids[] = {
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
