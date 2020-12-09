Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn0sv-00081O-1v
 for barebox@lists.infradead.org; Wed, 09 Dec 2020 14:56:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 85AE41A512E
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 14:56:02 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KIHJC0O1
 for barebox@lists.infradead.org;
 Wed, 09 Dec 2020 14:56:02 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 5A9101A5131
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 14:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3570827E064D
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 15:56:02 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed,  9 Dec 2020 15:55:47 +0100
Message-Id: <20201209145547.22655-4-jmaselbas@kalray.eu>
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
Subject: [PATCH 4/4] usb: dwc2: Rename dwc2_core_snpsid to
 dwc2_check_core_version
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

The name dwc2_check_core_version is the one used on Linux, make it this
way.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 4 +---
 drivers/usb/dwc2/dwc2.c | 2 +-
 drivers/usb/dwc2/dwc2.h | 2 +-
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 808d80585..899c532d4 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -190,12 +190,10 @@ void dwc2_set_default_params(struct dwc2 *dwc2)
 	}
 }
 
-int dwc2_core_snpsid(struct dwc2 *dwc2)
+int dwc2_check_core_version(struct dwc2 *dwc2)
 {
 	struct dwc2_hw_params *hw = &dwc2->hw_params;
 
-	hw->snpsid = dwc2_readl(dwc2, GSNPSID);
-
 	/*
 	 * Attempt to ensure this device is really a DWC2 Controller.
 	 * Read and verify the GSNPSID register contents. The value should be
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 120890105..7835037db 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -61,7 +61,7 @@ static int dwc2_probe(struct device_d *dev)
 			goto error;
 	}
 
-	ret = dwc2_core_snpsid(dwc2);
+	ret = dwc2_check_core_version(dwc2);
 	if (ret)
 		goto error;
 
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 70a747302..476c3205b 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -8,7 +8,7 @@
 #include "core.h"
 
 /* Core functions */
-int dwc2_core_snpsid(struct dwc2 *dwc2);
+int dwc2_check_core_version(struct dwc2 *dwc2);
 void dwc2_get_hwparams(struct dwc2 *dwc2);
 void dwc2_set_default_params(struct dwc2 *dwc2);
 
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
