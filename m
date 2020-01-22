Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIGZ-0007hs-Cx
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:50:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 8F47C27E10A2
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:50:01 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:45 +0100
Message-Id: <20200122154950.22746-5-jmaselbas@kalray.eu>
In-Reply-To: <20200122154950.22746-1-jmaselbas@kalray.eu>
References: <20200122154950.22746-1-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 4/9] usb: dwc2: Add otg state
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 0c89217c5..56d5cbbfb 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -416,6 +416,11 @@ struct dwc2_hw_params {
 #define MAX_DEVICE			16
 #define MAX_ENDPOINT DWC2_MAX_EPS_CHANNELS
 
+enum usb_otg_state {
+	OTG_STATE_A_HOST,
+	OTG_STATE_B_PERIPHERAL,
+};
+
 struct dwc2 {
 	struct device_d *dev;
 	struct usb_host host;
@@ -429,6 +434,7 @@ struct dwc2 {
 	int root_hub_devnum;
 
 	enum usb_dr_mode dr_mode;
+	enum usb_otg_state op_state;
 };
 
 #define host_to_dwc2(ptr) container_of(ptr, struct dwc2, host)
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
