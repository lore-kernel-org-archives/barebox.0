Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIGd-000879-Pi
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:50:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 6C31C27E0FF8
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:50:02 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:46 +0100
Message-Id: <20200122154950.22746-6-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 5/9] usb: dwc2: Add function to flush a tx fifo
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 33 +++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/dwc2.h |  1 +
 2 files changed, 34 insertions(+)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 1812de034..90e7c0116 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -294,6 +294,39 @@ void dwc2_flush_all_fifo(struct dwc2 *dwc2)
 	udelay(1);
 }
 
+/**
+ * dwc2_flush_tx_fifo() - Flushes a Tx FIFO
+ *
+ * @hsotg: Programming view of DWC_otg controller
+ * @idx: The fifo index (0..15)
+ */
+void dwc2_flush_tx_fifo(struct dwc2 *dwc2, const int idx)
+{
+	u32 greset;
+
+	if (idx > 15)
+		return;
+
+	dwc2_dbg(dwc2, "Flush Tx FIFO %d\n", idx);
+
+	/* Wait for AHB master IDLE state */
+	if (dwc2_wait_bit_set(dwc2, GRSTCTL, GRSTCTL_AHBIDLE, 10000)) {
+		dwc2_warn(dwc2, "%s: Timeout waiting for AHB Idle\n", __func__);
+		return;
+	}
+
+	greset = GRSTCTL_TXFFLSH;
+	greset |= GRSTCTL_TXFNUM(idx) & GRSTCTL_TXFNUM_MASK;
+	dwc2_writel(dwc2, greset, GRSTCTL);
+
+	if (dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_TXFFLSH, 10000))
+		dwc2_warn(dwc2, "%s: Timeout flushing tx fifo (GRSTCTL=%08x)\n",
+			 __func__, dwc2_readl(dwc2, GRSTCTL));
+
+	/* Wait for at least 3 PHY Clocks */
+	udelay(1);
+}
+
 static int dwc2_fs_phy_init(struct dwc2 *dwc2, bool select_phy)
 {
 	u32 usbcfg, ggpio, i2cctl;
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 35ba00660..1141573bb 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -17,6 +17,7 @@ void dwc2_get_hwparams(struct dwc2 *dwc2);
 
 void dwc2_init_fs_ls_pclk_sel(struct dwc2 *dwc2);
 void dwc2_flush_all_fifo(struct dwc2 *dwc2);
+void dwc2_flush_tx_fifo(struct dwc2 *dwc2, const int idx);
 
 int dwc2_phy_init(struct dwc2 *dwc2, bool select_phy);
 int dwc2_gahbcfg_init(struct dwc2 *dwc2);
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
