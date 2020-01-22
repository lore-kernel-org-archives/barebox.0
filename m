Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIGl-0000eO-TS
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:50:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 8CF0D27E11A1
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:50:03 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:48 +0100
Message-Id: <20200122154950.22746-8-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 7/9] usb: dwc2: Add getter for gadget fifo hwparams
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 90e7c0116..5376a3586 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -167,6 +167,33 @@ int dwc2_core_snpsid(struct dwc2 *dwc2)
 	return 0;
 }
 
+static int dwc2_num_dev_tx_fifo(struct dwc2 *dwc2)
+{
+	if (dwc2->hw_params.en_multiple_tx_fifo)
+		/* In dedicated FIFO mode we need count of IN EPs */
+		return dwc2->hw_params.num_dev_in_eps;
+	else
+		/* In shared FIFO mode we need count of Periodic IN EPs */
+		return dwc2->hw_params.num_dev_perio_in_ep;
+}
+
+static void dwc2_get_dev_hwparams(struct dwc2 *dwc2)
+{
+	struct dwc2_hw_params *hw = &dwc2->hw_params;
+	u32 size;
+	int num, i;
+
+	size = FIFOSIZE_DEPTH_GET(dwc2_readl(dwc2, GNPTXFSIZ));
+	hw->dev_nperio_tx_fifo_size = size;
+
+	num = dwc2_num_dev_tx_fifo(dwc2);
+
+	for (i = 1; i <= num; i++) {
+		size = FIFOSIZE_DEPTH_GET(dwc2_readl(dwc2, DPTXFSIZN(i)));
+		hw->g_tx_fifo_size[i] = size;
+	}
+}
+
 /**
  * During device initialization, read various hardware configuration
  * registers and interpret the contents.
@@ -243,6 +270,8 @@ void dwc2_get_hwparams(struct dwc2 *dwc2)
 	/* fifo sizes */
 	hw->rx_fifo_size = (grxfsiz & GRXFSIZ_DEPTH_MASK) >>
 				GRXFSIZ_DEPTH_SHIFT;
+
+	dwc2_get_dev_hwparams(dwc2);
 }
 
 /*
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
