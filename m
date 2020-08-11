Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5W1C-00048W-4E
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 15:16:54 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Aug 2020 17:16:31 +0200
Message-Id: <20200811151637.17705-8-jmaselbas@kalray.eu>
In-Reply-To: <20200811151637.17705-1-jmaselbas@kalray.eu>
References: <20200811151637.17705-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v4 07/13] usb: dwc2: host: Dynamic fifo size support from Linux
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/host.c | 146 ++++++++++++++++++++++++++++++++++------
 drivers/usb/dwc2/regs.h |   8 ---
 2 files changed, 124 insertions(+), 30 deletions(-)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index ccc32ba04..8c116c5df 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -453,6 +453,129 @@ static int dwc2_submit_int_msg(struct usb_device *udev, unsigned long pipe,
 	}
 }
 
+/**
+ * dwc2_calculate_dynamic_fifo() - Calculates the default fifo size
+ * For system that have a total fifo depth that is smaller than the default
+ * RX + TX fifo size.
+ *
+ * @dwc2: Programming view of DWC_otg controller
+ */
+static void dwc2_calculate_dynamic_fifo(struct dwc2 *dwc2)
+{
+	struct dwc2_core_params *params = &dwc2->params;
+	struct dwc2_hw_params *hw = &dwc2->hw_params;
+	u32 rxfsiz, nptxfsiz, ptxfsiz, total_fifo_size;
+
+	total_fifo_size = hw->total_fifo_size;
+	rxfsiz = params->host_rx_fifo_size;
+	nptxfsiz = params->host_nperio_tx_fifo_size;
+	ptxfsiz = params->host_perio_tx_fifo_size;
+
+	/*
+	 * Will use Method 2 defined in the DWC2 spec: minimum FIFO depth
+	 * allocation with support for high bandwidth endpoints. Synopsys
+	 * defines MPS(Max Packet size) for a periodic EP=1024, and for
+	 * non-periodic as 512.
+	 */
+	if (total_fifo_size < (rxfsiz + nptxfsiz + ptxfsiz)) {
+		/*
+		 * For Buffer DMA mode/Scatter Gather DMA mode
+		 * 2 * ((Largest Packet size / 4) + 1 + 1) + n
+		 * with n = number of host channel.
+		 * 2 * ((1024/4) + 2) = 516
+		 */
+		rxfsiz = 516 + hw->host_channels;
+
+		/*
+		 * min non-periodic tx fifo depth
+		 * 2 * (largest non-periodic USB packet used / 4)
+		 * 2 * (512/4) = 256
+		 */
+		nptxfsiz = 256;
+
+		/*
+		 * min periodic tx fifo depth
+		 * (largest packet size*MC)/4
+		 * (1024 * 3)/4 = 768
+		 */
+		ptxfsiz = 768;
+	}
+
+	params->host_rx_fifo_size = rxfsiz;
+	params->host_nperio_tx_fifo_size = nptxfsiz;
+	params->host_perio_tx_fifo_size = ptxfsiz;
+
+	/*
+	 * If the summation of RX, NPTX and PTX fifo sizes is still
+	 * bigger than the total_fifo_size, then we have a problem.
+	 *
+	 * We won't be able to allocate as many endpoints. Right now,
+	 * we're just printing an error message, but ideally this FIFO
+	 * allocation algorithm would be improved in the future.
+	 *
+	 * FIXME improve this FIFO allocation algorithm.
+	 */
+	if (unlikely(total_fifo_size < (rxfsiz + nptxfsiz + ptxfsiz)))
+		dwc2_err(dwc2, "invalid fifo sizes\n");
+}
+
+static void dwc2_config_fifos(struct dwc2 *dwc2)
+{
+	struct dwc2_core_params *params = &dwc2->params;
+	u32 nptxfsiz, hptxfsiz, dfifocfg, grxfsiz;
+
+	if (!params->enable_dynamic_fifo)
+		return;
+
+	dwc2_calculate_dynamic_fifo(dwc2);
+
+	/* Rx FIFO */
+	grxfsiz = dwc2_readl(dwc2, GRXFSIZ);
+	dwc2_dbg(dwc2, "initial grxfsiz=%08x\n", grxfsiz);
+	grxfsiz &= ~GRXFSIZ_DEPTH_MASK;
+	grxfsiz |= params->host_rx_fifo_size <<
+		   GRXFSIZ_DEPTH_SHIFT & GRXFSIZ_DEPTH_MASK;
+	dwc2_writel(dwc2, grxfsiz, GRXFSIZ);
+	dwc2_dbg(dwc2, "new grxfsiz=%08x\n", dwc2_readl(dwc2, GRXFSIZ));
+
+	/* Non-periodic Tx FIFO */
+	dwc2_dbg(dwc2, "initial gnptxfsiz=%08x\n", dwc2_readl(dwc2, GNPTXFSIZ));
+	nptxfsiz = params->host_nperio_tx_fifo_size <<
+		   FIFOSIZE_DEPTH_SHIFT & FIFOSIZE_DEPTH_MASK;
+	nptxfsiz |= params->host_rx_fifo_size <<
+		    FIFOSIZE_STARTADDR_SHIFT & FIFOSIZE_STARTADDR_MASK;
+	dwc2_writel(dwc2, nptxfsiz, GNPTXFSIZ);
+	dwc2_dbg(dwc2, "new gnptxfsiz=%08x\n", dwc2_readl(dwc2, GNPTXFSIZ));
+
+	/* Periodic Tx FIFO */
+	dwc2_dbg(dwc2, "initial hptxfsiz=%08x\n", dwc2_readl(dwc2, HPTXFSIZ));
+	hptxfsiz = params->host_perio_tx_fifo_size <<
+		   FIFOSIZE_DEPTH_SHIFT & FIFOSIZE_DEPTH_MASK;
+	hptxfsiz |= (params->host_rx_fifo_size +
+		     params->host_nperio_tx_fifo_size) <<
+		    FIFOSIZE_STARTADDR_SHIFT & FIFOSIZE_STARTADDR_MASK;
+	dwc2_writel(dwc2, hptxfsiz, HPTXFSIZ);
+	dwc2_dbg(dwc2, "new hptxfsiz=%08x\n", dwc2_readl(dwc2, HPTXFSIZ));
+
+	if (dwc2->params.en_multiple_tx_fifo &&
+	    dwc2->hw_params.snpsid >= DWC2_CORE_REV_2_91a) {
+		/*
+		 * This feature was implemented in 2.91a version
+		 * Global DFIFOCFG calculation for Host mode -
+		 * include RxFIFO, NPTXFIFO and HPTXFIFO
+		 */
+		dfifocfg = dwc2_readl(dwc2, GDFIFOCFG);
+		dfifocfg &= ~GDFIFOCFG_EPINFOBASE_MASK;
+		dfifocfg |= (params->host_rx_fifo_size +
+			     params->host_nperio_tx_fifo_size +
+			     params->host_perio_tx_fifo_size) <<
+			    GDFIFOCFG_EPINFOBASE_SHIFT &
+			    GDFIFOCFG_EPINFOBASE_MASK;
+		dwc2_writel(dwc2, dfifocfg, GDFIFOCFG);
+		dwc2_dbg(dwc2, "new dfifocfg=%08x\n", dfifocfg);
+	}
+}
+
 /*
  * This function initializes the DWC2 controller registers for
  * host mode.
@@ -468,8 +591,6 @@ static int dwc2_submit_int_msg(struct usb_device *udev, unsigned long pipe,
 static void dwc2_core_host_init(struct device_d *dev,
 				   struct dwc2 *dwc2)
 {
-	uint32_t nptxfifosize = 0;
-	uint32_t ptxfifosize = 0;
 	uint32_t hcchar, hcfg, hprt0, hotgctl, usbcfg;
 	int i, ret, num_channels;
 
@@ -517,26 +638,7 @@ static void dwc2_core_host_init(struct device_d *dev,
 		}
 	}
 
-	/* Configure data FIFO sizes */
-	if (dwc2_readl(dwc2, GHWCFG2) & GHWCFG2_DYNAMIC_FIFO) {
-		/* Rx FIFO */
-		dwc2_writel(dwc2, CONFIG_DWC2_HOST_RX_FIFO_SIZE, GRXFSIZ);
-
-		/* Non-periodic Tx FIFO */
-		nptxfifosize |= CONFIG_DWC2_HOST_NPERIO_TX_FIFO_SIZE <<
-				FIFOSIZE_DEPTH_SHIFT;
-		nptxfifosize |= CONFIG_DWC2_HOST_RX_FIFO_SIZE <<
-				FIFOSIZE_STARTADDR_SHIFT;
-		dwc2_writel(dwc2, nptxfifosize, GNPTXFSIZ);
-
-		/* Periodic Tx FIFO */
-		ptxfifosize |= CONFIG_DWC2_HOST_PERIO_TX_FIFO_SIZE <<
-				FIFOSIZE_DEPTH_SHIFT;
-		ptxfifosize |= (CONFIG_DWC2_HOST_RX_FIFO_SIZE +
-				CONFIG_DWC2_HOST_NPERIO_TX_FIFO_SIZE) <<
-				FIFOSIZE_STARTADDR_SHIFT;
-		dwc2_writel(dwc2, ptxfifosize, HPTXFSIZ);
-	}
+	dwc2_config_fifos(dwc2);
 
 	/* Clear Host Set HNP Enable in the OTG Control Register */
 	hotgctl = dwc2_readl(dwc2, GOTGCTL);
diff --git a/drivers/usb/dwc2/regs.h b/drivers/usb/dwc2/regs.h
index 2170a0eaa..e842c2c2e 100644
--- a/drivers/usb/dwc2/regs.h
+++ b/drivers/usb/dwc2/regs.h
@@ -837,12 +837,4 @@ struct dwc2_dma_desc {
 #define DWC2_FS_IOT_ID		0x55310000
 #define DWC2_HS_IOT_ID		0x55320000
 
-/* ==== u-boot ==== */
-
-/* Default driver configuration */
-#define CONFIG_DWC2_MAX_CHANNELS		DWC2_MAX_EPS_CHANNELS	/* Max # of EPs */
-#define CONFIG_DWC2_HOST_RX_FIFO_SIZE		(516 + CONFIG_DWC2_MAX_CHANNELS)
-#define CONFIG_DWC2_HOST_NPERIO_TX_FIFO_SIZE	0x100	/* nPeriodic TX FIFO */
-#define CONFIG_DWC2_HOST_PERIO_TX_FIFO_SIZE	0x200	/* Periodic TX FIFO */
-
 #endif	/* __DWC2_H__ */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
