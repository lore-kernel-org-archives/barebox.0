Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn0sv-00081Q-1u
 for barebox@lists.infradead.org; Wed, 09 Dec 2020 14:56:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 7A2131A512C
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 14:56:02 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KIHJC0N2
 for barebox@lists.infradead.org;
 Wed, 09 Dec 2020 14:56:02 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 513FB1A512F
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 14:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2C8F227E05C8
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 15:56:02 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed,  9 Dec 2020 15:55:45 +0100
Message-Id: <20201209145547.22655-2-jmaselbas@kalray.eu>
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
Subject: [PATCH 2/4] usb: dwc2: Move static function prototypes into core.c
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Theses functions were only used in dwc2/core.c and where defined as
static.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 5 +++++
 drivers/usb/dwc2/dwc2.h | 6 +-----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index c4a3cc789..a61acf553 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -1,6 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include "dwc2.h"
 
+static void dwc2_set_param_otg_cap(struct dwc2 *dwc2);
+static void dwc2_set_param_phy_type(struct dwc2 *dwc2);
+static void dwc2_set_param_speed(struct dwc2 *dwc2);
+static void dwc2_set_param_phy_utmi_width(struct dwc2 *dwc2);
+
 /* Returns the controller's GHWCFG2.OTG_MODE. */
 static unsigned int dwc2_op_mode(struct dwc2 *dwc2)
 {
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 196f4a07f..70a747302 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -8,13 +8,9 @@
 #include "core.h"
 
 /* Core functions */
-void dwc2_set_param_otg_cap(struct dwc2 *dwc2);
-void dwc2_set_param_phy_type(struct dwc2 *dwc2);
-void dwc2_set_param_speed(struct dwc2 *dwc2);
-void dwc2_set_param_phy_utmi_width(struct dwc2 *dwc2);
-void dwc2_set_default_params(struct dwc2 *dwc2);
 int dwc2_core_snpsid(struct dwc2 *dwc2);
 void dwc2_get_hwparams(struct dwc2 *dwc2);
+void dwc2_set_default_params(struct dwc2 *dwc2);
 
 void dwc2_init_fs_ls_pclk_sel(struct dwc2 *dwc2);
 void dwc2_flush_all_fifo(struct dwc2 *dwc2);
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
