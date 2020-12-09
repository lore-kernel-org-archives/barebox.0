Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn0sv-00081N-1v
 for barebox@lists.infradead.org; Wed, 09 Dec 2020 14:56:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 5001C1A512D
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 14:56:02 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KIHJC0I5
 for barebox@lists.infradead.org;
 Wed, 09 Dec 2020 14:56:02 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 25A841A512C
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 14:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 002D527E05EF
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 15:56:01 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed,  9 Dec 2020 15:55:44 +0100
Message-Id: <20201209145547.22655-1-jmaselbas@kalray.eu>
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
Subject: [PATCH 1/4] usb: dwc2: Add support for optional usb phy
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.h |  2 ++
 drivers/usb/dwc2/dwc2.c | 21 +++++++++++++++++++++
 drivers/usb/dwc2/dwc2.h |  1 +
 3 files changed, 24 insertions(+)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 090ca15fe..b9845b552 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -466,6 +466,8 @@ struct dwc2 {
 	struct dwc2_hw_params hw_params;
 	struct dwc2_core_params params;
 
+	struct phy *phy; /* optional */
+
 #ifdef CONFIG_USB_DWC2_HOST
 	struct usb_host host;
 	u8 in_data_toggle[MAX_DEVICE][MAX_ENDPOINT];
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 282e6754b..ae144698c 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -50,6 +50,17 @@ static int dwc2_probe(struct device_d *dev)
 	dwc2->regs = IOMEM(iores->start);
 	dwc2->dev = dev;
 
+	dwc2->phy = phy_optional_get(dev, "usb2-phy");
+	if (!dwc2->phy)
+		dwc2->phy = phy_optional_get(dev, "usb-phy");
+	if (dwc2->phy) {
+		ret = phy_power_on(dwc2->phy);
+		if (ret == 0)
+			ret = phy_init(dwc2->phy);
+		if (ret)
+			goto error;
+	}
+
 	ret = dwc2_core_snpsid(dwc2);
 	if (ret)
 		goto error;
@@ -78,15 +89,25 @@ static int dwc2_probe(struct device_d *dev)
 		ret = dwc2_set_mode(dwc2, dwc2->dr_mode);
 
 error:
+	if (dwc2->phy)
+		phy_power_off(dwc2->phy);
+
 	return ret;
 }
 
 static void dwc2_remove(struct device_d *dev)
 {
 	struct dwc2 *dwc2 = dev->priv;
+	int ret;
 
 	dwc2_host_uninit(dwc2);
 	dwc2_gadget_uninit(dwc2);
+
+	if (dwc2->phy) {
+		ret = phy_exit(dwc2->phy);
+		if (ret == 0)
+			phy_power_off(dwc2->phy);
+	}
 }
 
 static const struct of_device_id dwc2_platform_dt_ids[] = {
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 30ad90665..196f4a07f 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -2,6 +2,7 @@
 #include <usb/usb.h>
 #include <usb/usb_defs.h>
 #include <usb/gadget.h>
+#include <linux/phy/phy.h>
 
 #include "regs.h"
 #include "core.h"
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
