Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIGl-0000eP-Tz
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:50:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2F7B427E11EE
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:50:04 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:49 +0100
Message-Id: <20200122154950.22746-9-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 8/9] usb: dwc2: gadget: Configure fifo size
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 86 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 5376a3586..ebb555f0d 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -87,6 +87,87 @@ void dwc2_set_param_phy_utmi_width(struct dwc2 *dwc2)
 	dwc2->params.phy_utmi_width = val;
 }
 
+/**
+ * dwc2_hsotg_tx_fifo_count - return count of TX FIFOs in device mode
+ *
+ * @hsotg: Programming view of the DWC_otg controller
+ */
+static int dwc2_tx_fifo_count(struct dwc2 *dwc2)
+{
+	if (dwc2->hw_params.en_multiple_tx_fifo)
+		/* In dedicated FIFO mode we need count of IN EPs */
+		return dwc2->hw_params.num_dev_in_eps;
+	else
+		/* In shared FIFO mode we need count of Periodic IN EPs */
+		return dwc2->hw_params.num_dev_perio_in_ep;
+}
+
+/**
+ * dwc2_hsotg_tx_fifo_total_depth - return total FIFO depth available for
+ * device mode TX FIFOs
+ *
+ * @hsotg: Programming view of the DWC_otg controller
+ */
+static int dwc2_tx_fifo_total_depth(struct dwc2 *dwc2)
+{
+	int addr;
+	int tx_addr_max;
+	u32 np_tx_fifo_size;
+
+	np_tx_fifo_size = min_t(u32, dwc2->hw_params.dev_nperio_tx_fifo_size,
+				dwc2->params.g_np_tx_fifo_size);
+
+	/* Get Endpoint Info Control block size in DWORDs. */
+	tx_addr_max = dwc2->hw_params.total_fifo_size;
+
+	addr = dwc2->params.g_rx_fifo_size + np_tx_fifo_size;
+
+	if (tx_addr_max <= addr)
+		return 0;
+
+	return tx_addr_max - addr;
+}
+
+static void dwc2_set_param_tx_fifo_sizes(struct dwc2 *dwc2)
+{
+	struct dwc2_core_params *p = &dwc2->params;
+	int count;
+	int depth;
+	int i;
+
+	count = dwc2_tx_fifo_count(dwc2);
+
+	depth = dwc2_tx_fifo_total_depth(dwc2);
+	if (count)
+		depth /= count;
+
+	memset(p->g_tx_fifo_size, 0, sizeof(p->g_tx_fifo_size));
+	for (i = 1; i <= count; i++)
+		p->g_tx_fifo_size[i] = depth;
+}
+
+static void dwc2_set_param_fifo_sizes(struct dwc2 *dwc2)
+{
+	struct dwc2_hw_params *hw = &dwc2->hw_params;
+	struct dwc2_core_params *p = &dwc2->params;
+	u32 total_fifo_size = dwc2->hw_params.total_fifo_size;
+	u32 max_np_tx_fifo_size = hw->dev_nperio_tx_fifo_size;
+	u32 max_rx_fifo_size = hw->rx_fifo_size;
+	int count;
+	int depth;
+	int i;
+
+	count = dwc2_tx_fifo_count(dwc2);
+
+	depth = (total_fifo_size & ~0x7f) / (count * 3 + 8);
+	p->g_rx_fifo_size = depth * count * 2;
+	p->g_np_tx_fifo_size = depth * 8;
+
+	for (i = 1; i <= count; i++)
+		p->g_tx_fifo_size[i] = depth;
+
+}
+
 /**
  * dwc2_set_default_params() - Set all core parameters to their
  * auto-detected default values.
@@ -138,6 +219,11 @@ void dwc2_set_default_params(struct dwc2 *dwc2)
 		p->host_nperio_tx_fifo_size = hw->host_nperio_tx_fifo_size;
 		p->host_perio_tx_fifo_size = hw->host_perio_tx_fifo_size;
 	}
+
+	if ((dwc2->dr_mode == USB_DR_MODE_PERIPHERAL) ||
+	    (dwc2->dr_mode == USB_DR_MODE_OTG)) {
+		dwc2_set_param_fifo_sizes(dwc2);
+	}
 }
 
 int dwc2_core_snpsid(struct dwc2 *dwc2)
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
