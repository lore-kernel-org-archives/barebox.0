Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn0sv-00081P-1s
 for barebox@lists.infradead.org; Wed, 09 Dec 2020 14:56:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 61C2A1A5132
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 14:56:02 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KIHJC0K7
 for barebox@lists.infradead.org;
 Wed, 09 Dec 2020 14:56:02 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 392D81A512E
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 14:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 10E2E27E0682
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 15:56:02 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed,  9 Dec 2020 15:55:46 +0100
Message-Id: <20201209145547.22655-3-jmaselbas@kalray.eu>
In-Reply-To: <20201209145547.22655-1-jmaselbas@kalray.eu>
References: <20201209145547.22655-1-jmaselbas@kalray.eu>
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
Subject: [PATCH 3/4] usb: dwc2: Fix mode check in dwc2_get_dr_mode
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

In Linux, configs CONFIG_USB_DWC2_HOST and CONFIG_USB_DWC2_GADGET
are respectively for host only and gadget only support, they are
mutually exclusive. However this is not the case in barebox, they
are independent options.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 14 ++++++--------
 drivers/usb/dwc2/dwc2.c |  2 ++
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index a61acf553..808d80585 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -654,18 +654,16 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2)
 
 	if (dwc2_hw_is_device(dwc2)) {
 		dwc2_dbg(dwc2, "Controller is device only\n");
-		if (IS_ENABLED(CONFIG_USB_DWC2_HOST)) {
-			dwc2_err(dwc2,
-				"Controller does not support host mode.\n");
-			return -EINVAL;
+		if (!IS_ENABLED(CONFIG_USB_DWC2_GADGET)) {
+			dwc2_err(dwc2, "gadget mode support not compiled in!\n");
+			return -ENOTSUPP;
 		}
 		mode = USB_DR_MODE_PERIPHERAL;
 	} else if (dwc2_hw_is_host(dwc2)) {
 		dwc2_dbg(dwc2, "Controller is host only\n");
-		if (IS_ENABLED(CONFIG_USB_DWC2_GADGET)) {
-			dwc2_err(dwc2,
-				"Controller does not support device mode.\n");
-			return -EINVAL;
+		if (!IS_ENABLED(CONFIG_USB_DWC2_HOST)) {
+			dwc2_err(dwc2, "host mode support not compiled in!\n");
+			return -ENOTSUPP;
 		}
 		mode = USB_DR_MODE_HOST;
 	} else {
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index ae144698c..120890105 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -77,6 +77,8 @@ static int dwc2_probe(struct device_d *dev)
 	dwc2_get_hwparams(dwc2);
 
 	ret = dwc2_get_dr_mode(dwc2);
+	if (ret)
+		goto error;
 
 	dwc2_set_default_params(dwc2);
 
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
