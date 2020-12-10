Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knJED-00079S-8C
 for barebox@lists.infradead.org; Thu, 10 Dec 2020 10:31:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id DC9FA1A1D2F
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2020 10:31:15 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KIIPBD42
 for barebox@lists.infradead.org;
 Thu, 10 Dec 2020 10:31:15 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id ADD861A1D29
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2020 10:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 876B727E06AA
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2020 11:31:15 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 10 Dec 2020 11:31:02 +0100
Message-Id: <20201210103104.3816-2-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 2/4] usb: dwc2: Remove unnecessary functions declaration
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Theses functions are only used in dwc2/core.c make them static.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 8 ++++----
 drivers/usb/dwc2/dwc2.h | 4 ----
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index c4a3cc789..d700c3e6b 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -28,7 +28,7 @@ static bool dwc2_hw_is_device(struct dwc2 *dwc2)
 		(op_mode == GHWCFG2_OP_MODE_NO_SRP_CAPABLE_DEVICE);
 }
 
-void dwc2_set_param_otg_cap(struct dwc2 *dwc2)
+static void dwc2_set_param_otg_cap(struct dwc2 *dwc2)
 {
 	u8 val;
 
@@ -49,7 +49,7 @@ void dwc2_set_param_otg_cap(struct dwc2 *dwc2)
 	dwc2->params.otg_cap = val;
 }
 
-void dwc2_set_param_phy_type(struct dwc2 *dwc2)
+static void dwc2_set_param_phy_type(struct dwc2 *dwc2)
 {
 	u8 val;
 
@@ -69,7 +69,7 @@ void dwc2_set_param_phy_type(struct dwc2 *dwc2)
 	dwc2->params.phy_type = val;
 }
 
-void dwc2_set_param_speed(struct dwc2 *dwc2)
+static void dwc2_set_param_speed(struct dwc2 *dwc2)
 {
 	if (dwc2->params.phy_type == DWC2_PHY_TYPE_PARAM_FS)
 		dwc2->params.speed = DWC2_SPEED_PARAM_FULL;
@@ -77,7 +77,7 @@ void dwc2_set_param_speed(struct dwc2 *dwc2)
 		dwc2->params.speed = DWC2_SPEED_PARAM_HIGH;
 }
 
-void dwc2_set_param_phy_utmi_width(struct dwc2 *dwc2)
+static void dwc2_set_param_phy_utmi_width(struct dwc2 *dwc2)
 {
 	int val;
 
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 196f4a07f..a878de85b 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -8,10 +8,6 @@
 #include "core.h"
 
 /* Core functions */
-void dwc2_set_param_otg_cap(struct dwc2 *dwc2);
-void dwc2_set_param_phy_type(struct dwc2 *dwc2);
-void dwc2_set_param_speed(struct dwc2 *dwc2);
-void dwc2_set_param_phy_utmi_width(struct dwc2 *dwc2);
 void dwc2_set_default_params(struct dwc2 *dwc2);
 int dwc2_core_snpsid(struct dwc2 *dwc2);
 void dwc2_get_hwparams(struct dwc2 *dwc2);
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
