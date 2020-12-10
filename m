Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knJED-00079R-8D
 for barebox@lists.infradead.org; Thu, 10 Dec 2020 10:31:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id D4C4C1A1D2E
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2020 10:31:15 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KIIPBD3L
 for barebox@lists.infradead.org;
 Thu, 10 Dec 2020 10:31:15 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id A9A2A1A1D25
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2020 10:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 80AEC27E0682
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2020 11:31:15 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 10 Dec 2020 11:31:01 +0100
Message-Id: <20201210103104.3816-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 1/4] usb: dwc2: Add support for optional usb phy
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.h |  2 ++
 drivers/usb/dwc2/dwc2.c | 24 ++++++++++++++++++++++++
 drivers/usb/dwc2/dwc2.h |  1 +
 3 files changed, 27 insertions(+)

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
index 282e6754b..9ab3b5b53 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -50,6 +50,20 @@ static int dwc2_probe(struct device_d *dev)
 	dwc2->regs = IOMEM(iores->start);
 	dwc2->dev = dev;
 
+	dwc2->phy = phy_optional_get(dev, "usb2-phy");
+	if (IS_ERR(dwc2->phy)) {
+		ret = PTR_ERR(dwc2->phy);
+		return ret;
+	}
+
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
@@ -78,15 +92,25 @@ static int dwc2_probe(struct device_d *dev)
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
